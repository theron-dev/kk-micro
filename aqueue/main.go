package main

import (
	"log"
	"net/http"
	"os"

	_ "github.com/go-sql-driver/mysql"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-lib/kk"
	_ "github.com/hailongz/kk-logic/logic/captcha"
	_ "github.com/hailongz/kk-logic/logic/http"
	_ "github.com/hailongz/kk-logic/logic/lib"
	_ "github.com/hailongz/kk-logic/logic/oss"
	_ "github.com/hailongz/kk-logic/logic/redis"
	"github.com/hailongz/kk-micro/aqueue/app"
	"github.com/hailongz/kk-micro/micro"
)

func main() {

	log.SetFlags(log.Llongfile | log.LstdFlags)

	env := "./config/env.yaml"

	if len(os.Args) > 1 {
		env = os.Args[1]
	}

	a, err := micro.NewAppWithPath(env)

	if err != nil {
		log.Panicln(err)
	}

	app.Open(a)

	go func() {

		address := dynamic.StringValue(dynamic.Get(a.Config(), "address"), ":80")

		http.HandleFunc(a.GetPrefix(), micro.HandleFunc(a))

		log.Println("httpd " + address)

		srv := &http.Server{
			Addr: address,
		}

		log.Println(srv.ListenAndServe())

	}()

	kk.DispatchMain()

}
