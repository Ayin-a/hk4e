package controller

import (
	"hk4e/pkg/logger"

	"github.com/gin-gonic/gin"
)

type GmCmdReq struct {
	FuncName string   `json:"func_name"`
	Param    []string `json:"param"`
}

func (c *Controller) gmCmd(context *gin.Context) {
	gmCmdReq := new(GmCmdReq)
	err := context.ShouldBindJSON(gmCmdReq)
	if err != nil {
		return
	}
	logger.LOG.Info("%v", gmCmdReq)
}
