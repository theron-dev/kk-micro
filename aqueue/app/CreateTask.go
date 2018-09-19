package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ CreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *Item `json:"item,omitempty" title:"异步队列"`
	/*E(Output.item)*/
}

type /*B(Task)*/ CreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据 sh 会生成 ENV数据 , kk-logic 会生成 params 数据"`
	/*E(Input.options)*/
	/*B(Input.content)*/
	Content string `json:"content" title:"执行内容"`
	/*E(Input.content)*/
	/*B(Input.contentType)*/
	ContentType string `json:"contentType" title:"执行内容类型 sh 或 kk-logic"`
	/*E(Input.contentType)*/
	/*B(Input.maxCount)*/
	MaxCount int `json:"maxCount" title:"最大重试次数 0为不断重试, 直到成功"`
	/*E(Input.maxCount)*/
	/*B(Input.delay)*/
	Delay int64 `json:"delay" title:"重试延时时间"`
	/*E(Input.delay)*/
	/*B(Input.time)*/
	Time int64 `json:"time" title:"执行时间"`
	/*E(Input.time)*/
	/*B(Input.name)*/
	Name string `json:"name" title:"队列名"`
	/*E(Input.name)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result CreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *CreateTask) GetName() string {
	return "create"
}

/*E(name)*/

/*B(title)*/
func (T *CreateTask) GetTitle() string {
	return "创建"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *CreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
