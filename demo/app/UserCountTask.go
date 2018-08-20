package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ UserCountTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.count)*/
	Count int64 `json:"count" title:"数量"`
	/*E(Output.count)*/
}

type /*B(Task)*/ UserCountTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
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
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.pid)*/
	Pid int64 `json:"pid" title:"项目ID"`
	/*E(Input.pid)*/

	/*B(Task.Result)*/
	Result UserCountTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *UserCountTask) GetName() string {
	return "/user/count"
}

/*E(name)*/

/*B(title)*/
func (T *UserCountTask) GetTitle() string {
	return "查询用户数"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *UserCountTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
