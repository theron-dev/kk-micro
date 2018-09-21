package app

import (
	"bytes"
	"crypto/tls"
	"encoding/base64"
	"net/smtp"
	"strings"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

/*B(Import)*/

/*E(Import)*/

type /*B(Service)*/ MailService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *MailService) GetTitle() string {
	return "邮件服务"
}

/*E(Title)*/

func SendMail(addr string, a smtp.Auth, from string, to []string, msg []byte) error {
	c, err := smtp.Dial(addr)
	if err != nil {
		return err
	}
	defer c.Close()

	if err = c.Hello("localhost"); err != nil {
		return err
	}

	if ok, _ := c.Extension("STARTTLS"); ok {
		config := &tls.Config{
			InsecureSkipVerify: true,
		}
		if err = c.StartTLS(config); err != nil {
			return err
		}
	}

	if err = c.Auth(a); err != nil {
		return err
	}

	if err = c.Mail(from); err != nil {
		return err
	}

	for _, addr := range to {
		if err = c.Rcpt(addr); err != nil {
			return err
		}
	}
	w, err := c.Data()
	if err != nil {
		return err
	}
	_, err = w.Write(msg)
	if err != nil {
		return err
	}
	err = w.Close()
	if err != nil {
		return err
	}
	return c.Quit()
}

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Send)*/
/*发邮件*/
func (S *MailService) HandleSendTask(a micro.IApp, task *SendTask) error {
	/*E(Handle.Send)*/
	//TODO

	if task.Config == "" {
		task.Config = "default"
	}

	config := dynamic.Get(a.Config(), task.Config)

	from := dynamic.StringValue(dynamic.Get(config, "from"), "")
	addr := dynamic.StringValue(dynamic.Get(config, "addr"), "")
	username := dynamic.StringValue(dynamic.Get(config, "username"), "")
	password := dynamic.StringValue(dynamic.Get(config, "password"), "")

	host := strings.Split(addr, ":")[0]
	auth := smtp.PlainAuth("", username, password, host)

	body := bytes.NewBuffer(nil)

	body.WriteString("To: ")
	body.WriteString(task.To)
	body.WriteString("\r\n")

	body.WriteString("From: ")
	body.WriteString(from)
	body.WriteString("\r\n")

	body.WriteString("Subject: ")
	body.WriteString("=?UTF8?B?")
	body.WriteString(base64.StdEncoding.EncodeToString([]byte(task.Title)))
	body.WriteString("?=")
	body.WriteString("\r\n")

	body.WriteString("Content-Type: ")
	body.WriteString(task.ContentType)
	body.WriteString("\r\n")

	body.WriteString("Content-Transfer-Encoding: ")
	body.WriteString("base64")
	body.WriteString("\r\n")

	body.WriteString("\r\n")
	body.WriteString(base64.StdEncoding.EncodeToString([]byte(task.Content)))

	return SendMail(addr, auth, from, strings.Split(task.To, ";"), body.Bytes())
}
