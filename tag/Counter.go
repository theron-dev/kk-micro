package tag

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

type /*B(Object)*/ Counter /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.count)*/
	Count int `json:"count" title:"实体数量"`
	/*E(Property.count)*/
	/*B(Property.tag)*/
	Tag string `json:"tag" title:"标签" length:"128" index:"asc"`
	/*E(Property.tag)*/

}

/*B(Name)*/
func (O *Counter) GetName() string {
	return "tag_counter"
}

/*E(Name)*/

/*B(Title)*/
func (O *Counter) GetTitle() string {
	return "计数器"
}

/*E(Title)*/
