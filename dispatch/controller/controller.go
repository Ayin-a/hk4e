package controller

import (
	"context"
	"net/http"
	"strconv"

	"hk4e/common/config"
	"hk4e/common/region"
	"hk4e/common/rpc"
	"hk4e/dispatch/dao"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"

	"github.com/gin-gonic/gin"
)

type Controller struct {
	dao          *dao.Dao
	discovery    *rpc.DiscoveryClient
	signRsaKey   []byte
	encRsaKeyMap map[string][]byte
	pwdRsaKey    []byte
	ec2b         *random.Ec2b
}

func NewController(dao *dao.Dao, discovery *rpc.DiscoveryClient) (r *Controller) {
	r = new(Controller)
	r.dao = dao
	r.discovery = discovery
	r.signRsaKey, r.encRsaKeyMap, r.pwdRsaKey = region.LoadRsaKey()
	rsp, err := r.discovery.GetRegionEc2B(context.TODO(), &api.NullMsg{})
	if err != nil {
		logger.Error("get region ec2b error: %v", err)
		return nil
	}
	ec2b, err := random.LoadEc2bKey(rsp.Data)
	if err != nil {
		logger.Error("parse region ec2b error: %v", err)
		return nil
	}
	r.ec2b = ec2b
	go r.registerRouter()
	return r
}

func (c *Controller) authorize() gin.HandlerFunc {
	return func(context *gin.Context) {
		if context.Query("key") == "flswld" {
			context.Next()
			return
		}
		context.Abort()
		context.JSON(http.StatusOK, gin.H{
			"code": "10001",
			"msg":  "没有访问权限",
		})
	}
}

