package controller

import (
	"flswld.com/logger"
	"github.com/gin-gonic/gin"
	"io/ioutil"
	"net/http"
)

func (c *Controller) headDataVersions(context *gin.Context) {
	context.Header("Content-Type", "application/octet-stream")
	context.Header("Content-Length", "514")
	context.Status(http.StatusOK)
}

func (c *Controller) getDataVersions(context *gin.Context) {
	dataVersions, err := ioutil.ReadFile("static/data_versions")
	if err != nil {
		logger.LOG.Error("open data_versions error")
		return
	}
	context.Data(http.StatusOK, "application/octet-stream", dataVersions)
}

func (c *Controller) headBlk(context *gin.Context) {
	context.Header("Content-Type", "application/octet-stream")
	context.Header("Content-Length", "14103")
	context.Status(http.StatusOK)
}

func (c *Controller) getBlk(context *gin.Context) {
	blk, err := ioutil.ReadFile("static/29342328.blk")
	if err != nil {
		logger.LOG.Error("open 29342328.blk error")
		return
	}
	context.Data(http.StatusOK, "application/octet-stream", blk)
}
