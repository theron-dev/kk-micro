package app

import (
	"github.com/hailongz/kk-micro/tag"
)

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Service)*/ TagService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *TagService) GetTitle() string {
	return "任务标签"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.TagCounterQuery)*/
/*查询标签计数*/
func (S *TagService) HandleTagCounterQueryTask(a micro.IApp, task *TagCounterQueryTask) error {
/*E(Handle.TagCounterQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	return tag.CounterQuery(conn, prefix, &task.CounterQueryTask)
}

/*B(Handle.TagCounterGet)*/
/*获取标签计数*/
func (S *TagService) HandleTagCounterGetTask(a micro.IApp, task *TagCounterGetTask) error {
/*E(Handle.TagCounterGet)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	return tag.CounterGet(conn, prefix, &task.CounterGetTask)
}

/*B(Handle.TagQuery)*/
/*查询标签*/
func (S *TagService) HandleTagQueryTask(a micro.IApp, task *TagQueryTask) error {
/*E(Handle.TagQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	return tag.TagQuery(conn, prefix, &task.TagQueryTask)
}
