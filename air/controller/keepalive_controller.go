package controller

import (
	"air/entity"
	"flswld.com/logger"
	"github.com/gin-gonic/gin"
)

// HTTP心跳
func (c *Controller) httpKeepalive(context *gin.Context) {
	inst := new(entity.Instance)
	err := context.ShouldBindJSON(inst)
	if err != nil {
		logger.LOG.Error("parse json error: %v", err)
		return
	}
	c.service.HttpKeepalive(*inst)
	context.JSON(200, gin.H{
		"code": 0,
	})
}

// RPC心跳
func (c *Controller) rpcKeepalive(context *gin.Context) {
	inst := new(entity.Instance)
	err := context.ShouldBindJSON(inst)
	if err != nil {
		logger.LOG.Error("parse json error: %v", err)
		return
	}
	c.service.RpcKeepalive(*inst)
	context.JSON(200, gin.H{
		"code": 0,
	})
}
