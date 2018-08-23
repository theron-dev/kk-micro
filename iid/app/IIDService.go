package app

import (
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-lib/kk"
)

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ IIDService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

	iid *kk.IID
}

/*B(Title)*/
func (S *IIDService) GetTitle() string {
	return "IID服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Get)*/
/*获取IID*/
func (S *IIDService) HandleGetTask(a micro.IApp, task *GetTask) error {
	/*E(Handle.Get)*/
	//TODO

	if S.iid == nil {
		aid := dynamic.IntValue(dynamic.Get(a.Config(), "aid"), 0) //区域ID
		nid := dynamic.IntValue(dynamic.Get(a.Config(), "nid"), 0) //节点ID
		S.iid = kk.NewIID(aid, nid)
	}

	task.Result.Iid = S.iid.NewID()

	return nil
}
