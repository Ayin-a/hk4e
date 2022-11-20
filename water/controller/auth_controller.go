package controller

import (
	providerApiEntity "flswld.com/annie-user-api/entity"
	"github.com/gin-gonic/gin"
	"net/http"
)

func (c *Controller) login(context *gin.Context) {
	json := make(map[string]string)
	err := context.BindJSON(&json)
	if err != nil {
		context.JSON(http.StatusOK, gin.H{
			"code": 10003,
			"msg":  "参数错误",
		})
		return
	}
	accessToken, refreshToken, err := c.service.LoginAuth(&providerApiEntity.User{Username: json["username"], Password: json["password"]})
	if err != nil {
		context.JSON(http.StatusOK, gin.H{
			"code": 10002,
			"msg":  "用户名或密码错误",
		})
		return
	}
	context.JSON(http.StatusOK, gin.H{
		"code":          0,
		"msg":           "",
		"access_token":  accessToken,
		"refresh_token": refreshToken,
	})
}

func (c *Controller) refreshToken(context *gin.Context) {
	json := make(map[string]string)
	err := context.BindJSON(&json)
	if err != nil {
		context.JSON(http.StatusOK, gin.H{
			"code": 10003,
			"msg":  "参数错误",
		})
		return
	}
	accessToken, err := c.service.RefreshToken(json["refresh_token"])
	if err != nil {
		context.JSON(http.StatusOK, gin.H{
			"code": 10004,
			"msg":  "刷新access_token失败",
		})
		return
	}
	context.JSON(http.StatusOK, gin.H{
		"code":         0,
		"msg":          "",
		"access_token": accessToken,
	})
}

func (c *Controller) authTest(context *gin.Context) {
	context.JSON(http.StatusOK, gin.H{
		"code": 0,
		"msg":  "认证测试成功",
	})
}
