package app

import (
	"bytes"
	"fmt"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
)

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
/*B(Handle.UserGet)*/
/*获取*/
func (S *UserService) HandleUserGetTask(a micro.IApp, task *UserGetTask) error {
	/*E(Handle.UserGet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到节点ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	v := User{}

	rs, err := db.Query(conn, &v, prefix, " WHERE elementId=? AND uid=?", task.Id, task.Uid)

	if err != nil {
		return err
	}

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		rs.Close()

		if err != nil {
			return err
		}

	} else {
		rs.Close()
		return micro.NewError(ERROR_NOT_FOUND, "未找到用户")
	}

	task.Result.User = &v

	return nil
}

/*B(Handle.UserRemove)*/
/*删除*/
func (S *UserService) HandleUserRemoveTask(a micro.IApp, task *UserRemoveTask) error {
	/*E(Handle.UserRemove)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到节点ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Rid)

	element := Element{}
	user := User{}

	err = db.Transaction(conn, func(conn db.Database) error {

		rs, err := db.Query(conn, &element, prefix, " WHERE id=? FOR UPDATE", task.Id)

		if err != nil {
			return err
		}

		if rs.Next() {

			scaner := db.NewScaner(&element)

			err = scaner.Scan(rs)

			rs.Close()

			if err != nil {
				return err
			}
		} else {
			rs.Close()
			return micro.NewError(ERROR_NOT_FOUND, "未找到节点")
		}

		rs, err = db.Query(conn, &user, prefix, " WHERE elementId=? AND uid=?", task.Id, task.Uid)

		if err != nil {
			return err
		}

		if rs.Next() {

			scaner := db.NewScaner(&user)

			err = scaner.Scan(rs)

			rs.Close()

			if err != nil {
				return err
			}
		} else {
			rs.Close()
			return micro.NewError(ERROR_NOT_FOUND, "未找到用户")
		}

		if element.MaxUserCount > 0 && element.UserCount+1 > element.MaxUserCount {
			return micro.NewError(ERROR_MAX_COUNT, "已超出最大用户数限制")
		}

		element.Mtime = time.Now().Unix()
		element.UserCount = element.UserCount - 1

		_, err = db.UpdateWithKeys(conn, &element, prefix, map[string]bool{"mtime": true, "userCount": true})

		if err != nil {
			return err
		}

		_, err = db.Delete(conn, &user, prefix)

		if err != nil {
			return err
		}

		return nil
	})

	if err != nil {
		return err
	}

	task.Result.User = &user

	return nil
}

/*B(Handle.UserJoin)*/
/*加入*/
func (S *UserService) HandleUserJoinTask(a micro.IApp, task *UserJoinTask) error {
	/*E(Handle.UserJoin)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到节点ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Rid)

	element := Element{}
	user := User{}

	err = db.Transaction(conn, func(conn db.Database) error {

		rs, err := db.Query(conn, &element, prefix, " WHERE id=? FOR UPDATE", task.Id)

		if err != nil {
			return err
		}

		if rs.Next() {

			scaner := db.NewScaner(&element)

			err = scaner.Scan(rs)

			rs.Close()

			if err != nil {
				return err
			}
		} else {
			rs.Close()
			return micro.NewError(ERROR_NOT_FOUND, "未找到节点")
		}

		rs, err = db.Query(conn, &user, prefix, " WHERE elementId=? AND uid=?", task.Id, task.Uid)

		if err != nil {
			return err
		}

		if rs.Next() {

			scaner := db.NewScaner(&user)

			err = scaner.Scan(rs)

			rs.Close()

			if err != nil {
				return err
			}

			keys := map[string]bool{"mtime": true, "status": true}

			user.Mtime = time.Now().Unix()
			user.Status = task.Status

			if task.Title != "" {
				user.Title = task.Title
				keys["title"] = true
			}

			if task.Options != nil {

				keys["options"] = true
				options := map[string]interface{}{}

				dynamic.Each(user.Options, func(key interface{}, value interface{}) bool {
					options[dynamic.StringValue(key, "")] = value
					return true
				})

				dynamic.Each(task.Options, func(key interface{}, value interface{}) bool {
					options[dynamic.StringValue(key, "")] = value
					return true
				})

				user.Options = options
			}

			_, err = db.UpdateWithKeys(conn, &user, prefix, keys)

			if err != nil {
				return err
			}

			return nil

		} else {
			rs.Close()
		}

		element.Mtime = time.Now().Unix()
		element.UserCount = element.UserCount + 1

		user.ElementId = element.Id
		user.Uid = task.Uid
		user.Options = task.Options
		user.Title = task.Title
		user.Ctime = element.Mtime
		user.Mtime = user.Ctime
		user.Status = task.Status

		_, err = db.Insert(conn, &user, prefix)

		if err != nil {
			return err
		}

		_, err = db.UpdateWithKeys(conn, &element, prefix, map[string]bool{"mtime": true, "userCount": true})

		if err != nil {
			return err
		}

		return nil
	})

	if err != nil {
		return err
	}

	task.Result.User = &user

	return nil
}

/*B(Handle.UserQuery)*/
/*查询*/
func (S *UserService) HandleUserQueryTask(a micro.IApp, task *UserQueryTask) error {
	/*E(Handle.UserQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	var v = User{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE elementId=?")

	args = append(args, task.Id)

	if task.Uid != nil {
		sql.WriteString(" AND uid=?")
		args = append(args, task.Uid)
	}

	if task.Status != "" {
		sql.WriteString(" AND status IN (")
		for i, v := range strings.Split(task.Status, ",") {
			if i != 0 {
				sql.WriteString(",")
			}
			sql.WriteString("?")
			args = append(args, v)
		}
		sql.WriteString(")")
	}

	if task.OrderBy == "asc" {
		sql.WriteString(" ORDER BY id ASC")
	} else {
		sql.WriteString(" ORDER BY id DESC")
	}

	var pageIndex = task.PageIndex
	var pageSize = task.PageSize

	if pageIndex < 1 {
		pageIndex = 1
	}

	if pageSize < 1 {
		pageSize = 10
	}

	if task.Counter {
		var counter = micro.Counter{}
		counter.PageIndex = pageIndex
		counter.PageSize = pageSize
		counter.RowCount, err = db.Count(conn, &v, prefix, sql.String(), args...)
		if err != nil {
			return err
		}
		if counter.RowCount%pageSize == 0 {
			counter.PageCount = counter.RowCount / pageSize
		} else {
			counter.PageCount = counter.RowCount/pageSize + 1
		}
		task.Result.Counter = &counter
	}

	sql.WriteString(fmt.Sprintf(" LIMIT %d,%d", (pageIndex-1)*pageSize, pageSize))

	var scanner = db.NewScaner(&v)
	var vs = []User{}

	rows, err := db.Query(conn, &v, prefix,
		sql.String(), args...)

	if err != nil {
		return err
	}

	defer rows.Close()

	for rows.Next() {

		err = scanner.Scan(rows)

		if err != nil {
			return err
		}

		vs = append(vs, v)
	}

	task.Result.Users = vs

	return nil
}
