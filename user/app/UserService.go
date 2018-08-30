package app

import (
	"bytes"
	"crypto/tls"
	"database/sql"
	"errors"
	"fmt"
	"log"
	"net/smtp"
	"strings"
	"time"

	"gopkg.in/goose.v2/client"
	"gopkg.in/goose.v2/identity"
	"gopkg.in/ldap.v2"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

/*B(Import)*/

/*E(Import)*/

type /*B(Service)*/ UserService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *UserService) GetTitle() string {
	return "用户"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Options)*/
/*获取用户选项*/
func (S *UserService) HandleOptionsTask(a micro.IApp, task *OptionsTask) error {
	/*E(Handle.Options)*/
	//TODO

	if task.Uid == 0 {
		return micro.NewError(ERROR_USER_NOT_FOUND_UID, "未找到用户ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Options{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE uid=? AND name=?", task.Uid, task.Name)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		task.Result.Options = v.Options

	} else {
		task.Result.Options = map[interface{}]interface{}{}
	}

	return nil
}

/*B(Handle.Query)*/
/*查询用户*/
func (S *UserService) HandleQueryTask(a micro.IApp, task *QueryTask) error {
	/*E(Handle.Query)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = User{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE 1")

	if task.Id != 0 {
		sql.WriteString(" AND id=?")
		args = append(args, task.Id)
	}

	if task.Name != "" {
		sql.WriteString(" AND name=?")
		args = append(args, task.Name)
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

type LoginSMTPAuth struct {
	Username string
	Password string
}

func (a *LoginSMTPAuth) Start(server *smtp.ServerInfo) (string, []byte, error) {
	return "LOGIN", []byte{}, nil
}

func (a *LoginSMTPAuth) Next(fromServer []byte, more bool) ([]byte, error) {
	if more {
		switch string(fromServer) {
		case "Username:":
			return []byte(a.Username), nil
		case "Password:":
			return []byte(a.Password), nil
		default:
			return nil, errors.New("Unkown fromServer")
		}
	}
	return nil, nil
}

func loginLDAP(domain string, addr string, TLS bool, task *LoginTask, timeout time.Duration) error {

	var conn *ldap.Conn = nil
	var err error = nil

	if TLS {
		conn, err = ldap.DialTLS("tcp", addr, &tls.Config{
			InsecureSkipVerify: true,
		})
	} else {
		conn, err = ldap.Dial("tcp", addr)
	}

	if err != nil {
		return err
	}

	defer conn.Close()

	err = conn.Bind(task.Name, task.Password)

	if err != nil {
		return err
	}

	return nil
}

func loginExchange(domain string, addr string, TLS bool, task *LoginTask, timeout time.Duration) error {

	url := "http://" + addr

	if TLS {
		url = "https://" + addr
	}

	cred := identity.Credentials{
		URL:     url,
		User:    task.Name,
		Secrets: task.Password,
		Region:  domain,
	}

	cli := client.NewClient(&cred, identity.AuthUserPass, nil)

	err := cli.Authenticate()

	if err != nil {
		return err
	}

	return nil
}

func loginSMTP(domain string, addr string, TLS bool, task *LoginTask, timeout time.Duration) error {

	auth := &LoginSMTPAuth{Username: task.Name, Password: task.Password}

	cli, err := smtp.Dial(addr)

	if err != nil {
		return err
	}

	defer cli.Close()

	if TLS {

		err = cli.StartTLS(&tls.Config{
			InsecureSkipVerify: true,
		})

		if err != nil {
			return err
		}
	}

	isClose := false

	ch := make(chan bool, 2)

	defer close(ch)

	go func() {

		err = cli.Auth(auth)

		if !isClose {
			isClose = true
			ch <- true
		}

	}()

	go func() {
		time.Sleep(timeout)
		if !isClose {
			isClose = true
			ch <- false
		}
	}()

	if <-ch {
		if err != nil {
			return err
		}
	} else {
		return errors.New("验证失败")
	}

	return nil
}

/*B(Handle.Login)*/
/*登录*/
func (S *UserService) HandleLoginTask(a micro.IApp, task *LoginTask) error {
	/*E(Handle.Login)*/
	//TODO

	if task.Name == "" {
		return micro.NewError(ERROR_USER_NOT_FOUND_NAME, "未找到用户名")
	}

	if task.Password == "" {
		return micro.NewError(ERROR_USER_NOT_FOUND_PASSWORD, "未找到密码")
	}

	var err error = nil
	var user *User = nil

	dynamic.Each(dynamic.Get(a.Config(), "protocol"), func(key interface{}, item interface{}) bool {

		suffix := dynamic.StringValue(dynamic.Get(item, "suffix"), "")

		log.Println(">>", suffix, task.Name)

		if suffix != "" && strings.HasSuffix(task.Name, suffix) {

			stype := dynamic.StringValue(dynamic.Get(item, "type"), "")

			log.Println(">>", suffix, task.Name, stype)

			if stype == "SMTP" {

				err = loginSMTP(dynamic.StringValue(dynamic.Get(item, "domain"), ""),
					dynamic.StringValue(dynamic.Get(item, "addr"), ""),
					dynamic.BooleanValue(dynamic.Get(item, "TLS"), false), task,
					time.Duration(dynamic.IntValue(dynamic.Get(item, "timeout"), 2))*time.Second)

				if err != nil {
					return false
				}

				t := GetTask{}
				t.Name = task.Name
				t.Autocreate = true
				err = a.Handle(&t)

				if err != nil {
					return false
				}

				user = t.Result.User

				return false
			} else if stype == "LDAP" {

				err = loginLDAP(dynamic.StringValue(dynamic.Get(item, "domain"), ""),
					dynamic.StringValue(dynamic.Get(item, "addr"), ""),
					dynamic.BooleanValue(dynamic.Get(item, "TLS"), false), task,
					time.Duration(dynamic.IntValue(dynamic.Get(item, "timeout"), 2))*time.Second)

				if err != nil {
					return false
				}

				t := GetTask{}
				t.Name = task.Name
				t.Autocreate = true
				err = a.Handle(&t)

				if err != nil {
					return false
				}

				user = t.Result.User

				return false
			} else if stype == "EXCHANGE" {

				err = loginExchange(dynamic.StringValue(dynamic.Get(item, "domain"), ""),
					dynamic.StringValue(dynamic.Get(item, "addr"), ""),
					dynamic.BooleanValue(dynamic.Get(item, "TLS"), false), task,
					time.Duration(dynamic.IntValue(dynamic.Get(item, "timeout"), 2))*time.Second)

				if err != nil {
					return false
				}

				t := GetTask{}
				t.Name = task.Name
				t.Autocreate = true
				err = a.Handle(&t)

				if err != nil {
					return false
				}

				user = t.Result.User

				return false
			}

		}

		return true
	})

	if err != nil {
		return err
	}

	if user != nil {
		task.Result.User = user
		return nil
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = User{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE name=?", task.Name)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		if EncodePassword(a, task.Password) != v.Password {
			return micro.NewError(ERROR_USER_PASSWORD, "密码错误")
		}

		v.Atime = time.Now().Unix()

		_, err = db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"atime": true})

		if err != nil {
			return err
		}

		task.Result.User = &v

	} else {
		return micro.NewError(ERROR_USER_NOT_FOUND, "未找到用户")
	}

	return nil
}

