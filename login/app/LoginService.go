package app

/*B(Import)*/
import (
	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

/*E(Import)*/

type /*B(Service)*/ LoginService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *LoginService) GetTitle() string {
	return "登录服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Login)*/
/*登录*/
func (S *LoginService) HandleLoginTask(a micro.IApp, task *LoginTask) error {
	/*E(Handle.Login)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Auth{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE enabled=1 AND ? REGEXP pattern ORDER BY id ASC", task.Name)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		for {

			err = scanner.Scan(rs)

			if err != nil {
				return err
			}

			fn := GetAuthSoruce(v.Type)

			if fn != nil {
				return fn(task, &v)
			}

			if !rs.Next() {
				break
			}
		}

	}

	return micro.NewError(ERROR_NOT_FOUND, "未找到认证源")
}
