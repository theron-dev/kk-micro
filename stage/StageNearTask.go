package stage

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ StageNearTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stage)*/
	Stage *Stage `json:"stage,omitempty" title:"阶段"`
	/*E(Output.stage)*/
}

type /*B(Task)*/ StageNearTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.status)*/
	Status interface{} `json:"status" title:"状态"`
	/*E(Input.status)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.type)*/
	Type interface{} `json:"type" title:"类型"`
	/*E(Input.type)*/
	/*B(Input.eid)*/
	Eid int64 `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/

	/*B(Task.Result)*/
	Result StageNearTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageNearTask) GetName() string {
	return "stage/near"
}

/*E(name)*/

/*B(title)*/
func (T *StageNearTask) GetTitle() string {
	return "接近"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageNearTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
