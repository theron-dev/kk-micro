package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Project /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.mtime)*/
	Mtime int64 `json:"mtime" title:"修改时间"`
	/*E(Property.mtime)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态 0（未上线） 200（已上线） 300（已下线）" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他属性"`
	/*E(Property.options)*/
	/*B(Property.count)*/
	Count int `json:"count" title:"数量"`
	/*E(Property.count)*/
	/*B(Property.endTime)*/
	EndTime int64 `json:"endTime" title:"下线线时间（秒），0 为不自动下线" index:"desc"`
	/*E(Property.endTime)*/
	/*B(Property.inTime)*/
	InTime int64 `json:"inTime" title:"上线时间（秒），0 为不自动上线" index:"desc"`
	/*E(Property.inTime)*/
	/*B(Property.maxCount)*/
	MaxCount int `json:"maxCount" title:"最大数量 ，-1 为不限制"`
	/*E(Property.maxCount)*/
	/*B(Property.tags)*/
	Tags string `json:"tags" title:"搜索关键字" length:"2048"`
	/*E(Property.tags)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *Project) GetName() string {
	return "project"
}

/*E(Name)*/

/*B(Title)*/
func (O *Project) GetTitle() string {
	return "项目表"
}

/*E(Title)*/
