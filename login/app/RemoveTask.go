package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ RemoveTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.auth)*/
	Auth *Auth `json:"auth,omitempty" title:"验证源"`
	/*E(Output.auth)*/
}

type /*B(Task)*/ RemoveTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"验证源ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result RemoveTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *RemoveTask) GetName() string {
	return "auth/remove"
}

/*E(name)*/

/*B(title)*/
func (T *RemoveTask) GetTitle() string {
	return "删除"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *RemoveTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
