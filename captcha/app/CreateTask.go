package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ CreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.captcha)*/
	Captcha *Captcha `json:"captcha,omitempty" title:"验证码"`
	/*E(Output.captcha)*/
}

type /*B(Task)*/ CreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.length)*/
	Length int `json:"length" title:"校验码长度"`
	/*E(Input.length)*/
	/*B(Input.expires)*/
	Expires int64 `json:"expires" title:"超时时间(秒)"`
	/*E(Input.expires)*/
	/*B(Input.code)*/
	Code string `json:"code" title:"唯一代码"`
	/*E(Input.code)*/

	/*B(Task.Result)*/
	Result CreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *CreateTask) GetName() string {
	return "create"
}

/*E(name)*/

/*B(title)*/
func (T *CreateTask) GetTitle() string {
	return "创建"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *CreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
