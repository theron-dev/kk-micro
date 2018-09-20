package app

import (
	"bytes"
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

	return smtp.SendMail(addr, auth, from, strings.Split(task.To, ";"), body.Bytes())
}
