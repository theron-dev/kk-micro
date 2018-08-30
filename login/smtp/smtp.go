package smtp

import (
	"crypto/tls"
	"errors"
	"net/smtp"
	"time"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/login/app"
	"github.com/hailongz/kk-micro/micro"
)

type Auth struct {
	Username string
	Password string
}

func (a *Auth) Start(server *smtp.ServerInfo) (string, []byte, error) {
	return "LOGIN", []byte{}, nil
}

func (a *Auth) Next(fromServer []byte, more bool) ([]byte, error) {
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

func init() {

	app.OpenAuthSource("SMTP", func(task *app.LoginTask, auth *app.Auth) error {

		addr := dynamic.StringValue(dynamic.Get(auth.Options, "addr"), "")
		TLS := dynamic.BooleanValue(dynamic.Get(auth.Options, "TLS"), false)
		timeout := dynamic.IntValue(dynamic.Get(auth.Options, "timeout"), 2)

		a := &Auth{Username: task.Name, Password: task.Password}

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

			err = cli.Auth(a)

			if !isClose {
				isClose = true
				ch <- true
			}

		}()

		go func() {
			time.Sleep(time.Duration(timeout) * time.Second)
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
			return micro.NewError(app.ERROR_AUTH_SOURCE, "验证失败")
		}

		return nil
	})
}
