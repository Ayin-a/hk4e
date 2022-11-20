package controller

import (
	"flswld.com/common/entity/dto"
	"flswld.com/gate-hk4e-api/gm"
	waterAuth "flswld.com/water-api/auth"
	"github.com/gin-gonic/gin"
	"net/http"
	"strconv"
)

func (c *Controller) changeGateState(context *gin.Context) {
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
	stateStr := context.Query("state")
	state, err := strconv.ParseBool(stateStr)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	var res bool
	ok := c.rpcHk4eGatewayConsumer.CallFunction("RpcManager", "ChangeGateOpenState", &state, &res)
	if ok == true && res == true {
		context.JSON(http.StatusOK, dto.NewResponseResult(0, "操作成功", nil))
	} else {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "操作失败", nil))
	}
}

func (c *Controller) kickPlayer(context *gin.Context) {
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
	uidStr := context.Query("uid")
	reasonStr := context.Query("reason")
	uid, err := strconv.ParseInt(uidStr, 10, 64)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	reason, err := strconv.ParseInt(reasonStr, 10, 64)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	info := new(gm.KickPlayerInfo)
	info.UserId = uint32(uid)
	info.Reason = uint32(reason)
	var result bool
	ok := c.rpcHk4eGatewayConsumer.CallFunction("RpcManager", "KickPlayer", &info, &result)
	if ok == true && result == true {
		context.JSON(http.StatusOK, dto.NewResponseResult(0, "操作成功", nil))
	} else {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "操作失败", nil))
	}
}

func (c *Controller) getOnlineUser(context *gin.Context) {
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
	uidStr := context.Query("uid")
	uid, err := strconv.ParseInt(uidStr, 10, 64)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	list := new(gm.OnlineUserList)
	list.UserList = make([]*gm.OnlineUserInfo, 0)
	userId := uint32(uid)
	ok := c.rpcHk4eGatewayConsumer.CallFunction("RpcManager", "GetOnlineUser", &userId, &list)
	if ok {
		context.JSON(http.StatusOK, dto.NewResponseResult(0, "查询成功", list))
	} else {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "查询失败", nil))
	}
}

func (c *Controller) forbidUser(context *gin.Context) {
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
	uidStr := context.Query("uid")
	uid, err := strconv.ParseInt(uidStr, 10, 64)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	endTimeStr := context.Query("endTime")
	endTime, err := strconv.ParseInt(endTimeStr, 10, 64)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	info := new(gm.ForbidUserInfo)
	info.UserId = uint32(uid)
	info.ForbidEndTime = uint64(endTime)
	var result bool
	ok := c.rpcHk4eGatewayConsumer.CallFunction("RpcManager", "ForbidUser", &info, &result)
	if ok == true && result == true {
		context.JSON(http.StatusOK, dto.NewResponseResult(0, "操作成功", nil))
	} else {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "操作失败", nil))
	}
}

func (c *Controller) unForbidUser(context *gin.Context) {
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
	uidStr := context.Query("uid")
	uid, err := strconv.ParseInt(uidStr, 10, 64)
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10003, "参数错误", nil))
		return
	}
	userId := uint32(uid)
	var result bool
	ok := c.rpcHk4eGatewayConsumer.CallFunction("RpcManager", "UnForbidUser", &userId, &result)
	if ok == true && result == true {
		context.JSON(http.StatusOK, dto.NewResponseResult(0, "操作成功", nil))
	} else {
		context.JSON(http.StatusOK, dto.NewResponseResult(-1, "操作失败", nil))
	}
}
