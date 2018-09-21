package app

import (
	"bytes"
	"fmt"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/tag"
)

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ ElementService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *ElementService) GetTitle() string {
	return "节点服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.ElementGet)*/
/*获取*/
func (S *ElementService) HandleElementGetTask(a micro.IApp, task *ElementGetTask) error {
	/*E(Handle.ElementGet)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	v, err := GetElement(conn, prefix, task.Id)

	if err != nil {
		return err
	}

	if v == nil {
		return micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到节点 [%d]", task.Id))
	}

	task.Result.Element = v

	return nil
}

/*B(Handle.ElementSet)*/
/*修改*/
func (S *ElementService) HandleElementSetTask(a micro.IApp, task *ElementSetTask) error {
	/*E(Handle.ElementSet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到节点ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	v, err := GetElement(conn, prefix, task.Id)

	if err != nil {
		return err
	}

	if v == nil {
		return micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到节点 [%d]", task.Id))
	}

	err = db.Transaction(conn, func(conn db.Database) error {

		keys := map[string]bool{"mtime": true}

		v.Mtime = time.Now().Unix()

		if task.BeforeId != 0 {

			p, err := GetElement(conn, prefix, task.BeforeId)

			if err != nil {
				return err
			}

			if p == nil {
				return micro.NewError(ERROR_NOT_FOUND, "未找到下级兄弟节点")
			}

			_, err = conn.Exec(fmt.Sprintf("UPDATE `%s%s` SET `rank`=`rank`+1 WHERE pid=? AND `rank`>=?", prefix, p.GetName()), p.Pid, p.Rank)

			if err != nil {
				return err
			}

			v.Pid = p.Pid
			v.Depth = p.Depth
			v.Rank = p.Rank

			keys["pid"] = true
			keys["depth"] = true
			keys["rank"] = true

		} else if task.AfterId != 0 {

			p, err := GetElement(conn, prefix, task.AfterId)

			if err != nil {
				return err
			}

			if p == nil {
				return micro.NewError(ERROR_NOT_FOUND, "未找到上级兄弟节点")
			}

			_, err = conn.Exec(fmt.Sprintf("UPDATE `%s%s` SET `rank`=`rank`+1 WHERE pid=? AND `rank`>?", prefix, p.GetName()), p.Pid, p.Rank)

			if err != nil {
				return err
			}

			v.Pid = p.Pid
			v.Depth = p.Depth
			v.Rank = p.Rank + 1

			keys["pid"] = true
			keys["depth"] = true
			keys["rank"] = true

		} else if task.Pid != nil {

			pid := dynamic.IntValue(task.Pid, 0)

			if pid != 0 {

				p, err := GetLastChildElement(conn, prefix, pid)

				if err != nil {
					return err
				}

				if p != nil {

					v.Pid = p.Pid
					v.Depth = p.Depth
					v.Rank = p.Rank + 1

				} else {

					p, err = GetElement(conn, prefix, pid)

					if err != nil {
						return err
					}

					v.Pid = p.Id
					v.Depth = p.Depth + 1
					v.Rank = 0

				}
			} else {

				v.Pid = 0
				v.Depth = 0
				v.Rank = 0

				p, err := GetLastChildElement(conn, prefix, 0)

				if err != nil {
					return err
				}

				if p != nil {
					v.Rank = p.Rank + 1
				}
			}

			keys["pid"] = true
			keys["depth"] = true
			keys["rank"] = true

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

		if task.Uid != nil {
			keys["uid"] = true
			v.Uid = dynamic.IntValue(task.Uid, 0)
		}

		if task.MaxUserCount != nil {
			keys["maxUserCount"] = true
			v.MaxUserCount = dynamic.IntValue(task.MaxUserCount, 0)
		}

		if task.Status != nil {
			keys["status"] = true
			v.Status = int(dynamic.IntValue(task.Status, 0))
		}

		_, err = db.UpdateWithKeys(conn, v, prefix, keys)

		if err != nil {
			return err
		}

		if task.Tags != nil {

			tags := dynamic.StringValue(task.Tags, "")

			if tags != "" {
				err = tag.Set(conn, prefix, v.Id, strings.Split(tags, ","))
			} else {
				err = tag.Set(conn, prefix, v.Id, []string{})
			}

			if err != nil {
				return err
			}
		}

		return nil
	})

	if err != nil {
		return err
	}

	task.Result.Element = v

	return nil
}

func GetElement(conn db.Database, prefix string, id int64) (*Element, error) {

	v := Element{}

	rs, err := db.Query(conn, &v, prefix, " WHERE id=?", id)

	if err != nil {
		return nil, err
	}

	defer rs.Close()

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		if err != nil {
			return nil, err
		}

		return &v, nil
	}

	return nil, nil
}

func GetLastChildElement(conn db.Database, prefix string, pid int64) (*Element, error) {

	v := Element{}

	rs, err := db.Query(conn, &v, prefix, " WHERE pid=? ORDER BY `rank` DESC LIMIT 1", pid)

	if err != nil {
		return nil, err
	}

	defer rs.Close()

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		if err != nil {
			return nil, err
		}

		return &v, nil
	}

	return nil, nil
}

/*B(Handle.ElementAdd)*/
/*添加*/
func (S *ElementService) HandleElementAddTask(a micro.IApp, task *ElementAddTask) error {
	/*E(Handle.ElementAdd)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	v := Element{}
	v.DocumentId = task.DocumentId
	v.Uid = task.Uid
	v.Options = task.Options
	v.Ctime = time.Now().Unix()
	v.Mtime = v.Ctime

	err = db.Transaction(conn, func(conn db.Database) error {

		if task.BeforeId != 0 {

			p, err := GetElement(conn, prefix, task.BeforeId)

			if err != nil {
				return err
			}

			if p == nil {
				return micro.NewError(ERROR_NOT_FOUND, "未找到下级兄弟节点")
			}

			_, err = conn.Exec(fmt.Sprintf("UPDATE `%s%s` SET `rank`=`rank`+1 WHERE pid=? AND `rank`>=?", prefix, p.GetName()), p.Pid, p.Rank)

			if err != nil {
				return err
			}

			v.Pid = p.Pid
			v.Depth = p.Depth
			v.Rank = p.Rank

			_, err = db.Insert(conn, &v, prefix)

			if err != nil {
				return err
			}

		} else if task.AfterId != 0 {

			p, err := GetElement(conn, prefix, task.AfterId)

			if err != nil {
				return err
			}

			if p == nil {
				return micro.NewError(ERROR_NOT_FOUND, "未找到上级兄弟节点")
			}

			_, err = conn.Exec(fmt.Sprintf("UPDATE `%s%s` SET `rank`=`rank`+1 WHERE pid=? AND `rank`>?", prefix, p.GetName()), p.Pid, p.Rank)

			if err != nil {
				return err
			}

			v.Pid = p.Pid
			v.Depth = p.Depth
			v.Rank = p.Rank + 1

			_, err = db.Insert(conn, &v, prefix)

			if err != nil {
				return err
			}

		} else if task.Pid != 0 {

			p, err := GetLastChildElement(conn, prefix, task.Pid)

			if err != nil {
				return err
			}

			if p != nil {

				v.Pid = p.Pid
				v.Depth = p.Depth
				v.Rank = p.Rank + 1

				_, err = db.Insert(conn, &v, prefix)

				if err != nil {
					return err
				}
			} else {

				p, err = GetElement(conn, prefix, task.Pid)

				if err != nil {
					return err
				}

				v.Pid = p.Id
				v.Depth = p.Depth + 1
				v.Rank = 0

				_, err = db.Insert(conn, &v, prefix)

				if err != nil {
					return err
				}
			}

		} else {

			p, err := GetLastChildElement(conn, prefix, 0)

			if err != nil {
				return err
			}

			if p != nil {

				v.Pid = p.Pid
				v.Depth = p.Depth
				v.Rank = p.Rank + 1

				_, err = db.Insert(conn, &v, prefix)

				if err != nil {
					return err
				}
			} else {

				v.Pid = 0
				v.Depth = 0
				v.Rank = 0

				_, err = db.Insert(conn, &v, prefix)

				if err != nil {
					return err
				}
			}
		}

		if task.Tags != "" {
			err := tag.Set(conn, prefix, v.Id, strings.Split(task.Tags, ","))
			if err != nil {
				return err
			}
		}

		return nil
	})

	if err != nil {
		return err
	}

	task.Result.Element = &v

	return nil
}

/*B(Handle.ElementQuery)*/
/*查询*/
func (S *ElementService) HandleElementQueryTask(a micro.IApp, task *ElementQueryTask) error {
	/*E(Handle.ElementQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	var v = Element{}

	user := User{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" as element WHERE documentId=?")

	args = append(args, task.DocumentId)

	if task.Id != 0 {
		sql.WriteString(" AND id=?")
		args = append(args, task.Id)
	}

	if task.Pid != nil {
		sql.WriteString(" AND pid=?")
		args = append(args, task.Pid)
	}

	if task.Uid != nil {
		sql.WriteString(" AND uid=?")
		args = append(args, task.Uid)
	}

	if task.Fuid != nil {
		sql.WriteString(" AND (uid=? OR uid IN (")
		sql.WriteString(fmt.Sprintf("(SELECT uid FROM %s%s WHERE elementId=element.id AND uid=?) as user", prefix, user.GetName()))
		sql.WriteString("))")
		args = append(args, task.Uid, task.Uid)
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

	if task.Tags != "" {
		sql.WriteString(" AND id IN (")
		s := ""
		s, args = tag.QuerySQL(prefix, task.Tags, args)
		sql.WriteString(s)
		sql.WriteString(")")
	}

	if task.OrderBy == "asc" {
		sql.WriteString(" ORDER BY `rank` ASC,id ASC")
	} else if task.OrderBy == "desc" {
		sql.WriteString(" ORDER BY `rank` DESC,id DESC")
	} else if task.OrderBy == "status" {
		sql.WriteString(" ORDER BY status ASC,`rank` ASC,id ASC")
	} else {
		sql.WriteString(" ORDER BY `rank` ASC, id ASC")
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
	var vs = []Element{}

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

	task.Result.Elements = vs

	return nil
}

func RemoveElement(conn db.Database, prefix string, id int64) error {

	v := Element{}

	ids := []int64{}

	rs, err := conn.Query(fmt.Sprintf("SELECT id FROM `%s%s` WHERE pid=?", prefix, v.GetName()), id)

	if err != nil {
		return err
	}

	iid := int64(0)

	for rs.Next() {

		err = rs.Scan(&iid)

		if err != nil {
			rs.Close()
			return err
		}

		ids = append(ids, id)
	}

	rs.Close()

	for _, iid := range ids {
		RemoveElement(conn, prefix, iid)
	}

	v.Id = id

	_, err = db.Delete(conn, &v, prefix)

	if err != nil {
		return err
	}

	return nil
}

/*B(Handle.ElementRemove)*/
/*删除*/
func (S *ElementService) HandleElementRemoveTask(a micro.IApp, task *ElementRemoveTask) error {
	/*E(Handle.ElementRemove)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.DocumentId)

	v, err := GetElement(conn, prefix, task.Id)

	if v == nil {
		return micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到节点 [%d]", task.Id))
	}

	err = db.Transaction(conn, func(conn db.Database) error {
		return RemoveElement(conn, prefix, v.Id)
	})

	task.Result.Element = v

	return nil
}
