package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ PasswordTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.user)*/
	User *User `json:"user,omitempty" title:"用户"`
	/*E(Output.user)*/
}

type /*B(Task)*/ PasswordTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.password)*/
	Password string `json:"password" title:"密码"`
	/*E(Input.password)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"用户ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result PasswordTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *PasswordTask) GetName() string {
	return "user/password"
}

/*E(name)*/

/*B(title)*/
func (T *PasswordTask) GetTitle() string {
	return "修改密码"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *PasswordTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
