package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Mail)*/
	{
		s := MailService{}
		app.Use(&SendTask{},&s)
	}
	/*E(App.Service.Mail)*/

	return app
}
