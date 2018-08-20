package micro

import (
	"github.com/go-redis/redis"
	"github.com/hailongz/kk-lib/dynamic"
)

type RedisOpenTaskResult struct {
	Prefix string        `title:"表名前缀"`
	Conn   *redis.Client `title:"数据库链接"`
}

type RedisOpenTask struct {
	Name string `title:"配置选项名"`

	Result RedisOpenTaskResult
}

func (T *RedisOpenTask) GetName() string {
	return ""
}

func (T *RedisOpenTask) GetTitle() string {
	return "获取 Redis 链接"
}

func (T *RedisOpenTask) GetResult() interface{} {
	return &T.Result
}

type RedisService struct {
	conns map[string]RedisOpenTaskResult
}

func (S *RedisService) GetTitle() string {
	return "Redis 服务"
}

func (S *RedisService) HandleRedisOpenTask(app IApp, task *RedisOpenTask) error {

	if S.conns == nil {
		S.conns = map[string]RedisOpenTaskResult{}
	}

	name := task.Name

	if name == "" {
		name = "redis"
	}

	rs, ok := S.conns[name]

	if ok {
		task.Result = rs
		return nil
	}

	config := dynamic.Get(app.Config(), name)

	addr := dynamic.StringValue(dynamic.Get(config, "addr"), "127.0.0.1:6379")
	pwd := dynamic.StringValue(dynamic.Get(config, "password"), "")
	db := dynamic.IntValue(dynamic.Get(config, "db"), 0)

	conn := redis.NewClient(&redis.Options{
		Addr:     addr,
		Password: pwd,     // no password set
		DB:       int(db), // use default DB
	})

	_, err := conn.Ping().Result()

	if err != nil {
		return err
	}

	rs = RedisOpenTaskResult{dynamic.StringValue(dynamic.Get(config, "prefix"), ""), conn}

	S.conns[name] = rs

	task.Result = rs

	return nil
}

func RedisOpen(app IApp, name string) (*redis.Client, string, error) {

	task := RedisOpenTask{}
	task.Name = name

	err := app.Handle(&task)

	if err != nil {
		return nil, "", err
	}

	return task.Result.Conn, task.Result.Prefix, nil
}
