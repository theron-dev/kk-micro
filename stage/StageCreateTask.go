package stage

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ StageCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stage)*/
	Stage *Stage `json:"stage,omitempty" title:"阶段"`
	/*E(Output.stage)*/
}

type /*B(Task)*/ StageCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.eid)*/
	Eid int64 `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/
	/*B(Input.status)*/
	Status int `json:"status" title:"状态"`
	/*E(Input.status)*/
	/*B(Input.type)*/
	Type int `json:"type" title:"类型"`
	/*E(Input.type)*/
	/*B(Input.endTime)*/
	EndTime int64 `json:"endTime" title:"结束时间"`
	/*E(Input.endTime)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result StageCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageCreateTask) GetName() string {
	return "stage/create"
}

/*E(name)*/

/*B(title)*/
func (T *StageCreateTask) GetTitle() string {
	return "创建"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
