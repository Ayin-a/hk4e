package controller

import (
	"hk4e/dispatch/model"
	"hk4e/pkg/logger"

	"github.com/gin-gonic/gin"
)

// POST https://log-upload-os.mihoyo.com/sdk/dataUpload HTTP/1.1
func (c *Controller) sdkDataUpload(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"code\":0}")
}

// GET http://log-upload-os.hoyoverse.com/perf/config/verify?device_id=dd664c97f924af747b4576a297c132038be239291651474673768&platform=2&name=DESKTOP-EDUS2DL HTTP/1.1
func (c *Controller) perfConfigVerify(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"code\":0}")
}

// POST http://log-upload-os.hoyoverse.com/perf/dataUpload HTTP/1.1
func (c *Controller) perfDataUpload(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"code\":0}")
}

// POST http://overseauspider.yuanshen.com:8888/log HTTP/1.1
func (c *Controller) log8888(context *gin.Context) {
	clientLog := new(model.ClientLog)
	err := context.ShouldBindJSON(clientLog)
	if err != nil {
		logger.Error("parse client log error: %v", err)
		return
	}
	_, err = c.dao.InsertClientLog(clientLog)
	if err != nil {
		logger.Error("insert client log error: %v", err)
		return
	}
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"code\":0}")
}

// POST http://log-upload-os.hoyoverse.com/crash/dataUpload HTTP/1.1
func (c *Controller) crashDataUpload(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"code\":0}")
}
