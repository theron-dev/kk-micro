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
	/*B(Property.mtime)*/
	Mtime int64 `json:"mtime" title:"修改时间"`
	/*E(Property.mtime)*/
	/*B(Property.atime)*/
	Atime int64 `json:"atime" title:"最后登录时间"`
	/*E(Property.atime)*/
	/*B(Property.password)*/
	Password string `json:"-" name:"password" title:"密码" length:"64"`
	/*E(Property.password)*/
	/*B(Property.name)*/
	Name string `json:"name" title:"用户名" length:"255" index:"asc"`
	/*E(Property.name)*/

}

/*B(Name)*/
func (O *User) GetName() string {
	return "user"
}

/*E(Name)*/

/*B(Title)*/
func (O *User) GetTitle() string {
	return "用户表"
}

/*E(Title)*/
