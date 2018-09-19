package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ StageBatchCopyTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stages)*/
	Stages []Stage `json:"stages,omitempty" title:"阶段"`
	/*E(Output.stages)*/
}

type /*B(Task)*/ StageBatchCopyTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.fetype)*/
	Fetype int `json:"fetype" title:"来源实体类型"`
	/*E(Input.fetype)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.feid)*/
	Feid int64 `json:"feid" title:"来源实体ID"`
	/*E(Input.feid)*/
	/*B(Input.eid)*/
	Eid int64 `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/
	/*B(Input.etype)*/
	Etype int `json:"etype" title:"实体类型"`
	/*E(Input.etype)*/

	/*B(Task.Result)*/
	Result StageBatchCopyTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageBatchCopyTask) GetName() string {
	return "stage/batch/copy"
}

/*E(name)*/

/*B(title)*/
func (T *StageBatchCopyTask) GetTitle() string {
	return "批量复制"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageBatchCopyTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
