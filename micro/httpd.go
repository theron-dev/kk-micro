package micro

import (
	"bytes"
	"encoding/json"
	"log"
	"net/http"
	"strings"

	"github.com/go-yaml/yaml"
	"github.com/hailongz/kk-lib/dynamic"
)

func HandleFunc(A IApp) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		log.Println(r.RequestURI)

		prefix := A.GetPrefix()

		if !strings.HasPrefix(r.URL.Path, prefix) {
			w.WriteHeader(http.StatusNotFound)
			w.Write([]byte("Not Found"))
		} else if strings.HasSuffix(r.URL.Path, ".json") {

			if r.Method == "POST" {

				name := r.URL.Path[len(prefix) : len(r.URL.Path)-5]

				log.Println(name)

				task := A.NewTask(name)

				if task != nil {

					var inputData interface{} = nil
					var body = bytes.NewBuffer(nil)
					_, _ = body.ReadFrom(r.Body)
					defer r.Body.Close()

					err := func() error {

						err := json.Unmarshal(body.Bytes(), &inputData)

						if err != nil {
							return err
						}

						dynamic.SetValue(task, inputData)

						return A.Handle(task)

					}()

					var data []byte

					if err == nil {
						data, err = json.Marshal(task.GetResult())
					}

					if err != nil {
						e, ok := err.(*Error)
						if ok {
							b, _ := json.Marshal(map[string]interface{}{"errno": e.Code, "errmsg": e.Message})
							w.Header().Add("Content-Type", "application/json; charset=utf-8")
							w.Write(b)
						} else {
							b, _ := json.Marshal(map[string]interface{}{"errno": 600, "errmsg": err.Error()})
							w.Header().Add("Content-Type", "application/json; charset=utf-8")
							w.Write(b)
						}
					} else {
						w.Header().Add("Content-Type", "application/json; charset=utf-8")
						w.Write(data)
					}

				} else {
					w.WriteHeader(http.StatusNotFound)
					w.Write([]byte("Not Found"))
				}

			} else {
				w.WriteHeader(http.StatusNotImplemented)
				w.Write([]byte("Not Implemented"))
			}

		} else if strings.HasSuffix(r.URL.Path, "*.raml") {

			if r.Method == "GET" {

				baseURI := ""
				prefix := A.GetPrefix()

				if prefix == "/" {
					prefix = ""
				}

				if strings.HasPrefix(r.Proto, "HTTPS/") {
					baseURI = "https://" + r.Host + prefix
				} else {
					baseURI = "http://" + r.Host + prefix
				}

				r := GetDocRAML(A, baseURI)

				b, _ := yaml.Marshal(r)
				w.Header().Add("Content-Type", "text/yaml; charset=utf-8")
				w.Write([]byte("#%RAML 0.8\r\n\r\n"))
				w.Write(b)

			} else {
				w.WriteHeader(http.StatusNotImplemented)
				w.Write([]byte("Not Implemented"))
			}

		} else {
			w.WriteHeader(http.StatusNotFound)
			w.Write([]byte("Not Found"))
		}
	}
}
