package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ ProjectCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.project)*/
	Project *Project `json:"project,omitempty" title:"项目"`
	/*E(Output.project)*/
}

type /*B(Task)*/ ProjectCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他属性"`
	/*E(Input.options)*/
	/*B(Input.endTime)*/
	EndTime int64 `json:"endTime" title:"下线线时间（秒），0 为不自动下线"`
	/*E(Input.endTime)*/
	/*B(Input.inTime)*/
	InTime int64 `json:"inTime" title:"上线时间（秒），0 为不自动上线"`
	/*E(Input.inTime)*/
	/*B(Input.maxCount)*/
	MaxCount int `json:"maxCount" title:"最大数量 ，-1 为不限制"`
	/*E(Input.maxCount)*/
	/*B(Input.tags)*/
	Tags string `json:"tags" title:"搜索关键字"`
	/*E(Input.tags)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result ProjectCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ProjectCreateTask) GetName() string {
	return "/project/create"
}

/*E(name)*/

/*B(title)*/
func (T *ProjectCreateTask) GetTitle() string {
	return "创建项目"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ProjectCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
