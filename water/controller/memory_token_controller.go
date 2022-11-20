package controller

import (
	"flswld.com/logger"
	"github.com/gin-gonic/gin"
	"water/entity"
)

// 获取token
func (c *Controller) getMemoryToken(context *gin.Context) {
	login := new(entity.Login)
	err := context.ShouldBindJSON(login)
	if err != nil {
		logger.LOG.Error("[controller:getMemoryToken] context.ShouldBindJSON() fail: %v", err)
		return
	}
	auth, token := c.service.GetMemoryToken(login)
	if auth {
		context.JSON(200, gin.H{
			"code":  0,
			"token": token,
		})
	} else {
		context.JSON(200, gin.H{
			"code": 401,
		})
	}
}

// 验证token
func (c *Controller) checkMemoryToken(context *gin.Context) {
	token := new(entity.MemoryToken)
	err := context.ShouldBindJSON(token)
	if err != nil {
		logger.LOG.Error("[controller:checkMemoryToken] context.ShouldBindJSON() fail: %v", err)
		return
	}
	valid, uid := c.service.CheckMemoryToken(token.Token)
	context.JSON(200, gin.H{
		"code":  0,
		"valid": valid,
		"uid":   uid,
	})
}
