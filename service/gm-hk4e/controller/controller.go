package controller

import (
	"flswld.com/common/config"
	"flswld.com/light"
	waterAuth "flswld.com/water-api/auth"
	"github.com/gin-gonic/gin"
	"net/http"
	"strconv"
	"strings"
)

type Controller struct {
	rpcWaterAuthConsumer   *light.Consumer
	rpcHk4eGatewayConsumer *light.Consumer
}

func NewController(rpcWaterAuthConsumer *light.Consumer, rpcHk4eGatewayConsumer *light.Consumer) (r *Controller) {
	r = new(Controller)
	r.rpcWaterAuthConsumer = rpcWaterAuthConsumer
	r.rpcHk4eGatewayConsumer = rpcHk4eGatewayConsumer
	go r.registerRouter()
	return r
}

func (c *Controller) getAccessToken(context *gin.Context) string {
	accessToken := context.GetHeader("Authorization")
	divIndex := strings.Index(accessToken, " ")
	if divIndex > 0 {
		payload := accessToken[divIndex+1:]
		return payload
	} else {
		return ""
	}
}

// access_token鉴权
func (c *Controller) authorize() gin.HandlerFunc {
	return func(context *gin.Context) {
		valid, err := waterAuth.WaterVerifyAccessToken(c.rpcWaterAuthConsumer, c.getAccessToken(context))
		if err == nil && valid == true {
			// 验证通过
			context.Next()
			return
		}
		// 验证不通过
		context.Abort()
		context.JSON(http.StatusOK, gin.H{
			"code": "10001",
			"msg":  "没有访问权限",
		})
	}
}

func (c *Controller) registerRouter() {
	if config.CONF.Logger.Level == "DEBUG" {
		gin.SetMode(gin.DebugMode)
	} else {
		gin.SetMode(gin.ReleaseMode)
	}
	engine := gin.Default()
	// gacha
	engine.GET("/gm/gacha", c.gacha)
	engine.GET("/gm/gacha/details", c.gachaDetails)
	engine.Use(c.authorize())
	// gate
	engine.POST("/gm/gate/state", c.changeGateState)
	engine.POST("/gm/gate/kick", c.kickPlayer)
	engine.GET("/gm/gate/online", c.getOnlineUser)
	engine.POST("/gm/gate/forbid", c.forbidUser)
	engine.POST("/gm/gate/forbid/cancel", c.unForbidUser)
	port := strconv.FormatInt(int64(config.CONF.HttpPort), 10)
	portStr := ":" + port
	_ = engine.Run(portStr)
}
