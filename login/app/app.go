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
		app.Use(&QueryTask{}, &s)
	}
	/*E(App.Service.Auth)*/
	/*B(App.Service.Login)*/
	{
		s := LoginService{}
		app.Use(&LoginTask{}, &s)
	}
	/*E(App.Service.Login)*/

	app.AddDefaultService(&micro.DBService{})

	app.Handle(&micro.StartupTask{})

	return app
}

type IAuthSource func(login *LoginTask, auth *Auth) error

var sources = map[string]IAuthSource{}

func OpenAuthSource(stype string, source IAuthSource) {
	sources[stype] = source
}

func GetAuthSoruce(stype string) IAuthSource {
	return sources[stype]
}
