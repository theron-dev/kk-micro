package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ LoginTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.user)*/
	User *User `json:"user,omitempty" title:"用户"`
	/*E(Output.user)*/
}

type /*B(Task)*/ LoginTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.password)*/
	Password string `json:"password" title:"密码"`
	/*E(Input.password)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"用户名"`
	/*E(Input.name)*/

	/*B(Task.Result)*/
	Result LoginTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *LoginTask) GetName() string {
	return "/user/login"
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
