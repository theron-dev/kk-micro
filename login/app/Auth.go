package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Auth /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"配置选项"`
	/*E(Property.options)*/
	/*B(Property.enabled)*/
	Enabled bool `json:"enabled" title:"是否可用"`
	/*E(Property.enabled)*/
	/*B(Property.pattern)*/
	Pattern string `json:"pattern" title:"匹配正则" length:"255"`
	/*E(Property.pattern)*/
	/*B(Property.type)*/
	Type string `json:"type" title:"类型" length:"64" index:"asc"`
	/*E(Property.type)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *Auth) GetName() string {
	return "auth"
}

/*E(Name)*/

/*B(Title)*/
func (O *Auth) GetTitle() string {
	return "登录验证"
}

/*E(Title)*/
