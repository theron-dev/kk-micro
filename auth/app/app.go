package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Auth)*/
	{
		s := AuthService{}
		app.Use(&CreateTask{}, &s)
		app.Use(&SetTask{}, &s)
		app.Use(&GetTask{}, &s)
		app.Use(&RemoveTask{}, &s)
	}
	/*E(App.Service.Auth)*/

	app.AddDefaultService(&micro.DBService{})
	app.AddDefaultService(&micro.RedisService{})

	return app
}
