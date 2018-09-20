package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ SendTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
}

type /*B(Task)*/ SendTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.config)*/
	Config string `json:"config" title:"配置名"`
	/*E(Input.config)*/
	/*B(Input.to)*/
	To string `json:"to" title:"发送目标"`
	/*E(Input.to)*/
	/*B(Input.content)*/
	Content string `json:"content" title:"内容"`
	/*E(Input.content)*/
	/*B(Input.contentType)*/
	ContentType string `json:"contentType" title:"内容类型"`
	/*E(Input.contentType)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"标题"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result SendTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SendTask) GetName() string {
	return "send"
}

/*E(name)*/

/*B(title)*/
func (T *SendTask) GetTitle() string {
	return "发邮件"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SendTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
