package micro

import (
	"bytes"
	"encoding/json"
	"reflect"
	"strings"

	"github.com/hailongz/kk-lib/dynamic"
)

func GetStructFieldsDocRAML(t reflect.Type) map[string]interface{} {
	v := map[string]interface{}{}

	if t.Kind() == reflect.Struct {

		for i := 0; i < t.NumField(); i++ {

			fd := t.Field(i)

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
					for nn, vv := range GetStructFieldsDocRAML(fd.Type) {
						v[nn] = vv
					}
				}
				continue
			}

			ff := GetStructDocRAML(fd.Type)
			ff["required"] = dynamic.BooleanValue(fd.Tag.Get("required"), false)
			ff["description"] = fd.Tag.Get("title")
			v[name] = ff

		}
	}

	return v
}

func GetStructDocRAML(t reflect.Type) map[string]interface{} {

	v := map[string]interface{}{}

	switch t.Kind() {
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32:
		v["type"] = "integer"
	case reflect.Int64, reflect.Uint64:
		v["type"] = "integer"
	case reflect.Float32, reflect.Float64:
		v["type"] = "number"
	case reflect.Bool:
		v["type"] = "boolean"
	case reflect.Interface, reflect.Map:
		v["type"] = "object"
	case reflect.String:
		v["type"] = "string"
	case reflect.Ptr:
		return GetStructDocRAML(t.Elem())
	case reflect.Struct:
		v["type"] = "object"
		v["properties"] = GetStructFieldsDocRAML(t)
	case reflect.Slice:
		v["type"] = "array"
		v["items"] = []interface{}{GetStructFieldsDocRAML(t.Elem())}
	default:
		v["type"] = t.Kind().String()
	}

	return v
}

func GetStructDocSchemaRAML(t reflect.Type) string {

	v := GetStructDocRAML(t)

	v["$schema"] = "http://json-schema.org/draft-03/schema"

	vv, _ := json.Marshal(v)

	b := bytes.NewBuffer(nil)

	json.Indent(b, vv, "", "\t")

	return b.String()
}

func GetStructFieldsDocExampleRAML(t reflect.Type) map[string]interface{} {

	v := map[string]interface{}{}

	if t.Kind() == reflect.Struct {

		for i := 0; i < t.NumField(); i++ {

			fd := t.Field(i)

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
					for nn, vv := range GetStructFieldsDocExampleRAML(fd.Type) {
						v[nn] = vv
					}
				}
				continue
			}

			v[name] = GetStructDocExampleRAML(fd.Type)

		}
	}

	return v
}

func GetStructDocExampleRAML(t reflect.Type) interface{} {

	switch t.Kind() {
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32:
		return 0
	case reflect.Int64, reflect.Uint64:
		return 0
	case reflect.Float32, reflect.Float64:
		return 0.0
	case reflect.Bool:
		return false
	case reflect.Interface, reflect.Map:
		return map[string]interface{}{}
	case reflect.String:
		return ""
	case reflect.Ptr:
		return GetStructDocExampleRAML(t.Elem())
	case reflect.Struct:
		return GetStructFieldsDocExampleRAML(t)
	case reflect.Slice:
		return []interface{}{GetStructFieldsDocExampleRAML(t.Elem())}
	}

	return nil
}

func GetStructDocExampleStringRAML(t reflect.Type) string {

	v := GetStructDocExampleRAML(t)

	vv, _ := json.Marshal(v)

	b := bytes.NewBuffer(nil)

	json.Indent(b, vv, "", "\t")

	return b.String()
}

func GetTaskDocRAML(t reflect.Type) interface{} {

	task := reflect.New(t).Interface().(ITask)

	r := task.GetResult()

	v := map[string]interface{}{}

	post := map[string]interface{}{}

	post["description"] = task.GetTitle()

	post["body"] = map[string]interface{}{"application/json": map[string]interface{}{"schema": GetStructDocSchemaRAML(t), "example": GetStructDocExampleStringRAML(t)}}

	post["responses"] = map[string]interface{}{"200": map[string]interface{}{"body": map[string]interface{}{"application/json": map[string]interface{}{"schema": GetStructDocSchemaRAML(reflect.TypeOf(r)), "example": GetStructDocExampleStringRAML(reflect.TypeOf(r))}}}}

	v["post"] = post

	return v
}

func GetDocRAML(app IApp, uri string) interface{} {

	v := map[string]interface{}{}

	v["title"] = app.GetTitle()
	v["baseUri"] = uri
	v["mediaType"] = "application/json"

	app.Each(func(name string, taskType reflect.Type) bool {
		v["/"+name+".json"] = GetTaskDocRAML(taskType)
		return true
	})

	return v
}
