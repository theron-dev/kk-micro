package ldap

import (
	"crypto/tls"
	"time"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/login/app"
	"gopkg.in/ldap.v2"
)

func init() {

	app.OpenAuthSource("LDAP", func(task *app.LoginTask, auth *app.Auth) error {

		addr := dynamic.StringValue(dynamic.Get(auth.Options, "addr"), "")
		TLS := dynamic.BooleanValue(dynamic.Get(auth.Options, "TLS"), false)
		timeout := dynamic.IntValue(dynamic.Get(auth.Options, "timeout"), 2)

		var conn *ldap.Conn = nil
		var err error = nil

		if TLS {
			conn, err = ldap.DialTLS("tcp", addr, &tls.Config{
				InsecureSkipVerify: true,
			})
		} else {
			conn, err = ldap.Dial("tcp", addr)
		}

		conn.SetTimeout(time.Duration(timeout) * time.Second)

		if err != nil {
			return err
		}

		defer conn.Close()

		err = conn.Bind(task.Name, task.Password)

		if err != nil {
			return err
		}

		return nil
	})
}
