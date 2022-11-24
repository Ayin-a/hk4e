package statsviz_serve

import (
	"net/http"

	"hk4e/pkg/logger"

	"github.com/arl/statsviz"
)

func Serve(addr string) error {
	// 性能检测
	err := statsviz.RegisterDefault()
	if err != nil {
		logger.LOG.Error("statsviz init error: %v", err)
		return err
	}
	err = http.ListenAndServe(addr, nil)
	if err != nil {
		logger.LOG.Error("perf debug http start error: %v", err)
		return err
	}
	return nil
}
