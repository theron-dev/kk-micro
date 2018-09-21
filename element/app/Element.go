package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Element /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.mtime)*/
	Mtime int64 `json:"mtime" title:"修改时间"`
	/*E(Property.mtime)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.rank)*/
	Rank int `json:"rank" title:"排行" index:"asc"`
	/*E(Property.rank)*/
	/*B(Property.depth)*/
	Depth int `json:"depth" title:"深度"`
	/*E(Property.depth)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Property.options)*/
	/*B(Property.maxUserCount)*/
	MaxUserCount int64 `json:"maxUserCount" title:"最大用户数 0为不限制"`
	/*E(Property.maxUserCount)*/
	/*B(Property.userCount)*/
	UserCount int64 `json:"userCount" title:"用户数量"`
	/*E(Property.userCount)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/
	/*B(Property.pid)*/
	Pid int64 `json:"pid" title:"父级ID" index:"asc"`
	/*E(Property.pid)*/
	/*B(Property.documentId)*/
	DocumentId int64 `json:"documentId" title:"文档ID 用于数据分区" index:"asc"`
	/*E(Property.documentId)*/

}

/*B(Name)*/
func (O *Element) GetName() string {
	return "element"
}

/*E(Name)*/

/*B(Title)*/
func (O *Element) GetTitle() string {
	return "Element"
}

/*E(Title)*/
