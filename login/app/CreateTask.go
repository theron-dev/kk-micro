package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ CreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.auth)*/
	Auth *Auth `json:"auth,omitempty" title:"验证源"`
	/*E(Output.auth)*/
}

type /*B(Task)*/ CreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"配置选项"`
	/*E(Input.options)*/
	/*B(Input.enabled)*/
	Enabled bool `json:"enabled" title:"是否可用"`
	/*E(Input.enabled)*/
	/*B(Input.pattern)*/
	Pattern string `json:"pattern" title:"匹配正则"`
	/*E(Input.pattern)*/
	/*B(Input.type)*/
	Type string `json:"type" title:"类型"`
	/*E(Input.type)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result CreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *CreateTask) GetName() string {
	return "auth/create"
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
