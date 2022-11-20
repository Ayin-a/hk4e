package controller

import (
	apiEntity "annie-user/entity/api"
	dbEntity "annie-user/entity/db"
	"flswld.com/common/entity/dto"
	"flswld.com/common/utils/endec"
	"flswld.com/logger"
	waterAuth "flswld.com/water-api/auth"
	"github.com/gin-gonic/gin"
	"net/http"
	"regexp"
)

func (c *Controller) userRegister(context *gin.Context) {
	userRegInfo := new(apiEntity.User)
	err := context.BindJSON(&userRegInfo)
	if err != nil {
		context.JSON(http.StatusOK, gin.H{
			"code": 10003,
			"msg":  "参数错误",
		})
		return
	}
	username := userRegInfo.Username
	password := userRegInfo.Password
	if len(username) < 6 || len(username) > 20 {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "用户名为6-20位字符", nil))
		return
	}
	if len(password) < 8 || len(password) > 20 {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "密码为8-20位字符", nil))
		return
	}
	ok, err := regexp.MatchString("^[a-zA-Z0-9]{6,20}$", username)
	if err != nil || !ok {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "用户名只能包含大小写字母和数字", nil))
		return
	}
	user := c.service.QueryUserByUsername(username)
	if user != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "用户名已注册", nil))
		return
	}
	user = new(dbEntity.User)
	user.Username = username
	user.Password = password
	ok = c.service.RegisterUser(user)
	if !ok {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "用户注册失败", nil))
		return
	}
	logger.LOG.Info("user register success, username: %v", username)
	context.JSON(http.StatusOK, dto.NewResponseResult(0, "用户注册成功", nil))
}

func (c *Controller) userUpdatePassword(context *gin.Context) {
	accessToken := c.getAccessToken(context)
	user, err := waterAuth.WaterQueryUserByAccessToken(c.rpcWaterAuthConsumer, accessToken)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(1001, "服务器内部错误", nil))
		return
	}
	json := make(map[string]string)
	err = context.BindJSON(&json)
	if err != nil {
		context.JSON(http.StatusOK, gin.H{
			"code": 10003,
			"msg":  "参数错误",
		})
		return
	}
	oldPassword := json["oldPassword"]
	newPassword := json["newPassword"]
	if len(oldPassword) < 8 || len(oldPassword) > 20 || len(newPassword) < 8 || len(newPassword) > 20 {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "密码为8-20位字符", nil))
		return
	}
	dbUser := c.service.QueryUserByUsername(user.Username)
	if dbUser.Password != endec.Md5Str(oldPassword) {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "旧密码错误", nil))
		return
	}
	dbUser.Password = endec.Md5Str(newPassword)
	ok := c.service.UpdateUser(dbUser)
	if !ok {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "修改密码失败", nil))
		return
	}
	context.JSON(http.StatusOK, dto.NewResponseResult(0, "修改密码成功", nil))
	// TODO 处理各种失效
	_ = c.rpcHk4eGatewayConsumer.CallFunction("RpcManager", "UserPasswordChange", &dbUser.Uid, &ok)
}
