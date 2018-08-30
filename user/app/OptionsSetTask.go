package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ OptionsSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.options)*/
	Options interface{} `json:"options,omitempty" title:"选项"`
	/*E(Output.options)*/
}

type /*B(Task)*/ OptionsSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"选项"`
	/*E(Input.options)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"选项名"`
	/*E(Input.name)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/

	/*B(Task.Result)*/
	Result OptionsSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *OptionsSetTask) GetName() string {
	return "user/options/set"
}

/*E(name)*/

/*B(title)*/
func (T *OptionsSetTask) GetTitle() string {
	return "设置用户选项"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *OptionsSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
