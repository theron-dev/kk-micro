package app

import (
	"crypto/md5"
	"encoding/hex"
	"time"

	"github.com/hailongz/kk-lib/db"
)

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ CaptchaService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *CaptchaService) GetTitle() string {
	return "验证码"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Verify)*/
/*验证*/
func (S *CaptchaService) HandleVerifyTask(a micro.IApp, task *VerifyTask) error {
	/*E(Handle.Verify)*/
	//TODO

	if task.Code == "" {
		return micro.NewError(ERROR_NOT_FOUND_CODE, "未找到唯一代码")
	}

	if task.Md5 == "" && task.Digits == "" {
		return micro.NewError(ERROR_NOT_FOUND, "未找到校验码")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Code)

	v := Captcha{}

	rs, err := db.Query(conn, &v, prefix, " WHERE code=?", task.Code)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		scanner := db.NewScaner(&v)

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		if time.Now().Unix() > v.Etime {
			return micro.NewError(ERROR_NOT_FOUND, "验证码已过期")
		}

		if task.Md5 != "" && task.Md5 != v.Md5 {
			return micro.NewError(ERROR_NOT_FOUND, "验证码错误")
		}

		if task.Digits != "" && task.Digits != v.Digits {
			return micro.NewError(ERROR_NOT_FOUND, "验证码错误")
		}

	} else {
		return micro.NewError(ERROR_NOT_FOUND, "未找到验证码")
	}

	task.Result.Captcha = &v

	return nil
}

/*B(Handle.Create)*/
/*创建*/
func (S *CaptchaService) HandleCreateTask(a micro.IApp, task *CreateTask) error {
	/*E(Handle.Create)*/
	//TODO

	if task.Code == "" {
		return micro.NewError(ERROR_NOT_FOUND_CODE, "未找到唯一代码")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Code)

	v := Captcha{}

	rs, err := db.Query(conn, &v, prefix, " WHERE code=?", task.Code)

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

	} else {

		rs.Close()

		v.Code = task.Code
		v.Ctime = time.Now().Unix()
	}

	if task.Length <= 0 {
		task.Length = 4
	}

	v.Digits = NewDigits(task.Length)
	v.Etime = time.Now().Unix() + task.Expires

	m := md5.New()
	m.Write([]byte(v.Code))
	m.Write([]byte(v.Digits))
	v.Md5 = hex.EncodeToString(m.Sum(nil))

	if v.Id == 0 {
		_, err := db.Insert(conn, &v, prefix)
		if err != nil {
			return err
		}
	} else {
		_, err := db.Update(conn, &v, prefix)
		if err != nil {
			return err
		}
	}

	task.Result.Captcha = &v

	return nil
}

/*B(Handle.Remove)*/
/*删除*/
func (S *CaptchaService) HandleRemoveTask(a micro.IApp, task *RemoveTask) error {
	/*E(Handle.Remove)*/
	//TODO

	if task.Code == "" {
		return micro.NewError(ERROR_NOT_FOUND_CODE, "未找到唯一代码")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Code)

	v := Captcha{}

	rs, err := db.Query(conn, &v, prefix, " WHERE code=?", task.Code)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		scanner := db.NewScaner(&v)

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

		_, err = db.Delete(conn, &v, prefix)

	} else {
		return micro.NewError(ERROR_NOT_FOUND, "未找到验证码")
	}

	task.Result.Captcha = &v

	return nil

}
