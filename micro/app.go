package micro

import (
	"encoding/json"
	"io/ioutil"
	"os"
	"reflect"
	"strings"

	"github.com/hailongz/kk-lib/dynamic"
	"gopkg.in/yaml.v2"
)

type IApp interface {
	Config() interface{}
	Use(task ITask, service IService)
	AddDefaultService(service IService)
	Handle(task ITask) error
	NewTask(name string) ITask
	Each(fn func(name string, taskType reflect.Type) bool)
	GetTitle() string
	GetPrefix() string
}

type App struct {
	config          interface{}
	tasks           map[string]reflect.Type
	services        map[string]IService
	defaultServices []IService
}

func NewApp(config interface{}) IApp {
	v := App{}
	v.config = config
	v.tasks = map[string]reflect.Type{}
	v.services = map[string]IService{}
	v.defaultServices = []IService{}
	return &v
}

func NewAppWithPath(path string) (IApp, error) {

	var config interface{} = nil

	fd, err := os.Open(path)

	if err != nil {
		return nil, err
	}

	defer fd.Close()

	b, err := ioutil.ReadAll(fd)

	if err != nil {
		return nil, err
	}

	if strings.HasSuffix(path, ".json") {
		err = json.Unmarshal(b, &config)
		if err != nil {
			return nil, err
		}
	} else if strings.HasSuffix(path, ".yaml") {
		err = yaml.Unmarshal(b, &config)
		if err != nil {
			return nil, err
		}
	} else {
		return nil, NewError(600, "Not Implemented Config File "+path)
	}

	return NewApp(config), nil
}

func (A *App) Config() interface{} {
	return A.config
}

func (A *App) GetTitle() string {
	return dynamic.StringValue(dynamic.Get(A.config, "title"), "")
}

func (A *App) GetPrefix() string {
	return dynamic.StringValue(dynamic.Get(A.config, "prefix"), "/")
}

func (A *App) Use(task ITask, service IService) {
	name := task.GetName()
	A.tasks[name] = reflect.TypeOf(task).Elem()
	A.services[name] = service
}

func (A *App) AddDefaultService(service IService) {
	A.defaultServices = append(A.defaultServices, service)
}

func (A *App) Each(fn func(name string, taskType reflect.Type) bool) {

	for name, taskType := range A.tasks {
		if !fn(name, taskType) {
			break
		}
	}

}

func (A *App) Handle(task ITask) error {

	name := task.GetName()

	s, ok := A.services[name]

	if ok {
		return ServiceReflectHandle(A, task, s)
	} else {

		var err error = nil

		for _, s := range A.defaultServices {
			err = ServiceReflectHandle(A, task, s)
			if err != nil {
				break
			}
		}

		return err
	}

}

func (A *App) NewTask(name string) ITask {

	t, ok := A.tasks[name]

	if ok {

		task, ok := reflect.New(t).Interface().(ITask)

		if ok {
			return task
		}
	}

	return nil
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
