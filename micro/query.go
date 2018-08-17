package micro

type Counter struct {
	PageIndex int64 `json:"p" title:"分页位置"`
	PageSize  int64 `json:"size" title:"分页大小"`
	PageCount int64 `json:"count" title:"分页数量"`
	RowCount  int64 `json:"rowCount" title:"记录数"`
}

type QueryTaskResult struct {
	Counter *Counter `json:"counter,omitempty" title:"计数器"`
}

type QueryTask struct {
	Task

	PageIndex int64 `json:"p" title:"分页位置"`
	PageSize  int64 `json:"size" title:"分页大小"`
	Counter   bool  `json:"counter" title:"是否返回计数"`
}
