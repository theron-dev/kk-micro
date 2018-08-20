package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.user)*/
	User *User `json:"user,omitempty" title:"用户"`
	/*E(Output.user)*/
}

type /*B(Task)*/ SetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.password)*/
	Password string `json:"password" title:"密码"`
	/*E(Input.password)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"用户名"`
	/*E(Input.name)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"用户ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result SetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SetTask) GetName() string {
	return "/user/set"
}

/*E(name)*/

/*B(title)*/
func (T *SetTask) GetTitle() string {
	return "修改"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
