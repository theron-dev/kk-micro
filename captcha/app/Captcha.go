package app

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

type /*B(Object)*/ Captcha /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.md5)*/
	Md5 string `json:"md5" title:"MD5校验码" length:"32"`
	/*E(Property.md5)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.etime)*/
	Etime int64 `json:"etime" title:"过期时间"`
	/*E(Property.etime)*/
	/*B(Property.digits)*/
	Digits string `json:"digits" title:"校验码[0-9]" length:"32"`
	/*E(Property.digits)*/
	/*B(Property.code)*/
	Code string `json:"code" title:"唯一代码" length:"32" index:"asc"`
	/*E(Property.code)*/

}

/*B(Name)*/
func (O *Captcha) GetName() string {
	return "captcha"
}

/*E(Name)*/

/*B(Title)*/
func (O *Captcha) GetTitle() string {
	return "授权表"
}

/*E(Title)*/
