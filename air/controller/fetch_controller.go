package controller

import "github.com/gin-gonic/gin"

// 获取HTTP服务
func (c *Controller) fetchHttpService(context *gin.Context) {
	inst := c.service.FetchHttpService(context.Query("name"))
	context.JSON(200, gin.H{
		"code":     0,
		"instance": inst,
	})
}

// 获取所有HTTP服务
func (c *Controller) fetchAllHttpService(context *gin.Context) {
	svc := c.service.FetchAllHttpService()
	context.JSON(200, gin.H{
		"code":    0,
		"service": svc,
	})
}

// 获取RPC服务
func (c *Controller) fetchRpcService(context *gin.Context) {
	inst := c.service.FetchRpcService(context.Query("name"))
	context.JSON(200, gin.H{
		"code":     0,
		"instance": inst,
	})
}

// 获取所有RPC服务
func (c *Controller) fetchAllRpcService(context *gin.Context) {
	svc := c.service.FetchAllRpcService()
	context.JSON(200, gin.H{
		"code":    0,
		"service": svc,
	})
}
