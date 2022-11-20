package controller

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"time"
)

func (c *Controller) pollHttpService(context *gin.Context) {
	serviceName := context.Query("name")
	recvrNtfr := c.service.RegistryHttpNotifyReceiver(serviceName)
	timeout := time.NewTicker(time.Second * 30)
	select {
	case inst := <-recvrNtfr.NotifyChannel:
		c.service.CancelHttpNotifyReceiver(serviceName, recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":     0,
			"instance": inst,
		})
	case <-timeout.C:
		c.service.CancelHttpNotifyReceiver(serviceName, recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":     0,
			"instance": nil,
		})
	}
}

func (c *Controller) pollAllHttpService(context *gin.Context) {
	recvrNtfr := c.service.RegistryAllHttpNotifyReceiver()
	timeout := time.NewTicker(time.Second * 30)
	select {
	case svc := <-recvrNtfr.NotifyChannel:
		c.service.CancelAllHttpNotifyReceiver(recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":    0,
			"service": svc,
		})
	case <-timeout.C:
		c.service.CancelAllHttpNotifyReceiver(recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":    0,
			"service": nil,
		})
	}
}

func (c *Controller) pollRpcService(context *gin.Context) {
	serviceName := context.Query("name")
	recvrNtfr := c.service.RegistryRpcNotifyReceiver(serviceName)
	timeout := time.NewTicker(time.Second * 30)
	select {
	case inst := <-recvrNtfr.NotifyChannel:
		c.service.CancelRpcNotifyReceiver(serviceName, recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":     0,
			"instance": inst,
		})
	case <-timeout.C:
		c.service.CancelRpcNotifyReceiver(serviceName, recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":     0,
			"instance": nil,
		})
	}
}

func (c *Controller) pollAllRpcService(context *gin.Context) {
	recvrNtfr := c.service.RegistryAllRpcNotifyReceiver()
	timeout := time.NewTicker(time.Second * 30)
	select {
	case svc := <-recvrNtfr.NotifyChannel:
		c.service.CancelAllRpcNotifyReceiver(recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":    0,
			"service": svc,
		})
	case <-timeout.C:
		c.service.CancelAllRpcNotifyReceiver(recvrNtfr.Id)
		context.JSON(http.StatusOK, gin.H{
			"code":    0,
			"service": nil,
		})
	}
}
