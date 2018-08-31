package stage

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ StageSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stage)*/
	Stage *Stage `json:"stage,omitempty" title:"阶段"`
	/*E(Output.stage)*/
}

type /*B(Task)*/ StageSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.eid)*/
	Eid interface{} `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/
	/*B(Input.status)*/
	Status interface{} `json:"status" title:"状态"`
	/*E(Input.status)*/
	/*B(Input.type)*/
	Type interface{} `json:"type" title:"类型"`
	/*E(Input.type)*/
	/*B(Input.endTime)*/
	EndTime interface{} `json:"endTime" title:"结束时间"`
	/*E(Input.endTime)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"阶段ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result StageSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageSetTask) GetName() string {
	return "stage/set"
}

/*E(name)*/

/*B(title)*/
func (T *StageSetTask) GetTitle() string {
	return "修改"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
