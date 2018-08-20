package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ UserQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.users)*/
	Users []User `json:"users,omitempty" title:"用户"`
	/*E(Output.users)*/
}

type /*B(Task)*/ UserQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"排序 desc(降序 默认) asc(升序)"`
	/*E(Input.orderBy)*/
	/*B(Input.phone)*/
	Phone string `json:"phone" title:"手机号"`
	/*E(Input.phone)*/
	/*B(Input.openid)*/
	Openid string `json:"openid" title:"第三方用户ID"`
	/*E(Input.openid)*/
	/*B(Input.appid)*/
	Appid string `json:"appid" title:"第三方应用ID"`
	/*E(Input.appid)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.pid)*/
	Pid int64 `json:"pid" title:"项目ID"`
	/*E(Input.pid)*/

	/*B(Task.Result)*/
	Result UserQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *UserQueryTask) GetName() string {
	return "/user/query"
}

/*E(name)*/

/*B(title)*/
func (T *UserQueryTask) GetTitle() string {
	return "查询用户"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *UserQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
