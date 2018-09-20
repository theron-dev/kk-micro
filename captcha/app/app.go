package app

import (
	"crypto/sha1"
	"fmt"
	"math/rand"
	"time"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Captcha)*/
	{
		s := CaptchaService{}
		app.Use(&CreateTask{},&s)
		app.Use(&VerifyTask{},&s)
		app.Use(&RemoveTask{},&s)
	}
	/*E(App.Service.Captcha)*/

	//默认数据服务
	app.AddDefaultService(&micro.DBService{})

	return app
}

func Prefix(app micro.IApp, prefix string, code string) string {
	count := uint(dynamic.IntValue(dynamic.Get(app.Config(), "tableCount"), 1))
	m := sha1.New()
	m.Write([]byte(code))
	b := m.Sum(nil)
	iid := (uint(b[1]) << 8) | uint(b[0])
	return fmt.Sprintf("%s%d_", prefix, (iid%count)+1)
}

func NewDigits(length int) string {

	rand.Seed(time.Now().UnixNano())

	b := make([]byte, length)

	for i := 0; i < length; i++ {
		b[i] = 0x30 + byte(rand.Uint32()%10)
	}

	return string(b)
}
