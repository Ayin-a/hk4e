package controller

import (
	"air/service"
	"flswld.com/common/config"
	"github.com/gin-gonic/gin"
	"strconv"
)

type Controller struct {
	service *service.Service
}

func NewController(service *service.Service) (r *Controller) {
	r = new(Controller)
	r.service = service
	go r.registerRouter()
	return r
}

func (c *Controller) registerRouter() {
	if config.CONF.Logger.Level == "DEBUG" {
		gin.SetMode(gin.DebugMode)
	} else {
		gin.SetMode(gin.ReleaseMode)
	}
	engine := gin.Default()
	// HTTP
	engine.GET("/http/fetch", c.fetchHttpService)
	engine.GET("/http/fetch/all", c.fetchAllHttpService)
	engine.POST("/http/reg", c.registerHttpService)
	engine.POST("/http/cancel", c.cancelHttpService)
	engine.POST("/http/ka", c.httpKeepalive)
	// RPC
	engine.GET("/rpc/fetch", c.fetchRpcService)
	engine.GET("/rpc/fetch/all", c.fetchAllRpcService)
	engine.POST("/rpc/reg", c.registerRpcService)
	engine.POST("/rpc/cancel", c.cancelRpcService)
	engine.POST("/rpc/ka", c.rpcKeepalive)
	// 长轮询
	engine.GET("/poll/http", c.pollHttpService)
	engine.GET("/poll/http/all", c.pollAllHttpService)
	engine.GET("/poll/rpc", c.pollRpcService)
	engine.GET("/poll/rpc/all", c.pollAllRpcService)
	port := strconv.FormatInt(int64(config.CONF.HttpPort), 10)
	portStr := ":" + port
	_ = engine.Run(portStr)
}
