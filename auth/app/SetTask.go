package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.auth)*/
	Auth *Auth `json:"auth,omitempty" title:"授权"`
	/*E(Output.auth)*/
}

type /*B(Task)*/ SetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他属性"`
	/*E(Input.options)*/
	/*B(Input.expires)*/
	Expires int64 `json:"expires" title:"超时秒数"`
	/*E(Input.expires)*/
	/*B(Input.deviceId)*/
	DeviceId string `json:"deviceId" title:"设备ID"`
	/*E(Input.deviceId)*/
	/*B(Input.phone)*/
	Phone string `json:"phone" title:"手机号"`
	/*E(Input.phone)*/
	/*B(Input.openid)*/
	Openid string `json:"openid" title:"第三方用户ID"`
	/*E(Input.openid)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.code)*/
	Code string `json:"code" title:"授权码"`
	/*E(Input.code)*/

	/*B(Task.Result)*/
	Result SetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SetTask) GetName() string {
	return "/auth/set"
}

/*E(name)*/

/*B(title)*/
func (T *SetTask) GetTitle() string {
	return "修改授权"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
