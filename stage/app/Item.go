package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Object)*/ Item /*E(Object)*/ struct {
	/*B(Object.Base)*/
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/

	/*B(Property.type)*/
	Type int `json:"type" title:"类型"`
	/*E(Property.type)*/
	/*B(Property.endTime)*/
	EndTime int64 `json:"endTime" title:"结束时间"`
	/*E(Property.endTime)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Property.title)*/

}

/*B(Title)*/
func (O *Item) GetTitle() string {
	return "批量设置项"
}

/*E(Title)*/
