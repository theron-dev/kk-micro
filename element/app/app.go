package app

import (
	"fmt"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Element)*/
	{
		s := ElementService{}
		app.Use(&ElementAddTask{}, &s)
		app.Use(&ElementSetTask{}, &s)
		app.Use(&ElementGetTask{}, &s)
		app.Use(&ElementRemoveTask{}, &s)
		app.Use(&ElementQueryTask{}, &s)
	}
	/*E(App.Service.Element)*/
	/*B(App.Service.Tag)*/
	{
		s := TagService{}
		app.Use(&TagCounterGetTask{}, &s)
		app.Use(&TagQueryTask{}, &s)
		app.Use(&TagCounterQueryTask{}, &s)
	}
	/*E(App.Service.Tag)*/
	/*B(App.Service.User)*/
	{
		s := UserService{}
		app.Use(&UserRemoveTask{}, &s)
		app.Use(&UserGetTask{}, &s)
		app.Use(&UserQueryTask{}, &s)
		app.Use(&UserJoinTask{}, &s)
	}
	/*E(App.Service.User)*/

	app.AddDefaultService(&micro.DBService{})

	return app
}

func Prefix(app micro.IApp, prefix string, documentId int64) string {
	count := uint(dynamic.IntValue(dynamic.Get(app.Config(), "tableCount"), 1))
	iid := uint(documentId & 0x0ffffffff)
	return fmt.Sprintf("%s%d_", prefix, (iid%count)+1)
}
