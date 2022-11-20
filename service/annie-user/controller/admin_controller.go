package controller

import (
	apiEntity "annie-user/entity/api"
	"flswld.com/common/entity/dto"
	waterAuth "flswld.com/water-api/auth"
	"github.com/gin-gonic/gin"
	"net/http"
)

func (c *Controller) queryUserByUsername(context *gin.Context) {
	accessToken := c.getAccessToken(context)
	user, err := waterAuth.WaterQueryUserByAccessToken(c.rpcWaterAuthConsumer, accessToken)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(1001, "服务器内部错误", nil))
		return
	}
	if !user.IsAdmin {
		context.JSON(http.StatusOK, dto.NewResponseResult(10001, "没有访问权限", nil))
		return
	}
	username := context.Query("username")
	userQuery := c.service.QueryUserByUsername(username)
	if userQuery == nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "未查询到用户", nil))
		return
	}
	userRet := new(apiEntity.User)
	userRet.Uid = userQuery.Uid
	userRet.Username = userQuery.Username
	userRet.Password = userQuery.Password
	userRet.IsAdmin = userQuery.IsAdmin
	context.JSON(http.StatusOK, dto.NewResponseResult(0, "查询用户成功", userRet))
}
