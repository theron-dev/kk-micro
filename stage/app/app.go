package app

import (
	"fmt"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Stage)*/
	{
		s := StageService{}
		app.Use(&StageClearTask{}, &s)
		app.Use(&StageGetTask{}, &s)
		app.Use(&StageNearTask{}, &s)
		app.Use(&StageQueryTask{}, &s)
		app.Use(&StageCreateTask{}, &s)
		app.Use(&StageSetTask{}, &s)
		app.Use(&StageRemoveTask{}, &s)
	}
	/*E(App.Service.Stage)*/

	return app
}

func Prefix(app micro.IApp, prefix string, etype int, eid int64) string {
	count := uint(dynamic.IntValue(dynamic.Get(app.Config(), "tableCount"), 1))
	iid := uint(eid & 0x0ffffffff)
	return fmt.Sprintf("%s%d_", prefix, (iid%count)+1)
}
