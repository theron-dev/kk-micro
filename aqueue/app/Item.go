package app

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

const (
	ITEM_STATUS_NONE   = 0
	ITEM_STATUS_IN     = 1
	ITEM_STATUS_OK     = 200
	ITEM_STATUS_CANCEL = 300
	ITEM_STATUS_ERROR  = 400
)

type /*B(Object)*/ Item /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.errmsg)*/
	Errmsg string `json:"errmsg" title:"错误信息" length:"4096"`
	/*E(Property.errmsg)*/
	/*B(Property.count)*/
	Count int `json:"count" title:"已执行次数"`
	/*E(Property.count)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据 sh 会生成 ENV数据 , kk-logic 会生成 params 数据"`
	/*E(Property.options)*/
	/*B(Property.content)*/
	Content string `json:"content" title:"执行内容" length:"-1"`
	/*E(Property.content)*/
	/*B(Property.contentType)*/
	ContentType string `json:"contentType" title:"执行内容类型 sh 或 kk-logic" length:"32"`
	/*E(Property.contentType)*/
	/*B(Property.maxCount)*/
	MaxCount int `json:"maxCount" title:"最大重试次数 0为不断重试, 直到成功"`
	/*E(Property.maxCount)*/
	/*B(Property.delay)*/
	Delay int64 `json:"delay" title:"重试延时时间"`
	/*E(Property.delay)*/
	/*B(Property.time)*/
	Time int64 `json:"time" title:"执行时间"`
	/*E(Property.time)*/
	/*B(Property.atime)*/
	Atime int64 `json:"atime" title:"最后处理时间" index:"asc"`
	/*E(Property.atime)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.name)*/
	Name string `json:"name" title:"队列名" length:"64"`
	/*E(Property.name)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *Item) GetName() string {
	return "item"
}

/*E(Name)*/

/*B(Title)*/
func (O *Item) GetTitle() string {
	return "异步队列"
}

/*E(Title)*/
