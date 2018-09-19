package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ CancelTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *Item `json:"item,omitempty" title:"异步队列"`
	/*E(Output.item)*/
}

type /*B(Task)*/ CancelTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"异步队列"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result CancelTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *CancelTask) GetName() string {
	return "cancel"
}

/*E(name)*/

/*B(title)*/
func (T *CancelTask) GetTitle() string {
	return "取消"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *CancelTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
