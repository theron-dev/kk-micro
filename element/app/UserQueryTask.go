package app

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Result)*/ UserQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.users)*/
	Users []User `json:"users,omitempty" title:"用户"`
	/*E(Output.users)*/
}

type /*B(Task)*/ UserQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.exclude)*/
	Exclude string `json:"exclude" title:"排除UID"`
	/*E(Input.exclude)*/
	/*B(Input.uids)*/
	Uids string `json:"uids" title:"用户ID"`
	/*E(Input.uids)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/
	/*B(Input.rid)*/
	Rid int64 `json:"rid" title:"根级ID"`
	/*E(Input.rid)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态多个逗号分割"`
	/*E(Input.status)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`
	/*E(Input.orderBy)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"节点ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result UserQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *UserQueryTask) GetName() string {
	return "user/query"
}

/*E(name)*/

/*B(title)*/
func (T *UserQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *UserQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
