package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Auth /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.atime)*/
	Atime int64 `json:"atime" title:"访问时间"`
	/*E(Property.atime)*/
	/*B(Property.options)*/
	Options interface{} `json:"options,omitempty" title:"其他属性"`
	/*E(Property.options)*/
	/*B(Property.expires)*/
	Expires int64 `json:"expires" title:"超时秒数"`
	/*E(Property.expires)*/
	/*B(Property.deviceId)*/
	DeviceId string `json:"deviceId" title:"设备ID" length:"64"`
	/*E(Property.deviceId)*/
	/*B(Property.phone)*/
	Phone string `json:"phone" title:"手机号" length:"64"`
	/*E(Property.phone)*/
	/*B(Property.openid)*/
	Openid string `json:"openid" title:"第三方用户ID" length:"128"`
	/*E(Property.openid)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Property.uid)*/
	/*B(Property.code)*/
	Code string `json:"code" title:"授权码" length:"32" index:"asc"`
	/*E(Property.code)*/
	/*B(Property.name)*/
	Name string `json:"name" title:"名称" length:"64" index:"asc"`
	/*E(Property.name)*/

}

/*B(Name)*/
func (O *Auth) GetName() string {
	return "auth"
}

/*E(Name)*/

/*B(Title)*/
func (O *Auth) GetTitle() string {
	return "授权表"
}

/*E(Title)*/
