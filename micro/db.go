package micro

import (
	"database/sql"
	"time"

	"github.com/hailongz/kk-lib/dynamic"
)

type DBOpenTaskResult struct {
	Prefix string  `title:"表名前缀"`
	Conn   *sql.DB `title:"数据库链接"`
}

type DBOpenTask struct {
	Name string `title:"配置选项名"`

	Result DBOpenTaskResult
}

func (T *DBOpenTask) GetName() string {
	return ""
}

func (T *DBOpenTask) GetTitle() string {
	return "获取数据库链接"
}

func (T *DBOpenTask) GetResult() interface{} {
	return &T.Result
}

type DBService struct {
	conns map[string]DBOpenTaskResult
}

func (S *DBService) GetTitle() string {
	return "数据库服务"
}

func (S *DBService) HandleDBOpenTask(app IApp, task *DBOpenTask) error {

	if S.conns == nil {
		S.conns = map[string]DBOpenTaskResult{}
	}

	name := task.Name

	if name == "" {
		name = "db"
	}

	rs, ok := S.conns[name]

	if ok {
		task.Result = rs
		return nil
	}

	config := dynamic.Get(app.Config(), name)

	drive := dynamic.StringValue(dynamic.Get(config, "name"), "mysql")
	url := dynamic.StringValue(dynamic.Get(config, "url"), "root:123456@tcp(127.0.0.1:3306)/kk?charset=utf8mb4")

	conn, err := sql.Open(drive, url)

	if err != nil {
		return err
	}

	err = conn.Ping()

	if err != nil {
		return err
	}

	conn.SetMaxIdleConns(int(dynamic.IntValue(dynamic.Get(config, "maxIdleConns"), 1)))
	conn.SetMaxOpenConns(int(dynamic.IntValue(dynamic.Get(config, "maxOpenConns"), 6)))
	conn.SetConnMaxLifetime(time.Duration(dynamic.IntValue(dynamic.Get(config, "maxLifetime"), 6)) * time.Second)

	rs = DBOpenTaskResult{dynamic.StringValue(dynamic.Get(config, "prefix"), ""), conn}

	S.conns[name] = rs

	task.Result = rs

	return nil
}

func DBOpen(app IApp, name string) (*sql.DB, string, error) {

	task := DBOpenTask{}
	task.Name = name

	err := app.Handle(&task)

	if err != nil {
		return nil, "", err
	}

	return task.Result.Conn, task.Result.Prefix, nil
}
