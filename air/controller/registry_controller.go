package controller

import (
	"air/entity"
	"flswld.com/logger"
	"github.com/gin-gonic/gin"
)

// 注册HTTP服务
func (c *Controller) registerHttpService(context *gin.Context) {
	inst := new(entity.Instance)
	err := context.ShouldBindJSON(inst)
	if err != nil {
		logger.LOG.Error("parse json error: %v", err)
		return
	}
	c.service.RegisterHttpService(*inst)
	context.JSON(200, gin.H{
		"code": 0,
	})
}

// 取消注册HTTP服务
func (c *Controller) cancelHttpService(context *gin.Context) {
	inst := new(entity.Instance)
	err := context.ShouldBindJSON(inst)
	if err != nil {
		logger.LOG.Error("parse json error: %v", err)
		return
	}
	c.service.CancelHttpService(*inst)
	context.JSON(200, gin.H{
		"code": 0,
	})
}

// 注册RPC服务
func (c *Controller) registerRpcService(context *gin.Context) {
	inst := new(entity.Instance)
	err := context.ShouldBindJSON(inst)
	if err != nil {
		logger.LOG.Error("parse json error: %v", err)
		return
	}
	c.service.RegisterRpcService(*inst)
	context.JSON(200, gin.H{
		"code": 0,
	})
}

// 取消注册RPC服务
func (c *Controller) cancelRpcService(context *gin.Context) {
	inst := new(entity.Instance)
	err := context.ShouldBindJSON(inst)
	if err != nil {
		logger.LOG.Error("parse json error: %v", err)
		return
	}
	c.service.CancelRpcService(*inst)
	context.JSON(200, gin.H{
		"code": 0,
	})
}
