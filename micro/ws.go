package micro

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/golang/protobuf/proto"
	"github.com/gorilla/websocket"
	"github.com/hailongz/kk-micro/proto/kk"
)

type wsServer struct {
	autoId int64
}

func newWSServer() *wsServer {
	v := wsServer{}
	v.autoId = 0
	return &v
}

func (S *wsServer) run(app IApp, message kk.Message, ch chan kk.Message) {

	id := S.autoId + 1
	S.autoId = 1

	go func() {

		var task ITask = nil

		err := func() error {

			task = app.NewTask(message.Name)

			if task == nil {
				return NewError(404, "未找到任务 "+message.Name)
			}

			if message.ContentType == "json" && message.Content != nil {
				err := json.Unmarshal(message.Content, task)
				if err != nil {
					return err
				}
			}

			err := app.Handle(task)

			if err != nil {
				return err
			}

			return nil
		}()

		if err != nil {
			e, ok := err.(*Error)
			if ok {
				message.Content, _ = json.Marshal(map[string]interface{}{"errno": e.Error, "errmsg": e.Message})
			} else {
				message.Content, _ = json.Marshal(map[string]interface{}{"errno": 500, "errmsg": e.Error()})
			}

			message.Fid = message.Id
			message.Id = id
			message.ContentType = "error"
			ch <- message

		} else {

			message.Fid = message.Id
			message.Id = id
			message.ContentType = "json"

			r := task.GetResult()

			if r != nil {
				message.Content, _ = json.Marshal(r)
			}

			ch <- message
		}

	}()
}

func WebSocketFunc(app IApp) func(http.ResponseWriter, *http.Request) {

	var upgrader = websocket.Upgrader{CheckOrigin: func(r *http.Request) bool { return true }} // use default options

	ws := newWSServer()

	return func(w http.ResponseWriter, r *http.Request) {

		conn, err := upgrader.Upgrade(w, r, nil)

		if err != nil {
			w.WriteHeader(http.StatusBadRequest)
			w.Header().Add("Content-Type", "text/plain; charset=utf-8")
			w.Write([]byte(err.Error()))
			return
		}

		defer conn.Close()

		ch := make(chan kk.Message, 204800)

		defer close(ch)

		log.Println("[" + r.RemoteAddr + "] [OPEN]")

		go func() {

			m, ok := <-ch

			if ok {

				b, err := proto.Marshal(&m)

				if err != nil {
					log.Printf("[%s] [ERROR] %s\n", r.RemoteAddr, err.Error())
				} else {
					err = conn.WriteMessage(websocket.BinaryMessage, b)
					if err != nil {
						log.Printf("[%s] [ERROR] %s\n", r.RemoteAddr, err.Error())
					}
				}
			}
		}()

		for {

			mType, data, err := conn.ReadMessage()

			if err != nil {
				log.Printf("[%s] [ERROR] %s\n", r.RemoteAddr, err.Error())
				break
			}

			if mType != websocket.BinaryMessage {
				log.Printf("[%s] [ERROR] %s\n", r.RemoteAddr, "Message Type Not Is Binary")
				break
			}

			message := kk.Message{}

			err = proto.Unmarshal(data, &message)

			if err != nil {
				log.Printf("[%s]  [ERROR] %s\n", r.RemoteAddr, err.Error())
				break
			}

			ws.run(app, message, ch)

		}

	}
}

type WSRemote struct {
}
