package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ QueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.items)*/
	Items []Item `json:"items,omitempty" title:"异步队列"`
	/*E(Output.items)*/
}

type /*B(Task)*/ QueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"排序 desc(降序 默认) asc"`
	/*E(Input.orderBy)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态 多个逗号分割"`
	/*E(Input.status)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"异步队列"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result QueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *QueryTask) GetName() string {
	return "query"
}

/*E(name)*/

/*B(title)*/
func (T *QueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *QueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