func (c *Controller) registerRouter() {
	if config.GetConfig().Logger.Level == "DEBUG" {
		gin.SetMode(gin.DebugMode)
	} else {
		gin.SetMode(gin.ReleaseMode)
	}
	engine := gin.Default()
	{
		// 404
		engine.NoRoute(func(context *gin.Context) {
			logger.Info("no route find, fallback to fuck mhy, url: %v", context.Request.RequestURI)
			context.Header("Content-type", "text/html; charset=UTF-8")
			context.Status(http.StatusNotFound)
			_, _ = context.Writer.WriteString("FUCK MHY")
		})
	}
	{
		// 调度
		// dispatchosglobal.yuanshen.com
		engine.GET("/query_security_file", c.querySecurityFile)
		engine.GET("/query_region_list", c.queryRegionList)
		// osusadispatch.yuanshen.com
		engine.GET("/query_cur_region", c.queryCurRegion)
	}
	{
		// 登录
		// hk4e-sdk-os.hoyoverse.com
		// 账号登录
		engine.POST("/hk4e_:name/mdk/shield/api/login", c.apiLogin)
		// token登录
		engine.POST("/hk4e_:name/mdk/shield/api/verify", c.apiVerify)
		// 获取combo token
		engine.POST("/hk4e_:name/combo/granter/login/v2/login", c.v2Login)
	}
	{
		// 日志
		engine.POST("/sdk/dataUpload", c.sdkDataUpload)
		engine.GET("/perf/config/verify", c.perfConfigVerify)
		engine.POST("/perf/dataUpload", c.perfDataUpload)
		engine.POST("/log", c.log8888)
		engine.POST("/crash/dataUpload", c.crashDataUpload)
	}
	{
		// 收集数据
		engine.GET("/device-fp/api/getExtList", c.deviceExtList)
		engine.POST("/device-fp/api/getFp", c.deviceFp)
	}
	{
		// 返回固定数据
		// Windows
		engine.GET("/hk4e_:name/mdk/agreement/api/getAgreementInfos", c.getAgreementInfos)
		engine.POST("/hk4e_:name/combo/granter/api/compareProtocolVersion", c.postCompareProtocolVersion)
		engine.POST("/account/risky/api/check", c.check)
		engine.GET("/combo/box/api/config/sdk/combo", c.combo)
		engine.GET("/hk4e_:name/combo/granter/api/getConfig", c.getConfig)
		engine.GET("/hk4e_:name/mdk/shield/api/loadConfig", c.loadConfig)
		engine.POST("/data_abtest_api/config/experiment/list", c.list)
		// Android
		engine.POST("/common/h5log/log/batch", c.batch)
		engine.GET("/hk4e_:name/combo/granter/api/getFont", c.getFont)
	}
	{
		// 静态资源
		// GET https://webstatic-sea.hoyoverse.com/admin/mi18n/plat_oversea/m2020030410/m2020030410-version.json HTTP/1.1
		// GET https://webstatic-sea.hoyoverse.com/admin/mi18n/plat_oversea/m2020030410/m2020030410-zh-cn.json HTTP/1.1
		engine.StaticFS("/admin/mi18n/plat_oversea/m2020030410", http.Dir("./static/m2020030410"))
		// GET https://webstatic-sea.hoyoverse.com/admin/mi18n/plat_os/m09291531181441/m09291531181441-version.json HTTP/1.1
		// GET https://webstatic-sea.hoyoverse.com/admin/mi18n/plat_os/m09291531181441/m09291531181441-zh-cn.json HTTP/1.1
		engine.StaticFS("/admin/mi18n/plat_os/m09291531181441", http.Dir("./static/m09291531181441"))
		// GET https://webstatic-sea.hoyoverse.com/admin/mi18n/plat_oversea/m202003049/m202003049-version.json HTTP/1.1
		// GET https://webstatic-sea.hoyoverse.com/admin/mi18n/plat_oversea/m202003049/m202003049-zh-cn.json HTTP/1.1
		engine.StaticFS("/admin/mi18n/plat_oversea/m202003049", http.Dir("./static/m202003049"))
	}
	{
		// geetest
		engine.GET("/geetestV2.html", c.gtGeetestV2)
		// Android geetest
		engine.GET("/favicon.ico", c.gtFaviconIco)
		engine.GET("/gettype.php", c.gtGetType)
		engine.GET("/get.php", c.gtGet)
		engine.POST("/ajax.php", c.gtAjax)
		engine.GET("/ajax.php", c.gtAjax)
		// GET https://static.geetest.com/static/appweb/app3-index.html?gt=16bddce04c7385dbb7282778c29bba3e&challenge=616018607b6940f52fbd349004038686&lang=zh-CN&title=&type=slide&api_server=api-na.geetest.com&static_servers=static.geetest.com,%20dn-staticdown.qbox.me&width=100%&timeout=10000&debug=false&aspect_radio_voice=128&aspect_radio_slide=103&aspect_radio_beeline=50&aspect_radio_pencil=128&aspect_radio_click=128&voice=/static/js/voice.1.2.0.js&slide=/static/js/slide.7.8.6.js&beeline=/static/js/beeline.1.0.1.js&pencil=/static/js/pencil.1.0.3.js&click=/static/js/click.3.0.4.js HTTP/1.1
		// GET https://static.geetest.com/static/js/slide.7.8.6.js HTTP/1.1
		// GET https://static.geetest.com/static/js/gct.e7810b5b525994e2fb1f89135f8df14a.js HTTP/1.1
		// GET https://static.geetest.com/static/ant/style_https.1.2.6.css HTTP/1.1
		// GET https://static.geetest.com/pictures/gt/a330cf996/a330cf996.webp HTTP/1.1
		// GET https://static.geetest.com/pictures/gt/a330cf996/bg/86f9db021.webp HTTP/1.1
		// GET https://static.geetest.com/pictures/gt/a330cf996/slice/86f9db021.png HTTP/1.1
		// GET https://static.geetest.com/static/ant/sprite2x.1.2.6.png HTTP/1.1
		engine.StaticFS("/static", http.Dir("./static/geetest/static"))
		engine.StaticFS("/pictures", http.Dir("./static/geetest/pictures"))
	}
	engine.Use(c.authorize())
	engine.POST("/gate/token/verify", c.gateTokenVerify)
	port := config.GetConfig().HttpPort
	addr := ":" + strconv.Itoa(int(port))
	err := engine.Run(addr)
	if err != nil {
		logger.Error("gin run error: %v", err)
	}
}
