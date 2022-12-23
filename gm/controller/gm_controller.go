package controller

import (
	"net/http"

	"hk4e/gs/api"
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
	rep, err := c.gm.Cmd(context.Request.Context(), &api.CmdRequest{
		FuncName: gmCmdReq.FuncName,
		Param:    gmCmdReq.Param,
	})
	if err != nil {
		context.JSON(http.StatusInternalServerError, err)
		return
	}
	context.JSON(http.StatusOK, rep)
	logger.Info("%v", gmCmdReq)
}
