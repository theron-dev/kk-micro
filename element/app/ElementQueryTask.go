package app

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Result)*/ ElementQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.elements)*/
	Elements []Element `json:"elements,omitempty" title:"Element"`
	/*E(Output.elements)*/
}

type /*B(Task)*/ ElementQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"rank 排行升序 desc 降序 asc 升序 status 状态升序"`
	/*E(Input.orderBy)*/
	/*B(Input.minUserCount)*/
	MinUserCount int64 `json:"minUserCount" title:"最小剩余用户数"`
	/*E(Input.minUserCount)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态 多个逗号分割"`
	/*E(Input.status)*/
	/*B(Input.tags)*/
	Tags string `json:"tags" title:"标签"`
	/*E(Input.tags)*/
	/*B(Input.q)*/
	Q string `json:"q" title:"关键字"`
	/*E(Input.q)*/
	/*B(Input.fuid)*/
	Fuid interface{} `json:"fuid" title:"创建者ID/加入用户ID"`
	/*E(Input.fuid)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"创建者ID"`
	/*E(Input.uid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"任务ID"`
	/*E(Input.id)*/
	/*B(Input.pid)*/
	Pid interface{} `json:"pid" title:"父级ID"`
	/*E(Input.pid)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/

	/*B(Task.Result)*/
	Result ElementQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ElementQueryTask) GetName() string {
	return "element/query"
}

/*E(name)*/

/*B(title)*/
func (T *ElementQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ElementQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
