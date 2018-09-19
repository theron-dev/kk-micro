package stage

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Result)*/ StageQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.stages)*/
	Stages []Stage `json:"stages,omitempty" title:"阶段"`
	/*E(Output.stages)*/
}

type /*B(Task)*/ StageQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"排序 endTime(结束时间升序 默认) desc(降序) asc"`
	/*E(Input.orderBy)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态 多个逗号分割"`
	/*E(Input.status)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.type)*/
	Type string `json:"type" title:"类型 多个逗号分割"`
	/*E(Input.type)*/
	/*B(Input.eid)*/
	Eid interface{} `json:"eid" title:"实体ID"`
	/*E(Input.eid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"阶段ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result StageQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *StageQueryTask) GetName() string {
	return "stage/query"
}

/*E(name)*/

/*B(title)*/
func (T *StageQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *StageQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
