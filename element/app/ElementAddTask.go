package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ ElementAddTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.element)*/
	Element *Element `json:"element,omitempty" title:"Element"`
	/*E(Output.element)*/
}

type /*B(Task)*/ ElementAddTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.maxUserCount)*/
	MaxUserCount int64 `json:"maxUserCount" title:"最大用户限制 0 为不限制"`
	/*E(Input.maxUserCount)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.tags)*/
	Tags string `json:"tags" title:"标签 逗号分割"`
	/*E(Input.tags)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.afterId)*/
	AfterId int64 `json:"afterId" title:"下级兄弟ID"`
	/*E(Input.afterId)*/
	/*B(Input.beforeId)*/
	BeforeId int64 `json:"beforeId" title:"上级兄弟ID"`
	/*E(Input.beforeId)*/
	/*B(Input.pid)*/
	Pid int64 `json:"pid" title:"父级ID"`
	/*E(Input.pid)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/

	/*B(Task.Result)*/
	Result ElementAddTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ElementAddTask) GetName() string {
	return "element/add"
}

/*E(name)*/

/*B(title)*/
func (T *ElementAddTask) GetTitle() string {
	return "添加"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ElementAddTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
