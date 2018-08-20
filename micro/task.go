package micro

type ITask interface {
	GetResult() interface{}
	GetName() string
	GetTitle() string
}

type StartupTask struct {
}

func (T *StartupTask) GetResult() interface{} {
	return nil
}

func (T *StartupTask) GetName() string {
	return ""
}

func (T *StartupTask) GetTitle() string {
	return "服务启动后"
}
