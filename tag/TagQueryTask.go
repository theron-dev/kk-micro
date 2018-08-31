package tag

import "github.com/hailongz/kk-micro/micro"

type TagQueryTaskResult struct {
	micro.QueryTaskResult
	Tags []Tag `json:"tags,omitempty" title:"Counter"`
}

type TagQueryTask struct {
	micro.QueryTask

	Eid int64 `json:"eid" title:"实体ID" `

	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`

	Result TagQueryTaskResult `json:"-"`
}

func (T *TagQueryTask) GetName() string {
	return "tag/query"
}

func (T *TagQueryTask) GetTitle() string {
	return "计数器"
}

func (T *TagQueryTask) GetResult() interface{} {
	return &T.Result
}
