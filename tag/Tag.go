package tag

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

type /*B(Object)*/ Tag /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.eid)*/
	Eid int64 `json:"eid" title:"实体ID" index:"asc"`
	/*E(Property.eid)*/
	/*B(Property.tag)*/
	Tag string `json:"tag" title:"标签" length:"128" index:"asc"`
	/*E(Property.tag)*/

}

/*B(Name)*/
func (O *Tag) GetName() string {
	return "tag"
}

/*E(Name)*/

/*B(Title)*/
func (O *Tag) GetTitle() string {
	return "TAG"
}

/*E(Title)*/
