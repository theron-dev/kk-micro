package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ VerifyTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.captcha)*/
	Captcha *Captcha `json:"captcha,omitempty" title:"验证码"`
	/*E(Output.captcha)*/
}

type /*B(Task)*/ VerifyTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.md5)*/
	Md5 string `json:"md5" title:"MD5校验码"`
	/*E(Input.md5)*/
	/*B(Input.digits)*/
	Digits string `json:"digits" title:"校验码"`
	/*E(Input.digits)*/
	/*B(Input.code)*/
	Code string `json:"code" title:"唯一代码"`
	/*E(Input.code)*/

	/*B(Task.Result)*/
	Result VerifyTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *VerifyTask) GetName() string {
	return "verify"
}

/*E(name)*/

/*B(title)*/
func (T *VerifyTask) GetTitle() string {
	return "验证"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *VerifyTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
