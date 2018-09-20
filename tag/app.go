package tag

import (
	"bytes"
	"fmt"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

func Add(conn db.Database, prefix string, eid int64, tag string) error {

	v := Tag{}
	counter := Counter{}

	rs, err := db.Query(conn, &v, prefix, " WHERE tag=? AND eid=?", tag, eid)

	if err != nil {
		return err
	}

	if rs.Next() {
		rs.Close()
	} else {
		rs.Close()

		v.Tag = tag
		v.Eid = eid
		v.Ctime = time.Now().Unix()

		_, err = db.Insert(conn, &v, prefix)

		if err != nil {
			return err
		}

		count, err := db.Count(conn, &counter, prefix, " WHERE tag=?", tag)

		if err != nil {
			return err
		}

		if count == 0 {

			counter.Tag = tag
			counter.Count = 1

			_, err = db.Insert(conn, &counter, prefix)

			if err != nil {
				return err
			}

		} else {

			_, err = conn.Exec(fmt.Sprintf("UPDATE `%s` SET count=count+1 WHERE tag=?", db.TableName(prefix, &counter)), tag)

			if err != nil {
				return err
			}
		}
	}

	return nil
}

func Del(conn db.Database, prefix string, eid int64, tag string) error {

	v := Tag{}
	counter := Counter{}

	rs, err := db.Query(conn, &v, prefix, " WHERE tag=? AND eid=?", tag, eid)

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

		_, err = db.Delete(conn, &v, prefix)

		if err != nil {
			return err
		}

		_, err = conn.Exec(fmt.Sprintf("UPDATE `%s` SET count=count-1 WHERE tag=?", db.TableName(prefix, &counter)), tag)

		if err != nil {
			return err
		}

	} else {
		rs.Close()
	}

	return nil
}

func Set(conn db.Database, prefix string, eid int64, tags []string) error {

	vs := map[string]Tag{}

	v := Tag{}

	rs, err := db.Query(conn, &v, prefix, " WHERE eid=?", eid)

	if err != nil {
		return err
	}

	scaner := db.NewScaner(&v)

	for rs.Next() {

		err = scaner.Scan(rs)

		if err != nil {
			rs.Close()
			return err
		}

		vs[v.Tag] = v
	}

	rs.Close()

	for _, tag := range tags {
		_, ok := vs[tag]
		if !ok {
			err = Add(conn, prefix, eid, tag)
			if err != nil {
				return err
			}
		} else {
			delete(vs, tag)
		}

	}

	counter := Counter{}

	for _, tag := range vs {

		_, err = db.Delete(conn, &tag, prefix)

		if err != nil {
			return err
		}

		_, err = conn.Exec(fmt.Sprintf("UPDATE `%s` SET count=count-1 WHERE tag=?", db.TableName(prefix, &counter)), tag.Tag)

		if err != nil {
			return err
		}

	}

	return nil
}

func QuerySQL(prefix string, tags string, args []interface{}) (string, []interface{}) {

	sql := bytes.NewBuffer(nil)

	if tags != "" {

		v := Tag{}

		sql.WriteString(fmt.Sprintf("SELECT eid FROM `%s` WHERE 1", db.TableName(prefix, &v)))

		for _, ts := range strings.Split(tags, ";") {

			sql.WriteString(" AND tag IN (")

			for _, t := range strings.Split(ts, ",") {

				sql.WriteString("?")
				args = append(args, t)

			}

			sql.WriteString(")")

		}

	}

	return sql.String(), args
}

func TagQuery(conn db.Database, prefix string, task *TagQueryTask) error {

	var err error = nil

	var v = Tag{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE eid=?")

	args = append(args, task.Eid)

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
	var vs = []Tag{}

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

	task.Result.Tags = vs

	return nil
}

func CounterQuery(conn db.Database, prefix string, task *CounterQueryTask) error {

	if task.Tags == "" {
		return micro.NewError(ERROR_NOT_FOUND, "未找到标签")
	}

	var err error = nil

	var v = Counter{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE tag IN (")

	for i, v := range strings.Split(task.Tags, ",") {
		if i != 0 {
			sql.WriteString(",")
		}
		sql.WriteString("?")
		args = append(args, v)
	}

	sql.WriteString(")")

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
	var vs = []Counter{}

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

	task.Result.Items = vs

	return nil
}

func CounterGet(conn db.Database, prefix string, task *CounterGetTask) error {

	if task.Tag == "" {
		return micro.NewError(ERROR_NOT_FOUND, "未找到标签")
	}

	var err error = nil

	var v = Counter{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE tag =?")

	args = append(args, task.Tag)

	var scanner = db.NewScaner(&v)

	rows, err := db.Query(conn, &v, prefix,
		sql.String(), args...)

	if err != nil {
		return err
	}

	defer rows.Close()

	if rows.Next() {

		err = scanner.Scan(rows)

		if err != nil {
			return err
		}

		task.Result.Count = v.Count

	} else {
		task.Result.Count = 0
	}

	return nil
}
