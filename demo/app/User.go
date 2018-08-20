package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ User /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.atime)*/
	Atime int64 `json:"atime" title:"最后加入时间"`
	/*E(Property.atime)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他属性"`
	/*E(Property.options)*/
	/*B(Property.pid)*/
	Pid int64 `json:"pid" title:"项目ID" index:"asc"`
	/*E(Property.pid)*/
	/*B(Property.phone)*/
	Phone string `json:"phone" title:"手机号" length:"32" index:"asc"`
	/*E(Property.phone)*/
	/*B(Property.openid)*/
	Openid string `json:"openid" title:"第三方用户ID" length:"128" index:"asc"`
	/*E(Property.openid)*/
	/*B(Property.appid)*/
	Appid string `json:"appid" title:"第三方应用ID" length:"64" index:"asc"`
	/*E(Property.appid)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/

}

/*B(Name)*/
func (O *User) GetName() string {
	return "user"
}

/*E(Name)*/

/*B(Title)*/
func (O *User) GetTitle() string {
	return "用户"
}

/*E(Title)*/
