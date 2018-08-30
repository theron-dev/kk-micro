package app

import (
	"bytes"
	"fmt"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

/*B(Import)*/

/*E(Import)*/

type /*B(Service)*/ AuthService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *AuthService) GetTitle() string {
	return "验证源"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Set)*/
/*修改*/
func (S *AuthService) HandleSetTask(a micro.IApp, task *SetTask) error {
	/*E(Handle.Set)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到认证源ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Auth{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		keys := map[string]bool{}

		if task.Type != "" {
			keys["type"] = true
			v.Type = task.Type
		}

		if task.Title != "" {
			keys["title"] = true
			v.Title = task.Title
		}

		if task.Enabled != nil {
			keys["enabled"] = true
			v.Enabled = dynamic.BooleanValue(task.Enabled, false)
		}

		if task.Options != nil {

			options := map[string]interface{}{}

			dynamic.Each(v.Options, func(key interface{}, value interface{}) bool {
				options[dynamic.StringValue(key, "")] = value
				return true
			})

			dynamic.Each(task.Options, func(key interface{}, value interface{}) bool {
				options[dynamic.StringValue(key, "")] = value
				return true
			})

			task.Options = options

			keys["options"] = true
		}

		_, err = db.UpdateWithKeys(conn, &v, prefix, keys)

		if err != nil {
			return err
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到认证源")
	}

	task.Result.Auth = &v

	return nil
}

/*B(Handle.Create)*/
/*创建*/
func (S *AuthService) HandleCreateTask(a micro.IApp, task *CreateTask) error {
	/*E(Handle.Create)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Auth{}

	v.Title = task.Title
	v.Type = task.Type
	v.Pattern = task.Pattern
	v.Options = task.Options
	v.Enabled = task.Enabled

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {
		return err
	}

	task.Result.Auth = &v

	return nil
}

/*B(Handle.Query)*/
/*查询用户*/
func (S *AuthService) HandleQueryTask(a micro.IApp, task *QueryTask) error {
	/*E(Handle.Query)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Auth{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE 1")

	if task.Id != 0 {
		sql.WriteString(" AND id=?")
		args = append(args, task.Id)
	}

	if task.Type != "" {
		sql.WriteString(" AND type=?")
		args = append(args, task.Type)
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
	var vs = []Auth{}

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

	task.Result.Auths = vs
	return nil
}

/*B(Handle.Remove)*/
/*删除*/
func (S *AuthService) HandleRemoveTask(a micro.IApp, task *RemoveTask) error {
	/*E(Handle.Remove)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到认证源ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Auth{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		_, err = db.Delete(conn, &v, prefix)

		if err != nil {
			return err
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到认证源")
	}

	task.Result.Auth = &v

	return nil
}

/*B(Handle.Get)*/
/*获取*/
func (S *AuthService) HandleGetTask(a micro.IApp, task *GetTask) error {
	/*E(Handle.Get)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到认证源ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Auth{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到认证源")
	}

	task.Result.Auth = &v

	return nil
}
