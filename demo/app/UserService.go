package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Service)*/ UserService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *UserService) GetTitle() string {
	return "用户服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.UserRemove)*/
/*删除用户*/
func (S *UserService) HandleUserRemoveTask(a micro.IApp, task *UserRemoveTask) error {
/*E(Handle.UserRemove)*/
	//TODO

	return nil
}


/*B(Handle.UserJoin)*/
/*加入用户*/
func (S *UserService) HandleUserJoinTask(a micro.IApp, task *UserJoinTask) error {
/*E(Handle.UserJoin)*/
	//TODO

	return nil
}


/*B(Handle.UserCount)*/
/*查询用户数*/
func (S *UserService) HandleUserCountTask(a micro.IApp, task *UserCountTask) error {
/*E(Handle.UserCount)*/
	//TODO

	return nil
}


/*B(Handle.UserQuery)*/
/*查询用户*/
func (S *UserService) HandleUserQueryTask(a micro.IApp, task *UserQueryTask) error {
/*E(Handle.UserQuery)*/
	//TODO

	return nil
}


/*B(Handle.UserGet)*/
/*获取用户*/
func (S *UserService) HandleUserGetTask(a micro.IApp, task *UserGetTask) error {
/*E(Handle.UserGet)*/
	//TODO

	return nil
}


