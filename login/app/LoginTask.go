package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ LoginTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
}

type /*B(Task)*/ LoginTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.password)*/
	Password string `json:"password" title:"密码"`
	/*E(Input.password)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"登录名"`
	/*E(Input.name)*/

	/*B(Task.Result)*/
	Result LoginTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *LoginTask) GetName() string {
	return "login"
}

/*E(name)*/

/*B(title)*/
func (T *LoginTask) GetTitle() string {
	return "登录"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *LoginTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