/*B(Handle.Password)*/
/*修改密码*/
func (S *UserService) HandlePasswordTask(a micro.IApp, task *PasswordTask) error {
	/*E(Handle.Password)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_USER_NOT_FOUND_UID, "未找到用户ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = User{}
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

		if task.Password == "" {
			v.Password = NewPassword(a)
		} else {
			v.Password = EncodePassword(a, task.Password)
		}

		v.Mtime = time.Now().Unix()

		_, err := db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"mtime": true, "password": true})

		if err != nil {
			return err
		}

		task.Result.User = &v

	} else {
		return micro.NewError(ERROR_USER_NOT_FOUND, "未找到用户")
	}
	return nil
}

/*B(Handle.Get)*/
/*获取*/
func (S *UserService) HandleGetTask(a micro.IApp, task *GetTask) error {
	/*E(Handle.Get)*/
	//TODO

	if task.Id == 0 && task.Name == "" {
		return micro.NewError(ERROR_USER_NOT_FOUND_UID, "未找到用户ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = User{}
	var scanner = db.NewScaner(&v)
	var rs *sql.Rows = nil

	if task.Id != 0 {
		rs, err = db.Query(conn, &v, prefix, " WHERE id=?", task.Id)
	} else {
		rs, err = db.Query(conn, &v, prefix, " WHERE name=?", task.Name)
	}

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

		if task.Autocreate && task.Name != "" {

			var create = CreateTask{}
			create.Name = task.Name

			err = a.Handle(&create)

			if err != nil {
				return err
			}

			task.Result.User = create.Result.User

			return nil
		}

		return micro.NewError(ERROR_USER_NOT_FOUND, "未找到用户")
	}

	task.Result.User = &v

	return nil
}

/*B(Handle.Set)*/
/*修改*/
func (S *UserService) HandleSetTask(a micro.IApp, task *SetTask) error {
	/*E(Handle.Set)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_USER_NOT_FOUND_UID, "未找到用户ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = User{}

	tx, err := conn.Begin()

	if err != nil {
		return err
	}

	err = func() error {

		keys := map[string]bool{}

		rs, err := db.Query(tx, &v, prefix, " WHERE id=?", task.Id)

		if err != nil {
			return err
		}

		if rs.Next() {

			scanner := db.NewScaner(&v)

			err = scanner.Scan(rs)

			rs.Close()

			if err != nil {
				return err
			}

			if task.Password != "" {

				if task.Password == "_" {
					v.Password = NewPassword(a)
				} else {
					v.Password = EncodePassword(a, task.Password)
				}

				keys["password"] = true
			}

			if task.Name != "" {

				rs, err := db.Query(tx, &v, prefix, " WHERE id!=? AND name=?", task.Id, task.Name)

				if err != nil {
					return err
				}

				if rs.Next() {
					rs.Close()
					return micro.NewError(ERROR_USER_NAME, "用户名已存在")
				}

				rs.Close()

				v.Name = task.Name
				keys["name"] = true
			}

		} else {
			rs.Close()
			return micro.NewError(ERROR_USER_NOT_FOUND, "未找到用户")
		}

		v.Mtime = time.Now().Unix()
		keys["mtime"] = true

		_, err = db.UpdateWithKeys(tx, &v, a.GetPrefix(), keys)

		if err != nil {
			return err
		}

		return nil
	}()

	if err == nil {
		err = tx.Commit()
	}

	if err != nil {
		tx.Rollback()
		return err
	}

	task.Result.User = &v

	return nil
}

/*B(Handle.Create)*/
/*创建*/
func (S *UserService) HandleCreateTask(a micro.IApp, task *CreateTask) error {
	/*E(Handle.Create)*/
	//TODO

	if task.Name == "" {
		return micro.NewError(ERROR_USER_NOT_FOUND_NAME, "未找到用户名")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	tx, err := conn.Begin()

	if err != nil {
		return err
	}

	v := User{}

	err = func() error {

		rs, err := db.Query(tx, &v, prefix, " WHERE name=?", task.Name)

		if err != nil {
			return err
		}

		defer rs.Close()

		if rs.Next() {
			return micro.NewError(ERROR_USER_NAME, "用户名已存在")
		}

		v.Name = task.Name

		if task.Password == "" {
			v.Password = NewPassword(a)
		} else {
			v.Password = EncodePassword(a, task.Password)
		}

		v.Atime = time.Now().Unix()
		v.Mtime = v.Atime
		v.Ctime = v.Atime

		_, err = db.Insert(tx, &v, prefix)

		if err != nil {
			return err
		}

		return nil

	}()

	if err == nil {
		err = tx.Commit()
	}

	if err != nil {
		tx.Rollback()
		return err
	}

	task.Result.User = &v

	return nil
}

/*B(Handle.OptionsSet)*/
/*设置用户选项*/
func (S *UserService) HandleOptionsSetTask(a micro.IApp, task *OptionsSetTask) error {
	/*E(Handle.OptionsSet)*/
	//TODO

	if task.Uid == 0 {
		return micro.NewError(ERROR_USER_NOT_FOUND_UID, "未找到用户ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Options{}
	var user = User{}
	var scanner = db.NewScaner(&v)

	rs, err := db.Query(conn, &v, prefix, " WHERE uid=? AND name=?", task.Uid, task.Name)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		var options = v.Options

		if options == nil {
			options = map[interface{}]interface{}{}
		}

		dynamic.Each(task.Options, func(key interface{}, value interface{}) bool {
			dynamic.Set(options, dynamic.StringValue(key, ""), value)
			return true
		})

		_, err = conn.Exec(fmt.Sprintf("UPDATE %s%s SET mtime=? WHERE id=?", prefix, user.GetName()), time.Now().Unix(), task.Uid)

		if err != nil {
			return err
		}

		_, err = db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"options": true})

		if err != nil {
			return err
		}

	} else {

		v.Uid = task.Uid
		v.Name = task.Name
		v.Options = task.Options

		_, err = conn.Exec(fmt.Sprintf("UPDATE %s%s SET mtime=? WHERE id=?", prefix, user.GetName()), time.Now().Unix(), task.Uid)

		if err != nil {
			return err
		}

		_, err = db.Insert(conn, &v, prefix)

		if err != nil {
			return err
		}
	}

	task.Result.Options = v.Options

	return nil
}

func (S *UserService) HandleStartupTask(a micro.IApp, task *micro.StartupTask) error {

	err := func() error {

		conn, prefix, err := micro.DBOpen(a, "db")

		if err != nil {
			return err
		}

		var v = User{}

		dynamic.Each(dynamic.Get(a.Config(), "users"), func(key interface{}, value interface{}) bool {

			var name = dynamic.StringValue(key, "")
			var password = dynamic.StringValue(value, "")

			var rs *sql.Rows

			rs, err = db.Query(conn, &v, prefix, " WHERE name=?", name)

			if err != nil {
				return false
			}

			defer rs.Close()

			if !rs.Next() {

				v.Name = name
				v.Password = EncodePassword(a, password)
				v.Atime = time.Now().Unix()
				v.Mtime = v.Atime
				v.Ctime = v.Atime

				_, err = db.Insert(conn, &v, prefix)

				if err != nil {
					return false
				}
			}

			return true
		})

		return err
	}()

	if err != nil {
		log.Println("UserService", "Startup", "Fail", err)
	} else {
		log.Println("UserService", "Startup", "OK")
	}

	return nil
}
