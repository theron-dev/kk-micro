package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ QueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.users)*/
	Users []User `json:"users,omitempty" title:"用户"`
	/*E(Output.users)*/
}

type /*B(Task)*/ QueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"排序 desc(降序 默认) asc"`
	/*E(Input.orderBy)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"用户名"`
	/*E(Input.name)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"用户ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result QueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *QueryTask) GetName() string {
	return "/user/query"
}

/*E(name)*/

/*B(title)*/
func (T *QueryTask) GetTitle() string {
	return "登录"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *QueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
