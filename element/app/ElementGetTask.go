package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ ElementGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.element)*/
	Element *Element `json:"element,omitempty" title:"Element"`
	/*E(Output.element)*/
}

type /*B(Task)*/ ElementGetTask /*E(Task)*/ struct {
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
	Result ElementGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ElementGetTask) GetName() string {
	return "element/get"
}

/*E(name)*/

/*B(title)*/
func (T *ElementGetTask) GetTitle() string {
	return "获取"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ElementGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
