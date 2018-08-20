package app

import (
	"crypto/md5"
	"encoding/hex"
	"fmt"
	"math/rand"
	"time"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.User)*/
	{
		s := UserService{}
		app.Use(&OptionsTask{}, &s)
		app.Use(&OptionsSetTask{}, &s)
		app.Use(&CreateTask{}, &s)
		app.Use(&SetTask{}, &s)
		app.Use(&GetTask{}, &s)
		app.Use(&PasswordTask{}, &s)
		app.Use(&LoginTask{}, &s)
		app.Use(&QueryTask{}, &s)
	}
	/*E(App.Service.User)*/

	app.AddDefaultService(&UserService{})
	app.AddDefaultService(&micro.DBService{})
	app.AddDefaultService(&micro.RedisService{})

	app.Handle(&micro.StartupTask{})

	return app
}

func EncodePassword(a micro.IApp, password string) string {
	m := md5.New()
	m.Write([]byte(password))
	m.Write([]byte(dynamic.StringValue(dynamic.Get(a.Config(), "token"), "")))
	v := m.Sum(nil)
	return hex.EncodeToString(v)
}

func NewPassword(a micro.IApp) string {
	return EncodePassword(a, fmt.Sprintf("%d %d", time.Now().UnixNano(), rand.Intn(100000)))
}
