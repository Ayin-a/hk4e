package controller

import (
	"flswld.com/common/entity/dto"
	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v4"
	"net/http"
)

type UserInfo struct {
	UserId uint32 `json:"userId"`
	jwt.RegisteredClaims
}

func (c *Controller) gacha(context *gin.Context) {
	jwtStr := context.Query("jwt")
	token, err := jwt.ParseWithClaims(jwtStr, new(UserInfo), func(token *jwt.Token) (interface{}, error) {
		return []byte("flswld"), nil
	})
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10005, "验签失败", nil))
		return
	}
	if !token.Valid {
		context.JSON(http.StatusOK, dto.NewResponseResult(10005, "验签失败", nil))
		return
	}
	info, ok := token.Claims.(*UserInfo)
	if !ok {
		context.JSON(http.StatusOK, dto.NewResponseResult(10005, "验签失败", nil))
		return
	}
	gachaType := context.Query("gachaType")
	rsp := map[string]any{
		"uid":       info.UserId,
		"gachaType": gachaType,
	}
	context.JSON(http.StatusOK, dto.NewResponseResult(0, "成功", rsp))
}

func (c *Controller) gachaDetails(context *gin.Context) {
	jwtStr := context.Query("jwt")
	token, err := jwt.ParseWithClaims(jwtStr, new(UserInfo), func(token *jwt.Token) (interface{}, error) {
		return []byte("flswld"), nil
	})
	if err != nil {
		context.JSON(http.StatusOK, dto.NewResponseResult(10005, "验签失败", nil))
		return
	}
	if !token.Valid {
		context.JSON(http.StatusOK, dto.NewResponseResult(10005, "验签失败", nil))
		return
	}
	info, ok := token.Claims.(*UserInfo)
	if !ok {
		context.JSON(http.StatusOK, dto.NewResponseResult(10005, "验签失败", nil))
		return
	}
	scheduleId := context.Query("scheduleId")
	rsp := map[string]any{
		"uid":        info.UserId,
		"scheduleId": scheduleId,
	}
	context.JSON(http.StatusOK, dto.NewResponseResult(0, "成功", rsp))
}
