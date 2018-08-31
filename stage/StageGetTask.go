package stage

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ StageGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stage)*/
	Stage *Stage `json:"stage,omitempty" title:"阶段"`
	/*E(Output.stage)*/
}

type /*B(Task)*/ StageGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"阶段ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result StageGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageGetTask) GetName() string {
	return "stage/get"
}

/*E(name)*/

/*B(title)*/
func (T *StageGetTask) GetTitle() string {
	return "获取"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
