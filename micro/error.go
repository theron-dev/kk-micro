package micro

import (
	"fmt"
)

const ERROR_UNKNOWN = 0x1000

type Error struct {
	Errno  int    `json:"errno,omitempty" title:"错误代码"`
	Errmsg string `json:"errmsg,omitempty" title:"错误信息"`
}

func (E *Error) Error() string {
	return fmt.Sprintf("[%d] %s", E.Errno, E.Errmsg)
}

func NewError(errno int, errmsg string) *Error {
	return &Error{errno, errmsg}
}
