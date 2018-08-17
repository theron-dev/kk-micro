package micro

import (
	"reflect"
	"strings"

	"github.com/hailongz/kk-lib/dynamic"
)

type ITask interface {
	GetName() string
	GetTitle() string
	GetResult() interface{}
}

type Task struct {
}

func (T *Task) GetName() string {
	return ""
}

func (T *Task) GetTitle() string {
	return ""
}

func (T *Task) GetResult() interface{} {
	return nil
}

func GetTaskDoc(task ITask, prefix string) interface{} {
	v := map[interface{}]interface{}{}
	v["title"] = task.GetTitle()
	v["name"] = prefix + task.GetName()
	v["input"] = GetStructDoc("", reflect.TypeOf(task))
	v["output"] = GetStructDoc("", reflect.TypeOf(task.GetResult()))
	return v
}

func GetStructDoc(prefix string, v reflect.Type) []interface{} {

	fds := []interface{}{}

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	if v.Kind() == reflect.Struct {

		for i := 0; i < v.NumField(); i++ {

			fd := v.Field(i)

			tag := fd.Tag.Get("json")
			name := fd.Name
			if tag != "" {
				name = strings.Split(tag, ",")[0]
				if name == "-" {
					continue
				}
			} else {
				switch fd.Type.Kind() {
				case reflect.Struct:
					for _, vv := range GetStructDoc(prefix, fd.Type) {
						fds = append(fds, vv)
					}
				}
				continue
			}

			field := map[interface{}]interface{}{}
			field["name"] = prefix + name
			switch fd.Type.Kind() {
			case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32:
				field["type"] = "int"
			case reflect.Int64, reflect.Uint64:
				field["type"] = "long"
			case reflect.Float32, reflect.Float64:
				field["type"] = "double"
			case reflect.Bool:
				field["type"] = "boolean"
			case reflect.Interface, reflect.Map:
				field["type"] = "Object"
			case reflect.String:
				field["type"] = "String"
			case reflect.Ptr, reflect.Struct:
				for _, vv := range GetStructDoc(prefix+name+".", fd.Type) {
					fds = append(fds, vv)
				}
				continue
			case reflect.Slice:
				for _, vv := range GetStructDoc(prefix+name+"[].", fd.Type.Elem()) {
					fds = append(fds, vv)
				}
				continue
			default:
				field["type"] = fd.Type.Kind().String()
			}
			field["title"] = fd.Tag.Get("title")
			field["required"] = dynamic.BooleanValue(fd.Tag.Get("required"), false)

			fds = append(fds, field)

		}
	}

	return fds
}
