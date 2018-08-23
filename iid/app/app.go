package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.IID)*/
	{
		s := IIDService{}
		app.Use(&GetTask{},&s)
	}
	/*E(App.Service.IID)*/

	return app
}
