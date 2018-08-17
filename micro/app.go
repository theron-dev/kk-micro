package micro

import (
	"bytes"
	"encoding/json"
	"io"
	"os"
	"reflect"
	"strings"

	"github.com/go-yaml/yaml"
	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
)

type IExec interface {
	Exec(app IApp)
}

var defaultScheme db.IScheme

func init() {
	defaultScheme = db.NewScheme()
}

type IApp interface {
	Init()
	SetTask(task ITask)
	GetTasks() map[string]reflect.Type
	NewTask(name string) ITask
	GetName() string
	GetScheme() db.IScheme
}

type App struct {
	tasks     map[string]reflect.Type
	Name      string `json:"name" yaml:"name"`
	MaxMemory int64  `json:"maxMemory" yaml:"maxMemory"`
	Address   string `json:"address" yaml:"address"`
	Timeout   int64  `json:"timeout" yaml:"timeout"`
}

func (A *App) Init() {
	A.tasks = map[string]reflect.Type{}
}

func (A *App) NewTask(name string) ITask {
	v, ok := A.tasks[name]
	if ok {
		task, ok := reflect.New(v).Interface().(ITask)
		if ok {
			return task
		}
	}
	return nil
}

func (A *App) GetScheme() db.IScheme {
	return defaultScheme
}

func (A *App) GetTasks() map[string]reflect.Type {
	return A.tasks
}

func (A *App) SetTask(task ITask) {
	A.tasks[task.GetName()] = reflect.TypeOf(task).Elem()
}

func (A *App) GetName() string {
	return A.Name
}

func obtainTask(app IApp, obtain interface{}) {

	var v = reflect.ValueOf(obtain)

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	if v.Kind() == reflect.Struct {

		for i := 0; i < v.NumField(); i++ {

			fd := v.Field(i)

			if fd.Kind() == reflect.Ptr {

				var vv interface{} = nil

				if fd.IsNil() && fd.CanSet() {
					fd.Set(reflect.New(fd.Type().Elem()))
				}

				if !fd.IsNil() {

					vv = fd.Interface()

					task, ok := vv.(ITask)

					if ok {
						app.SetTask(task)
					} else {
						obtainTask(app, vv)
					}

				}

			}

		}
	}
}

func Load(app IApp, config interface{}) {
	app.Init()
	dynamic.SetValue(app, config)
	obtainTask(app, app)
}

func LoadPath(app IApp, path string) error {

	fd, err := os.Open(path)

	if err != nil {
		return err
	}

	defer fd.Close()

	b := bytes.NewBuffer(nil)

	_, err = b.ReadFrom(fd)

	if err != nil && err != io.EOF {
		return err
	}

	var config interface{} = nil

	if strings.HasSuffix(path, ".json") {
		err = json.Unmarshal(b.Bytes(), &config)
		if err != nil {
			return err
		}
	} else if strings.HasSuffix(path, ".yaml") {
		err = yaml.Unmarshal(b.Bytes(), &config)
		if err != nil {
			return err
		}
	}

	Load(app, config)

	return nil
}

func obtainExec(app IApp, obtain interface{}) {

	e, ok := obtain.(IExec)

	if ok {
		e.Exec(app)
	}

	var v = reflect.ValueOf(obtain)

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	if v.Kind() == reflect.Struct {

		for i := 0; i < v.NumField(); i++ {

			fd := v.Field(i)

			if fd.Kind() == reflect.Ptr && !fd.IsNil() {

				var vv interface{} = fd.Interface()

				if vv != nil {

					obtainExec(app, vv)

				}

			}

		}
	}
}

func Exec(app IApp) {
	obtainExec(app, app)
}

func Handle(app IApp, task ITask) error {

	var v = reflect.ValueOf(app)

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	for i := 0; i < v.NumField(); i++ {

		fd := v.Field(i)

		if fd.Kind() == reflect.Ptr && !fd.IsNil() {

			vv := fd.Interface()

			if vv != nil {

				s, ok := vv.(IService)

				if ok {

					err := s.Handle(app, task)

					if err != nil {
						return err
					}
				}
			}

		}

	}

	return nil

}
