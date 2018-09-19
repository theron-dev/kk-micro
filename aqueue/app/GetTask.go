package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ GetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *Item `json:"item,omitempty" title:"异步队列"`
	/*E(Output.item)*/
	/*B(Output.)*/
	 string `json:"" title:""`
	/*E(Output.)*/
}

type /*B(Task)*/ GetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"异步队列"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result GetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *GetTask) GetName() string {
	return "get"
}

/*E(name)*/

/*B(title)*/
func (T *GetTask) GetTitle() string {
	return "获取"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *GetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
