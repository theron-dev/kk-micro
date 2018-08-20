package micro

import "fmt"

type Error struct {
	Code    int32
	Message string
}

func NewError(code int32, message string) *Error {
	return &Error{code, message}
}

func (E *Error) Error() string {
	return fmt.Sprintf("[%d] %s", E.Code, E.Message)
}
