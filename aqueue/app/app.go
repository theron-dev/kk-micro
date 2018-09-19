package app

import (
	"log"

	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Item)*/
	{
		s := ItemService{}
		app.Use(&CreateTask{}, &s)
		app.Use(&CancelTask{}, &s)
		app.Use(&GetTask{}, &s)
		app.Use(&QueryTask{}, &s)

		app.AddDefaultService(&s)
	}
	/*E(App.Service.Item)*/

	app.AddDefaultService(&micro.DBService{})

	{
		err := app.Handle(&micro.StartupTask{})

		if err != nil {
			log.Panicln(err)
		}
	}

	return app
}
