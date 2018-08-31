package stage

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Stage)*/
	{
		s := StageService{}
		app.Use(&StageNearTask{}, &s)
		app.Use(&StageQueryTask{}, &s)
		app.Use(&StageCreateTask{}, &s)
		app.Use(&StageSetTask{}, &s)
		app.Use(&StageRemoveTask{}, &s)
		app.Use(&StageClearTask{}, &s)
		app.Use(&StageGetTask{}, &s)
	}
	/*E(App.Service.Stage)*/

	return app
}
