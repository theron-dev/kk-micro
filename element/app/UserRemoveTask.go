package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ UserRemoveTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.user)*/
	User *User `json:"user,omitempty" title:"用户"`
	/*E(Output.user)*/
}

type /*B(Task)*/ UserRemoveTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/
	/*B(Input.rid)*/
	Rid int64 `json:"rid" title:"根级ID"`
	/*E(Input.rid)*/

	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"节点ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result UserRemoveTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *UserRemoveTask) GetName() string {
	return "user/remove"
}

/*E(name)*/

/*B(title)*/
func (T *UserRemoveTask) GetTitle() string {
	return "删除"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *UserRemoveTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
