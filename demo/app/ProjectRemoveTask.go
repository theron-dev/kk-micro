package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ ProjectRemoveTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.project)*/
	Project *Project `json:"project,omitempty" title:"项目"`
	/*E(Output.project)*/
}

type /*B(Task)*/ ProjectRemoveTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"视图ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result ProjectRemoveTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ProjectRemoveTask) GetName() string {
	return "/project/remove"
}

/*E(name)*/

/*B(title)*/
func (T *ProjectRemoveTask) GetTitle() string {
	return "删除项目"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ProjectRemoveTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
