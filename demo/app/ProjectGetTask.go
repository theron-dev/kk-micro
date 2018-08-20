package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ ProjectGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.project)*/
	Project *Project `json:"project,omitempty" title:"项目"`
	/*E(Output.project)*/
}

type /*B(Task)*/ ProjectGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态，多个逗号分隔"`
	/*E(Input.status)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"收款项目ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result ProjectGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ProjectGetTask) GetName() string {
	return "/project/get"
}

/*E(name)*/

/*B(title)*/
func (T *ProjectGetTask) GetTitle() string {
	return "获取项目"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ProjectGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
