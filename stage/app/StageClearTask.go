package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ StageClearTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
}

type /*B(Task)*/ StageClearTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.eid)*/
	Eid int64 `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/
	/*B(Input.etype)*/
	Etype int `json:"etype" title:"实体类型"`
	/*E(Input.etype)*/

	/*B(Task.Result)*/
	Result StageClearTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageClearTask) GetName() string {
	return "stage/clear"
}

/*E(name)*/

/*B(title)*/
func (T *StageClearTask) GetTitle() string {
	return "清理"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageClearTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
