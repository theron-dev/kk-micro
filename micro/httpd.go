package micro

import (
	"bytes"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strings"

	"github.com/go-yaml/yaml"
	"github.com/hailongz/kk-lib/dynamic"
)

func HandleFunc(A IApp) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {

		log.Println(r.RequestURI)

		appname := A.GetName()

		if !strings.HasPrefix(r.URL.Path, appname) {
			w.WriteHeader(http.StatusNotFound)
			w.Write([]byte("Not Found"))
		} else if strings.HasSuffix(r.URL.Path, ".json") {

			if r.Method == "POST" {

				name := r.URL.Path[len(appname) : len(r.URL.Path)-5]

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

						return Handle(A, task)

					}()

					var data []byte

					if err == nil {
						data, err = json.Marshal(task.GetResult())
					}

					if err != nil {
						e, ok := err.(*Error)
						if ok {
							b, _ := json.Marshal(map[string]interface{}{"errno": e.Errno, "errmsg": e.Errmsg})
							w.Header().Add("Content-Type", "application/json; charset=utf-8")
							w.Write(b)
						} else {
							b, _ := json.Marshal(map[string]interface{}{"errno": ERROR_UNKNOWN, "errmsg": err.Error()})
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

		} else if strings.HasSuffix(r.URL.Path, ".doc") {

			if r.Method == "GET" {

				if strings.HasSuffix(r.URL.Path, "/*.doc") {

					r := []interface{}{}

					for name, _ := range A.GetTasks() {
						r = append(r, appname+name)
					}

					b, _ := json.Marshal(r)
					w.Header().Add("Content-Type", "application/json; charset=utf-8")
					w.Write(b)

				} else {

					name := r.URL.Path[len(appname) : len(r.URL.Path)-4]

					log.Println(name)

					task := A.NewTask(name)

					if task != nil {
						b, _ := json.Marshal(GetTaskDoc(task, appname))
						w.Header().Add("Content-Type", "application/json; charset=utf-8")
						w.Write(b)

					} else {
						w.WriteHeader(http.StatusNotFound)
						w.Write([]byte("Not Found"))
					}
				}

			} else {
				w.WriteHeader(http.StatusNotImplemented)
				w.Write([]byte("Not Implemented"))
			}
		} else if strings.HasSuffix(r.URL.Path, "*.raml") {

			if r.Method == "GET" {

				baseURI := ""

				if strings.HasPrefix(r.Proto, "HTTPS/") {
					baseURI = "https://" + r.Host + A.GetName()
				} else {
					baseURI = "http://" + r.Host + A.GetName()
				}

				r := GetDocRAML(A, baseURI)

				b, _ := yaml.Marshal(r)
				w.Header().Add("Content-Type", "application/yaml; charset=utf-8")
				w.Header().Add("Content-Disposition", "attachment; filename=\"app.raml\"")
				w.Write([]byte("#%RAML 0.8\r\n\r\n"))
				w.Write(b)

			} else {
				w.WriteHeader(http.StatusNotImplemented)
				w.Write([]byte("Not Implemented"))
			}
		} else if strings.HasSuffix(r.URL.Path, "/installSQL") {

			vs := DatabaseSearch(A)

			for _, v := range vs {

				w.Header().Add("Content-Type", "text/html; charset=utf-8")

				s, err := v.InstallSQL(A)

				if err != nil {
					w.Write([]byte(err.Error()))
				} else {
					w.Write([]byte(strings.Replace(s, "\n", "<br/>", -1)))
				}

				w.Write([]byte("<br/><br/>"))
			}
		} else if strings.HasSuffix(r.URL.Path, "/install") {

			vs := DatabaseSearch(A)

			for _, v := range vs {

				w.Header().Add("Content-Type", "text/html; charset=utf-8")

				err := v.Install(A)

				if err != nil {
					w.Write([]byte(fmt.Sprintf("%s: %s", v.Name, err.Error())))
				} else {
					w.Write([]byte(fmt.Sprintf("%s: OK", v.Name)))
				}

				w.Write([]byte("<br/><br/>"))
			}

		} else {
			w.WriteHeader(http.StatusNotFound)
			w.Write([]byte("Not Found"))
		}
	}
}
