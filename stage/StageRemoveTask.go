package stage

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ StageRemoveTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stage)*/
	Stage *Stage `json:"stage,omitempty" title:"阶段"`
	/*E(Output.stage)*/
}

type /*B(Task)*/ StageRemoveTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"阶段ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result StageRemoveTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageRemoveTask) GetName() string {
	return "stage/remove"
}

/*E(name)*/

/*B(title)*/
func (T *StageRemoveTask) GetTitle() string {
	return "删除"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageRemoveTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
