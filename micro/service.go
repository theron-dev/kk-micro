package micro

import (
	"reflect"
	"strings"
)

type IService interface {
	GetTitle() string
	Handle(app IApp, task ITask) error
}

type Service struct {
}

func (S *Service) GetTitle() string {
	return ""
}

func (S *Service) Handle(app IApp, task ITask) error {
	return ServiceReflectHandle(app, task, S)
}

func ServiceReflectHandle(app IApp, task ITask, service IService) error {
	var t = reflect.TypeOf(task)
	var name = t.String()
	var v = reflect.ValueOf(service)
	var i = strings.LastIndex(name, ".")
	var mt = v.MethodByName("Handle" + name[i+1:])
	if mt.IsValid() {
		var rs = mt.Call([]reflect.Value{reflect.ValueOf(app), reflect.ValueOf(task)})
		if rs != nil && len(rs) > 0 {
			var r = rs[0]
			if r.IsNil() {
				return nil
			} else if r.CanInterface() {
				return r.Interface().(error)
			}
		}
	}
	return nil
}
