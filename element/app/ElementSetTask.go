package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ ElementSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.elemnet)*/
	Elemnet *Element `json:"elemnet,omitempty" title:"Element"`
	/*E(Output.elemnet)*/
}

type /*B(Task)*/ ElementSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.maxUserCount)*/
	MaxUserCount interface{} `json:"maxUserCount" title:"最大用户限制 0 为不限制"`
	/*E(Input.maxUserCount)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.tags)*/
	Tags interface{} `json:"tags" title:"标签 逗号分割"`
	/*E(Input.tags)*/
	/*B(Input.status)*/
	Status interface{} `json:"status" title:"状态"`
	/*E(Input.status)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.afterId)*/
	AfterId int64 `json:"afterId" title:"下级兄弟ID"`
	/*E(Input.afterId)*/
	/*B(Input.beforeId)*/
	BeforeId int64 `json:"beforeId" title:"上级兄弟ID"`
	/*E(Input.beforeId)*/
	/*B(Input.pid)*/
	Pid interface{} `json:"pid" title:"父级ID"`
	/*E(Input.pid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"ID"`
	/*E(Input.id)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/

	/*B(Task.Result)*/
	Result ElementSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ElementSetTask) GetName() string {
	return "element/set"
}

/*E(name)*/

/*B(title)*/
func (T *ElementSetTask) GetTitle() string {
	return "修改"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ElementSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
