package tag

import "github.com/hailongz/kk-micro/micro"

type CounterQueryTaskResult struct {
	micro.QueryTaskResult
	Items []Counter `json:"items,omitempty" title:"Counter"`
}

type CounterQueryTask struct {
	micro.QueryTask

	Tags    string `json:"tags" title:"标签"`
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`

	Result CounterQueryTaskResult `json:"-"`
}

func (T *CounterQueryTask) GetName() string {
	return "tag/counter/query"
}

func (T *CounterQueryTask) GetTitle() string {
	return "计数器"
}

func (T *CounterQueryTask) GetResult() interface{} {
	return &T.Result
}
