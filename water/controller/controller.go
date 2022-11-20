package controller

import (
	"flswld.com/common/config"
	"github.com/gin-gonic/gin"
	"net/http"
	"strconv"
	"strings"
	"water/service"
)

type Controller struct {
	service *service.Service
}

func NewController(service *service.Service) (r *Controller) {
	r = new(Controller)
	r.service = service
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
		valid := c.service.VerifyAccessToken(c.getAccessToken(context))
		if valid == true {
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
	// 非认证接口
	engine.POST("/auth/login", c.login)
	engine.POST("/auth/refresh", c.refreshToken)
	engine.Use(c.authorize())
	// 认证接口
	engine.GET("/auth/test", c.authTest)
	// 获取内存token
	//engine.POST("/oauth/token", c.getMemoryToken)
	// 验证内存token
	//engine.POST("/oauth/check_token", c.checkMemoryToken)
	port := strconv.FormatInt(int64(config.CONF.HttpPort), 10)
	portStr := ":" + port
	_ = engine.Run(portStr)
}
