package app

import (
	"bytes"
	"database/sql"
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-lib/json"
	"github.com/hailongz/kk-logic/logic"
	"gopkg.in/yaml.v2"
)

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ ItemService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

	ch chan int
}

/*B(Title)*/
func (S *ItemService) GetTitle() string {
	return "异步队列服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Query)*/
/*查询*/
func (S *ItemService) HandleQueryTask(a micro.IApp, task *QueryTask) error {
	/*E(Handle.Query)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Item{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE 1")

	if task.Id != 0 {
		sql.WriteString(" AND id=?")
		args = append(args, task.Id)
	}

	if task.Status != "" {
		sql.WriteString(" AND status IN (")
		for i, s := range strings.Split(task.Status, ",") {
			if i != 0 {
				sql.WriteString(",")
			}
			sql.WriteString("?")
			args = append(args, s)
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
	var vs = []Item{}

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

/*B(Handle.Get)*/
/*获取*/
func (S *ItemService) HandleGetTask(a micro.IApp, task *GetTask) error {
	/*E(Handle.Get)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到队列ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Item{}
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

		return micro.NewError(ERROR_NOT_FOUND, "未找到队列")
	}

	task.Result.Item = &v

	return nil
}

/*B(Handle.Cancel)*/
/*取消*/
func (S *ItemService) HandleCancelTask(a micro.IApp, task *CancelTask) error {
	/*E(Handle.Cancel)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到队列ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Item{}
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

		if v.Status == ITEM_STATUS_NONE {
			v.Status = ITEM_STATUS_CANCEL
			_, err = db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"status": true})
			if err != nil {
				return err
			}
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到队列")
	}

	task.Result.Item = &v

	return nil
}

/*B(Handle.Create)*/
/*创建*/
func (S *ItemService) HandleCreateTask(a micro.IApp, task *CreateTask) error {
	/*E(Handle.Create)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Item{}

	v.Title = task.Title
	if task.Time == 0 {
		v.Time = time.Now().Unix()
	} else {
		v.Time = task.Time
	}
	v.Delay = task.Delay
	v.Name = task.Name
	v.MaxCount = task.MaxCount
	v.ContentType = task.ContentType
	v.Content = task.Content
	v.Options = task.Options
	v.Ctime = time.Now().Unix()
	v.Atime = v.Ctime

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {
		return err
	}

	select {
	case S.ch <- 1:
	default:
	}

	task.Result.Item = &v

	return nil
}

func ExecShell(v *Item, conn *sql.DB, prefix string) error {

	bash, err := exec.LookPath("bash")

	if err != nil {
		return err
	}

	code := bytes.NewBuffer(nil)

	dynamic.Each(v.Options, func(key interface{}, value interface{}) bool {

		code.WriteString(dynamic.StringValue(key, ""))
		code.WriteString("=")

		b, _ := json.Marshal(dynamic.StringValue(value, ""))

		code.Write(b)
		code.WriteString("\n")

		return true
	})

	code.WriteString(v.Content)

	cmd := exec.Command(bash, "-c", strings.Replace(code.String(), "\r", "", -1))

	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout

	return cmd.Run()
}

func ExecLogic(v *Item, conn *sql.DB, prefix string) error {

	var object interface{} = nil

	err := yaml.Unmarshal([]byte(v.Content), &object)

	if err != nil {
		return err
	}

	app := logic.NewApp(object, nil, "")

	defer app.Recycle()

	ctx := logic.NewContext()

	ctx.Set(logic.ParamsKeys, v.Options)

	defer ctx.Recycle()

	return app.Exec(ctx, "in")
}

func (S *ItemService) HandleStartupTask(a micro.IApp, task *micro.StartupTask) error {

	S.ch = make(chan int)

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Item{}

	_, err = conn.Exec(fmt.Sprintf("UPDATE `%s%s` SET status=? WHERE status=?", prefix, v.GetName()), ITEM_STATUS_NONE, ITEM_STATUS_IN)

	if err != nil {
		return err
	}

	go func() {

		log.Println("[STARTUP]")

		scaner := db.NewScaner(&v)

		queue := map[string]chan Item{}

		tv := time.NewTicker(6 * time.Second)

		defer tv.Stop()

		for {

			rs, err := db.Query(conn, &v, prefix, " WHERE status=? AND time <= ? ORDER BY atime ASC LIMIT 1", ITEM_STATUS_NONE, time.Now().Unix())

			if err != nil {
				log.Println("[ERROR]", " WHERE status=? ORDER BY atime ASC LIMIT 1", err)
				time.Sleep(6 * time.Second)
				continue
			}

			if rs.Next() {

				err = scaner.Scan(rs)

				rs.Close()

				if err != nil {
					log.Println("[ERROR]", err)
					time.Sleep(6 * time.Second)
					continue
				}

				v.Status = ITEM_STATUS_IN
				_, err = db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"status": true})

				if err != nil {
					log.Println("[ERROR] UPDATE STATUS TO IN", err)
					time.Sleep(6 * time.Second)
					continue
				}

				log.Println("[ITEM] ", v.Id)

				q, ok := queue[v.Name]

				if !ok {
					q = make(chan Item, 20480)
					queue[v.Name] = q

					go func(ch chan Item) {

						for {

							v, ok := <-ch

							if ok {

								keys := map[string]bool{"status": true, "atime": true, "count": true}

								v.Atime = time.Now().Unix()
								v.Count = v.Count + 1

								switch v.ContentType {
								case "sh":
									err := ExecShell(&v, conn, prefix)
									if err != nil {
										v.Errmsg = err.Error()
										keys["errmsg"] = true
										if v.MaxCount > 0 && v.Count >= v.MaxCount {
											v.Status = ITEM_STATUS_ERROR
										} else {
											v.Status = ITEM_STATUS_NONE
											v.Time = v.Atime + v.Delay
											keys["time"] = true
										}
									} else {
										v.Status = ITEM_STATUS_OK
									}
									break
								case "kk-logic":
									err := ExecLogic(&v, conn, prefix)
									if err != nil {
										v.Errmsg = err.Error()
										keys["errmsg"] = true
										if v.MaxCount > 0 && v.Count >= v.MaxCount {
											v.Status = ITEM_STATUS_ERROR
										} else {
											v.Status = ITEM_STATUS_NONE
											v.Time = v.Atime + v.Delay
											keys["time"] = true
										}
									} else {
										v.Status = ITEM_STATUS_OK
									}
									break
								default:
									v.Errmsg = "不支持执行内容类型 " + v.ContentType
									v.Status = ITEM_STATUS_ERROR
								}

								_, err = db.UpdateWithKeys(conn, &v, prefix, keys)

								if err != nil {
									log.Println("[ERROR]", v.Id, err)
								} else {
									log.Println("[DONE]", v.Id)
								}

							} else {
								break
							}
						}

					}(q)

				}

				q <- v

			} else {
				select {
				case <-S.ch:
				case <-tv.C:
				}
			}
		}

	}()

	return nil
}
