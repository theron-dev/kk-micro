package micro

import (
	"bytes"
	"database/sql"
	"time"

	"reflect"

	"github.com/hailongz/kk-lib/db"
)

type Database struct {
	Name          string `json:"name" yaml:"name"`
	Url           string `json:"url" yaml:"url"`
	Prefix        string `json:"prefix" yaml:"prefix"`
	MaxIdleConns  int    `json:"maxIdleConns" yaml:"maxIdleConns"`
	MaxOpenConns  int    `json:"maxOpenConns" yaml:"maxOpenConns"`
	MaxLifetime   int64  `json:"maxLifetime" yaml:"maxLifetime"`
	AutoIncrement int64  `json:"autoIncrement" yaml:"autoIncrement"`
	conn          *sql.DB
}

func DatabaseSearch(app IApp) []*Database {

	vs := []*Database{}

	var v = reflect.ValueOf(app)

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	for i := 0; i < v.NumField(); i++ {

		fd := v.Field(i)

		if fd.Kind() == reflect.Struct && fd.CanAddr() {

			r, ok := fd.Addr().Interface().(*Database)

			if ok {
				vs = append(vs, r)
			}

		} else if fd.Kind() == reflect.Ptr {

			var vv interface{} = nil

			if fd.IsNil() {
				vv = reflect.New(fd.Type().Elem()).Interface()
			} else {
				vv = fd.Interface()
			}

			if vv != nil {

				r, ok := vv.(*Database)

				if ok {
					vs = append(vs, r)
				}
			}

		}

	}

	return vs
}

func (C *Database) Open(app IApp) (*sql.DB, error) {

	if C.conn == nil {

		var conn, err = sql.Open(C.Name, C.Url)

		if err != nil {
			return nil, err
		}

		conn.SetMaxIdleConns(C.MaxIdleConns)
		conn.SetMaxOpenConns(C.MaxOpenConns)
		conn.SetConnMaxLifetime(time.Duration(C.MaxLifetime) * time.Second)

		C.conn = conn
	}

	return C.conn, nil
}

func (C *Database) InstallSQL(app IApp) (string, error) {

	scheme := app.GetScheme()

	conn, err := C.Open(app)

	if err != nil {
		return "", err
	}

	b := bytes.NewBuffer(nil)

	var v = reflect.ValueOf(app)

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	for i := 0; i < v.NumField(); i++ {

		fd := v.Field(i)

		if fd.Kind() == reflect.Struct && fd.CanAddr() {

			r, ok := fd.Addr().Interface().(db.IObject)

			if ok {
				v, err := scheme.InstallSQL(conn, r, C.Prefix, C.AutoIncrement)
				if err != nil {
					return "", err
				}
				b.WriteString(v)
				b.WriteString("\n")
			}

		} else if fd.Kind() == reflect.Ptr {

			var vv interface{} = nil

			if fd.IsNil() {
				vv = reflect.New(fd.Type().Elem()).Interface()
			} else {
				vv = fd.Interface()
			}

			if vv != nil {

				r, ok := vv.(db.IObject)

				if ok {
					v, err := scheme.InstallSQL(conn, r, C.Prefix, C.AutoIncrement)
					if err != nil {
						return "", err
					}
					b.WriteString(v)
					b.WriteString("\n")
				}
			}

		}

	}

	return b.String(), nil
}

func (C *Database) Install(app IApp) error {

	scheme := app.GetScheme()

	conn, err := C.Open(app)

	if err != nil {
		return err
	}

	var v = reflect.ValueOf(app)

	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}

	for i := 0; i < v.NumField(); i++ {

		fd := v.Field(i)

		if fd.Kind() == reflect.Struct && fd.CanAddr() {

			r, ok := fd.Addr().Interface().(db.IObject)

			if ok {
				err = scheme.Install(conn, r, C.Prefix, C.AutoIncrement)
				if err != nil {
					return err
				}
			}

		} else if fd.Kind() == reflect.Ptr {

			var vv interface{} = nil

			if fd.IsNil() {
				vv = reflect.New(fd.Type().Elem()).Interface()
			} else {
				vv = fd.Interface()
			}

			if vv != nil {

				r, ok := vv.(db.IObject)

				if ok {
					err = scheme.Install(conn, r, C.Prefix, C.AutoIncrement)
					if err != nil {
						return err
					}
				}
			}

		}

	}

	return nil
}
