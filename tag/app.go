package tag

import (
	"bytes"
	"fmt"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	{
		s := TagService{}
		app.Use(&TagQueryTask{}, &s)
		app.Use(&CounterGetTask{}, &s)
		app.Use(&CounterQueryTask{}, &s)
	}

	return app
}

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
