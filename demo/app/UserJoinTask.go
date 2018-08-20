package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ UserJoinTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.user)*/
	User *User `json:"user,omitempty" title:"用户"`
	/*E(Output.user)*/
}

type /*B(Task)*/ UserJoinTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他属性"`
	/*E(Input.options)*/
	/*B(Input.phone)*/
	Phone string `json:"phone" title:"手机号"`
	/*E(Input.phone)*/
	/*B(Input.openid)*/
	Openid string `json:"openid" title:"第三方用户ID"`
	/*E(Input.openid)*/
	/*B(Input.appid)*/
	Appid string `json:"appid" title:"第三方应用ID"`
	/*E(Input.appid)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.pid)*/
	Pid int64 `json:"pid" title:"项目ID"`
	/*E(Input.pid)*/

	/*B(Task.Result)*/
	Result UserJoinTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *UserJoinTask) GetName() string {
	return "/user/join"
}

/*E(name)*/

/*B(title)*/
func (T *UserJoinTask) GetTitle() string {
	return "加入用户"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *UserJoinTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
