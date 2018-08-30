package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ OptionsTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.options)*/
	Options interface{} `json:"options,omitempty" title:"选项"`
	/*E(Output.options)*/
}

type /*B(Task)*/ OptionsTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"选项名"`
	/*E(Input.name)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/

	/*B(Task.Result)*/
	Result OptionsTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *OptionsTask) GetName() string {
	return "user/options/get"
}

/*E(name)*/

/*B(title)*/
func (T *OptionsTask) GetTitle() string {
	return "获取用户选项"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *OptionsTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
