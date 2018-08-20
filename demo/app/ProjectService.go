package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Service)*/ ProjectService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *ProjectService) GetTitle() string {
	return "项目服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.ProjectCreate)*/
/*创建项目*/
func (S *ProjectService) HandleProjectCreateTask(a micro.IApp, task *ProjectCreateTask) error {
/*E(Handle.ProjectCreate)*/
	//TODO

	return nil
}


/*B(Handle.ProjectQuery)*/
/*查询项目*/
func (S *ProjectService) HandleProjectQueryTask(a micro.IApp, task *ProjectQueryTask) error {
/*E(Handle.ProjectQuery)*/
	//TODO

	return nil
}


/*B(Handle.ProjectRemove)*/
/*删除项目*/
func (S *ProjectService) HandleProjectRemoveTask(a micro.IApp, task *ProjectRemoveTask) error {
/*E(Handle.ProjectRemove)*/
	//TODO

	return nil
}


/*B(Handle.ProjectGet)*/
/*获取项目*/
func (S *ProjectService) HandleProjectGetTask(a micro.IApp, task *ProjectGetTask) error {
/*E(Handle.ProjectGet)*/
	//TODO

	return nil
}


/*B(Handle.ProjectSet)*/
/*修改项目*/
func (S *ProjectService) HandleProjectSetTask(a micro.IApp, task *ProjectSetTask) error {
/*E(Handle.ProjectSet)*/
	//TODO

	return nil
}


