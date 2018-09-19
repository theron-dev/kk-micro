package app

import (
	"bytes"
	"database/sql"
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

/*B(Import)*/

/*E(Import)*/

type /*B(Service)*/ StageService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *StageService) GetTitle() string {
	return "阶段服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.StageBatchSet)*/
/*批量设置*/
func (S *StageService) HandleStageBatchSetTask(a micro.IApp, task *StageBatchSetTask) error {
	/*E(Handle.StageBatchSet)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	v := Stage{}

	rm := []Stage{}

	types := map[int]Stage{}

	vs := []Stage{}

	err = func() error {

		rs, err := db.Query(conn, &v, prefix, " WHERE etype=? AND eid=? ORDER BY endTime ASC,id ASC", task.Etype, task.Eid)

		if err != nil {
			return err
		}

		defer rs.Close()

		scaner := db.NewScaner(&v)

		for rs.Next() {

			err = scaner.Scan(rs)

			if err != nil {
				return err
			}

			_, ok := types[v.Type]

			if ok {
				rm = append(rm, v)
			} else {
				types[v.Type] = v
			}
		}

		return nil
	}()

	if err != nil {
		return err
	}

	log.Println(task.Items)

	err = db.Transaction(conn, func(conn db.Database) error {

		if task.Items != nil {

			for _, item := range task.Items {
				v, ok := types[item.Type]
				if ok {
					v.EndTime = item.EndTime
					v.Title = item.Title
					_, err := db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"endTime": true, "title": true})
					if err != nil {
						return err
					}
					delete(types, item.Type)
				} else {
					v.Etype = task.Etype
					v.Eid = task.Eid
					v.Uid = task.Uid
					v.Title = item.Title
					v.Type = item.Type
					v.EndTime = item.EndTime
					v.Ctime = time.Now().Unix()
					_, err := db.Insert(conn, &v, prefix)
					if err != nil {
						return err
					}
				}
				vs = append(vs, v)
			}
		}

		for _, v := range rm {
			_, err := db.Delete(conn, &v, prefix)
			if err != nil {
				return err
			}
		}

		for _, v := range types {
			_, err := db.Delete(conn, &v, prefix)
			if err != nil {
				return err
			}
		}

		return nil
	})

	if err != nil {
		return err
	}

	task.Result.Stages = vs

	return nil
}

/*B(Handle.StageBatchCopy)*/
/*批量复制*/
func (S *StageService) HandleStageBatchCopyTask(a micro.IApp, task *StageBatchCopyTask) error {
	/*E(Handle.StageBatchCopy)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Fetype, task.Feid)

	v := Stage{}

	items := []Item{}

	err = func() error {

		rs, err := db.Query(conn, &v, prefix, " WHERE etype=? AND eid=? ORDER BY endTime ASC,id ASC", task.Fetype, task.Feid)

		if err != nil {
			return err
		}

		defer rs.Close()

		scaner := db.NewScaner(&v)

		for rs.Next() {

			err = scaner.Scan(rs)

			if err != nil {
				return err
			}

			items = append(items, Item{
				EndTime: v.EndTime,
				Type:    v.Type,
				Title:   v.Title,
			})
		}

		return nil
	}()

	if err != nil {
		return err
	}

	t := StageBatchSetTask{}
	t.Etype = task.Etype
	t.Eid = task.Eid
	t.Uid = task.Uid
	t.Items = items

	return S.HandleStageBatchSetTask(a, &t)
}

/*B(Handle.StageGet)*/
/*获取*/
func (S *StageService) HandleStageGetTask(a micro.IApp, task *StageGetTask) error {
	/*E(Handle.StageGet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到阶段ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}
	var scanner = db.NewScaner(&v)
	var rs *sql.Rows = nil

	rs, err = db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

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

		return micro.NewError(ERROR_NOT_FOUND, "未找到阶段")
	}

	task.Result.Stage = &v

	return nil
}

/*B(Handle.StageClear)*/
/*清理*/
func (S *StageService) HandleStageClearTask(a micro.IApp, task *StageClearTask) error {
	/*E(Handle.StageClear)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}

	_, err = db.DeleteWithSQL(conn, &v, prefix, " WHERE eid=?", task.Eid)

	if err != nil {
		return err
	}

	return nil
}

/*B(Handle.StageRemove)*/
/*删除*/
func (S *StageService) HandleStageRemoveTask(a micro.IApp, task *StageRemoveTask) error {
	/*E(Handle.StageRemove)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到阶段ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}
	var scanner = db.NewScaner(&v)
	var rs *sql.Rows = nil

	rs, err = db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

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

		return micro.NewError(ERROR_NOT_FOUND, "未找到阶段")
	}

	task.Result.Stage = &v

	return nil
}

/*B(Handle.StageSet)*/
/*修改*/
func (S *StageService) HandleStageSetTask(a micro.IApp, task *StageSetTask) error {
	/*E(Handle.StageSet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到阶段ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}
	var scanner = db.NewScaner(&v)
	var rs *sql.Rows = nil

	rs, err = db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

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

		if task.EndTime != nil {
			keys["endTime"] = true
			v.EndTime = dynamic.IntValue(task.EndTime, 0)
		}

		if task.Uid != nil {
			keys["uid"] = true
			v.EndTime = dynamic.IntValue(task.Uid, 0)
		}

		if task.Status != nil {
			keys["status"] = true
			v.Status = int(dynamic.IntValue(task.Status, 0))
		}

		if task.Type != nil {
			keys["type"] = true
			v.Type = int(dynamic.IntValue(task.Status, 0))
		}

		if task.Title != "" {
			keys["title"] = true
			v.Title = task.Title
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

			keys["options"] = true
			v.Options = options
		}

		if len(keys) > 0 {

			_, err = db.UpdateWithKeys(conn, &v, prefix, keys)

			if err != nil {
				return err
			}

		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到阶段")
	}

	task.Result.Stage = &v

	return nil
}

/*B(Handle.StageCreate)*/
/*创建*/
func (S *StageService) HandleStageCreateTask(a micro.IApp, task *StageCreateTask) error {
	/*E(Handle.StageCreate)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}

	v.Title = task.Title
	v.Eid = task.Eid
	v.Etype = task.Etype
	v.Uid = task.Uid
	v.EndTime = task.EndTime
	v.Status = task.Status
	v.Type = task.Type
	v.Options = task.Options
	v.Ctime = time.Now().Unix()

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {
		return err
	}

	return nil
}

/*B(Handle.StageQuery)*/
/*查询*/
func (S *StageService) HandleStageQueryTask(a micro.IApp, task *StageQueryTask) error {
	/*E(Handle.StageQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE etype=? AND eid=?")

	args = append(args, task.Etype, task.Eid)

	if task.Id != 0 {
		sql.WriteString(" AND id=?")
		args = append(args, task.Id)
	}

	if task.Uid != nil {
		sql.WriteString(" AND uid=?")
		args = append(args, task.Uid)
	}

	if task.Type != "" {

		sql.WriteString(" AND type IN (")

		for i, v := range strings.Split(task.Type, ",") {
			if i != 0 {
				sql.WriteString(",")
			}
			sql.WriteString("?")
			args = append(args, v)
		}
		sql.WriteString(")")
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
	var vs = []Stage{}

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

	task.Result.Stages = vs

	return nil
}

/*B(Handle.StageNear)*/
/*接近*/
func (S *StageService) HandleStageNearTask(a micro.IApp, task *StageNearTask) error {
	/*E(Handle.StageNear)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Etype, task.Eid)

	var v = Stage{}
	var scanner = db.NewScaner(&v)
	var rs *sql.Rows = nil

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE etype=? AND eid=?")

	args = append(args, task.Etype, task.Eid)

	if task.Type != nil {
		sql.WriteString(" AND type=?")
		args = append(args, task.Type)
	}

	if task.Status != nil {
		sql.WriteString(" AND status=?")
		args = append(args, task.Status)
	}

	sql.WriteString(" ORDER BY endTime ASC LIMIT 1")

	rs, err = db.Query(conn, &v, prefix, sql.String(), args...)

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

		return micro.NewError(ERROR_NOT_FOUND, "未找到阶段")
	}

	task.Result.Stage = &v

	return nil
}
