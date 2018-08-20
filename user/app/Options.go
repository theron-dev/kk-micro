package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Options /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"选项"`
	/*E(Property.options)*/
	/*B(Property.name)*/
	Name string `json:"name" title:"选项名" length:"64" index:"asc"`
	/*E(Property.name)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/

}

/*B(Name)*/
func (O *Options) GetName() string {
	return "user_options"
}

/*E(Name)*/

/*B(Title)*/
func (O *Options) GetTitle() string {
	return "选项"
}

/*E(Title)*/
