package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ QueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.auths)*/
	Auths []Auth `json:"auths,omitempty" title:"验证源"`
	/*E(Output.auths)*/
}

type /*B(Task)*/ QueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"排序 desc(降序 默认) asc"`
	/*E(Input.orderBy)*/
	/*B(Input.type)*/
	Type string `json:"type" title:"类型"`
	/*E(Input.type)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"验证源ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result QueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *QueryTask) GetName() string {
	return "auth/query"
}

/*E(name)*/

/*B(title)*/
func (T *QueryTask) GetTitle() string {
	return "查询用户"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *QueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
