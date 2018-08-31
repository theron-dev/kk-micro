package stage

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

type /*B(Object)*/ Stage /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Property.options)*/
	/*B(Property.eid)*/
	Eid int64 `json:"eid" title:"实体ID" index:"asc"`
	/*E(Property.eid)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.type)*/
	Type int `json:"type" title:"类型" index:"asc"`
	/*E(Property.type)*/
	/*B(Property.endTime)*/
	EndTime int64 `json:"endTime" title:"结束时间" index:"asc"`
	/*E(Property.endTime)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *Stage) GetName() string {
	return "stage"
}

/*E(Name)*/

/*B(Title)*/
func (O *Stage) GetTitle() string {
	return "阶段"
}

/*E(Title)*/
