package tag

import (
	"bytes"
	"fmt"
	"strings"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

type TagService struct {
}

func (S *TagService) GetTitle() string {
	return "标签服务"
}

func (S *TagService) HandleTagQueryTask(a micro.IApp, task *TagQueryTask) error {

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

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

func (S *TagService) HandleCounterQueryTask(a micro.IApp, task *CounterQueryTask) error {

	if task.Tags == "" {
		return micro.NewError(ERROR_NOT_FOUND, "未找到标签")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

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

func (S *TagService) HandleCounterGetTask(a micro.IApp, task *CounterGetTask) error {

	if task.Tag == "" {
		return micro.NewError(ERROR_NOT_FOUND, "未找到标签")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

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
