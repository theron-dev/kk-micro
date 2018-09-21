package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ ElementRemoveTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.elemnet)*/
	Elemnet *Element `json:"elemnet,omitempty" title:"Element"`
	/*E(Output.elemnet)*/
}

type /*B(Task)*/ ElementRemoveTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"ID"`
	/*E(Input.id)*/
	/*B(Input.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区"`
	/*E(Input.documentId)*/

	/*B(Task.Result)*/
	Result ElementRemoveTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ElementRemoveTask) GetName() string {
	return "element/remove"
}

/*E(name)*/

/*B(title)*/
func (T *ElementRemoveTask) GetTitle() string {
	return "删除"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ElementRemoveTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
