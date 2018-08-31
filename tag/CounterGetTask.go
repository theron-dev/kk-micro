package tag

type CounterGetTaskResult struct {
	Count int `json:"count,omitempty" title:"Counter"`
}

type CounterGetTask struct {
	Tag string `json:"tag" title:"标签"`

	Result CounterGetTaskResult `json:"-"`
}

func (T *CounterGetTask) GetName() string {
	return "tag/counter/get"
}

func (T *CounterGetTask) GetTitle() string {
	return "计数器"
}

func (T *CounterGetTask) GetResult() interface{} {
	return &T.Result
}
