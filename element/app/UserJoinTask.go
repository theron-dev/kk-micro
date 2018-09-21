package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ UserJoinTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.user)*/
	User *User `json:"user,omitempty" title:"用户"`
	/*E(Output.user)*/
}

type /*B(Task)*/ UserJoinTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/
	/*B(Input.rid)*/
	Rid int64 `json:"rid" title:"根级ID"`
	/*E(Input.rid)*/
	/*B(Input.status)*/
	Status int `json:"status" title:"状态"`
	/*E(Input.status)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.type)*/
	Type int `json:"type" title:"类型"`
	/*E(Input.type)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"节点ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result UserJoinTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *UserJoinTask) GetName() string {
	return "user/join"
}

/*E(name)*/

/*B(title)*/
func (T *UserJoinTask) GetTitle() string {
	return "加入"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *UserJoinTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
