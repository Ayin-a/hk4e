package controller

import (
	"net/http"
	"os"

	"hk4e/pkg/logger"

	"github.com/gin-gonic/gin"
)

func (c *Controller) headDataVersions(context *gin.Context) {
	context.Header("Content-Type", "application/octet-stream")
	context.Header("Content-Length", "514")
	context.Status(http.StatusOK)
}

func (c *Controller) getDataVersions(context *gin.Context) {
	dataVersions, err := os.ReadFile("static/data_versions")
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
	blk, err := os.ReadFile("static/29342328.blk")
	if err != nil {
		logger.LOG.Error("open 29342328.blk error")
		return
	}
	context.Data(http.StatusOK, "application/octet-stream", blk)
}
