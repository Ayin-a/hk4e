package statsviz_serve

import (
	"net/http"

	"github.com/arl/statsviz"
)

// Serve 性能检测
// 原生pprof /debug/pprof
// 可视化图表 /debug/statsviz
func Serve(addr string) error {
	err := statsviz.RegisterDefault()
	if err != nil {
		return err
	}
	err = http.ListenAndServe(addr, nil)
	if err != nil {
		return err
	}
	return nil
}
