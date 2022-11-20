package controller

import (
	"annie-user/service"
	"flswld.com/common/config"
	"flswld.com/light"
	waterAuth "flswld.com/water-api/auth"
	"github.com/gin-gonic/gin"
	"net/http"
	"strconv"
	"strings"
)

type Controller struct {
	service                *service.Service
	rpcWaterAuthConsumer   *light.Consumer
	rpcHk4eGatewayConsumer *light.Consumer
}

func NewController(service *service.Service, rpcWaterAuthConsumer *light.Consumer, rpcHk4eGatewayConsumer *light.Consumer) (r *Controller) {
	r = new(Controller)
	r.service = service
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
	// 未认证接口
	engine.POST("/user/reg", c.userRegister)
	engine.Use(c.authorize())
	// 认证接口
	engine.POST("/user/update/pwd", c.userUpdatePassword)
	// 管理员
	admin := engine.Group("/user/admin")
	{
		admin.GET("/query/user", c.queryUserByUsername)
	}
	port := strconv.FormatInt(int64(config.CONF.HttpPort), 10)
	portStr := ":" + port
	_ = engine.Run(portStr)
}
