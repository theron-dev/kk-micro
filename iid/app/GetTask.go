package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ GetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.iid)*/
	Iid int64 `json:"iid" title:"IID"`
	/*E(Output.iid)*/
}

type /*B(Task)*/ GetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/

	/*B(Task.Result)*/
	Result GetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *GetTask) GetName() string {
	return "iid/get"
}

/*E(name)*/

/*B(title)*/
func (T *GetTask) GetTitle() string {
	return "获取IID"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *GetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
