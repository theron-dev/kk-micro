package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ StageBatchSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stages)*/
	Stages []Stage `json:"stages,omitempty" title:"阶段"`
	/*E(Output.stages)*/
}

type /*B(Task)*/ StageBatchSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.items)*/
	Items []Item `json:"items" title:"批量设置项"`
	/*E(Input.items)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.eid)*/
	Eid int64 `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/
	/*B(Input.etype)*/
	Etype int `json:"etype" title:"实体类型"`
	/*E(Input.etype)*/

	/*B(Task.Result)*/
	Result StageBatchSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageBatchSetTask) GetName() string {
	return "stage/batch/set"
}

/*E(name)*/

/*B(title)*/
func (T *StageBatchSetTask) GetTitle() string {
	return "批量设置"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageBatchSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
