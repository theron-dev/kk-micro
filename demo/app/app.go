package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Project)*/
	{
		s := ProjectService{}
		app.Use(&ProjectSetTask{},&s)
		app.Use(&ProjectGetTask{},&s)
		app.Use(&ProjectRemoveTask{},&s)
		app.Use(&ProjectQueryTask{},&s)
		app.Use(&ProjectCreateTask{},&s)
	}
	/*E(App.Service.Project)*/
	/*B(App.Service.User)*/
	{
		s := UserService{}
		app.Use(&UserJoinTask{},&s)
		app.Use(&UserRemoveTask{},&s)
		app.Use(&UserGetTask{},&s)
		app.Use(&UserQueryTask{},&s)
		app.Use(&UserCountTask{},&s)
	}
	/*E(App.Service.User)*/

	return app
}
