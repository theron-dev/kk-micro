package app

/*B(Import)*/
import (
	"crypto/md5"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"math/rand"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

/*E(Import)*/

type /*B(Service)*/ AuthService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *AuthService) GetTitle() string {
	return "授权服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Set)*/
/*修改授权*/
func (S *AuthService) HandleSetTask(a micro.IApp, task *SetTask) error {
	/*E(Handle.Set)*/
	//TODO

	if task.Code == "" {
		return micro.NewError(ERROR_AUTH_NOT_FOUND_CODE, "Not Found code")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Auth{}

	rows, err := db.Query(conn, &v, prefix, " WHERE code=?", task.Code)

	if err != nil {
		return err
	}

	defer rows.Close()

	if rows.Next() {

		scanner := db.NewScaner(&v)

		err = scanner.Scan(rows)

		if err != nil {
			return err
		}

		if task.Uid != 0 {
			v.Uid = task.Uid
		}
		if task.Phone != "" {
			v.Phone = task.Phone
		}
		if task.Openid != "" {
			v.Openid = task.Openid
		}
		if task.DeviceId != "" {
			v.DeviceId = task.DeviceId
		}

		if task.Expires != 0 {
			v.Expires = task.Expires
		}

		v.Atime = time.Now().Unix()

		_, err = db.Update(conn, &v, prefix)

		if err != nil {
			return err
		}

		task.Result.Auth = &v

		redis, prefix, _ := micro.RedisOpen(a, "redis")

		if redis != nil {
			redis.Del(prefix + v.Code).Result()
		}

	} else {
		return micro.NewError(ERROR_AUTH_NOPERMISSION, "No permission")
	}

	return nil
}

func NewCode() string {
	m := md5.New()
	m.Write([]byte(fmt.Sprintf("auth %d %d M(&YGHJKL:", time.Now().UnixNano(), rand.Intn(100000))))
	return hex.EncodeToString(m.Sum(nil))
}

/*B(Handle.Create)*/
/*创建授权*/
func (S *AuthService) HandleCreateTask(a micro.IApp, task *CreateTask) error {
	/*E(Handle.Create)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Auth{}
	v.Code = NewCode()
	v.Uid = task.Uid
	v.Phone = task.Phone
	v.DeviceId = task.DeviceId
	v.Openid = task.Openid
	v.Expires = task.Expires
	v.Atime = time.Now().Unix()
	v.Ctime = v.Atime

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {
		return err
	}

	task.Result.Auth = &v

	return nil
}

/*B(Handle.Remove)*/
/*删除授权*/
func (S *AuthService) HandleRemoveTask(a micro.IApp, task *RemoveTask) error {
	/*E(Handle.Remove)*/
	//TODO

	if task.Code == "" {
		return micro.NewError(ERROR_AUTH_NOT_FOUND_CODE, "Not Found code")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Auth{}

	_, err = db.DeleteWithSQL(conn, &v, prefix, " WHERE code=?", task.Code)

	if err != nil {
		return err
	}

	redis, prefix, _ := micro.RedisOpen(a, "redis")

	if redis != nil {
		redis.Del(prefix + task.Code).Result()
	}

	return nil
}

/*B(Handle.Get)*/
/*获取授权*/
func (S *AuthService) HandleGetTask(a micro.IApp, task *GetTask) error {
	/*E(Handle.Get)*/
	//TODO

	if task.Code == "" {
		return micro.NewError(ERROR_AUTH_NOT_FOUND_CODE, "Not Found code")
	}

	v := Auth{}

	redis, prefix, _ := micro.RedisOpen(a, "redis")

	if redis != nil {
		s, err := redis.Get(prefix + task.Code).Result()
		if err == nil {
			err = json.Unmarshal([]byte(s), &v)
			if err == nil {
				task.Result.Auth = &v
				return nil
			}
		}
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	rows, err := db.Query(conn, &v, prefix, " WHERE code=?", task.Code)

	if err != nil {
		return err
	}

	defer rows.Close()

	if rows.Next() {

		scanner := db.NewScaner(&v)

		err = scanner.Scan(rows)

		if err != nil {
			return err
		}

		if v.Atime+v.Expires >= time.Now().Unix() {

			task.Result.Auth = &v

			_, _ = db.UpdateWithKeys(conn, &v, prefix, map[string]bool{"atime": true})

			redis, prefix, _ := micro.RedisOpen(a, "redis")

			if redis != nil {
				b, _ := json.Marshal(&v)
				redis.Set(prefix+v.Code, b, time.Duration(v.Expires)).Result()
			}

		} else {
			return micro.NewError(ERROR_AUTH_NOPERMISSION, "No permission")
		}

	} else {
		return micro.NewError(ERROR_AUTH_NOPERMISSION, "No permission")
	}

	return nil
}
