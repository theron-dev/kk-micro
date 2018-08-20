package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ ProjectQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.projects)*/
	Projects []Project `json:"projects,omitempty" title:"项目"`
	/*E(Output.projects)*/
}

type /*B(Task)*/ ProjectQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc(降序 默认) asc(升序) inTime(发布时间降序) endTime(截止时间降序)"`
	/*E(Input.orderBy)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态，多个逗号分隔"`
	/*E(Input.status)*/
	/*B(Input.q)*/
	Q string `json:"q" title:"关键字"`
	/*E(Input.q)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"收款项目ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result ProjectQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ProjectQueryTask) GetName() string {
	return "/project/query"
}

/*E(name)*/

/*B(title)*/
func (T *ProjectQueryTask) GetTitle() string {
	return "查询项目"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ProjectQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
