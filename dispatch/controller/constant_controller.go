package controller

import (
	"fmt"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

// 返回固定数据

// GET https://hk4e-sdk-os.hoyoverse.com/hk4e_global/mdk/agreement/api/getAgreementInfos?biz_key=hk4e_global&country_code=CN&token=ZXN2RfKSVOLRBMsqQeHaSwL7gQYfUp1d&uid=222546880 HTTP/1.1
func (c *Controller) getAgreementInfos(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"marketing_agreements\":[]}}")
}

// POST https://hk4e-sdk-os.hoyoverse.com/hk4e_global/combo/granter/api/compareProtocolVersion? HTTP/1.1
func (c *Controller) postCompareProtocolVersion(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"modified\":true,\"protocol\":{\"id\":0,\"app_id\":4,\"language\":\"zh-cn\",\"user_proto\":\"\",\"priv_proto\":\"\",\"major\":35,\"minimum\":0,\"create_time\":\"0\",\"teenager_proto\":\"\",\"third_proto\":\"\",\"full_priv_proto\":\"\"}}}")
}

// POST https://api-account-os.hoyoverse.com/account/risky/api/check? HTTP/1.1
// POST https://api-account-os.hoyoverse.com/account/risky/api/check HTTP/1.1
func (c *Controller) check(context *gin.Context) {
	context.Header("Content-type", "application/json")
	if strings.Contains(context.Request.RequestURI, "?") {
		// Windows
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"id\":\"c8820f246a5241ab9973f71df3ddd791\",\"action\":\"\",\"geetest\":{\"challenge\":\"\",\"gt\":\"\",\"new_captcha\":0,\"success\":1}}}")
	} else {
		// Android
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"id\":\"2b35f1421d4a4c7c9183184c6190027e\",\"action\":\"ACTION_GEETEST\",\"geetest\":{\"challenge\":\"616018607b6940f52fbd349004038686\",\"gt\":\"16bddce04c7385dbb7282778c29bba3e\",\"new_captcha\":1,\"success\":1}}}")
	}
}

// GET https://sdk-os-static.hoyoverse.com/combo/box/api/config/sdk/combo?biz_key=hk4e_global&client_type=3 HTTP/1.1
// GET https://sdk-os-static.hoyoverse.com/combo/box/api/config/sdk/combo?biz_key=hk4e_global&client_type=2 HTTP/1.1
// GET https://sdk-os-static.hoyoverse.com/combo/box/api/config/sdk/combo?biz_key=hk4e_global&client_type=1 HTTP/1.1
func (c *Controller) combo(context *gin.Context) {
	context.Header("Content-type", "application/json")
	clientType := context.Query("client_type")
	switch clientType {
	case "3":
		// Windows
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"vals\":{\"disable_email_bind_skip\":\"false\",\"email_bind_remind_interval\":\"7\",\"network_report_config\":\"{ \\\"enable\\\": 1, \\\"status_codes\\\": [206], \\\"url_paths\\\": [\\\"dataUpload\\\"] }\",\"kibana_pc_config\":\"{ \\\"enable\\\": 1, \\\"level\\\": \\\"Info\\\",\\\"modules\\\": [\\\"download\\\"]\",\"kcp_enable\":\"false\",\"pay_payco_centered_host\":\"bill.payco.com\",\"list_price_tierv2_enable\":\"false\",\"email_bind_remind\":\"true\"}}}")
	case "2":
		// Android
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"vals\":{\"enable_bind_google_sdk_order\":\"false\",\"email_bind_remind_interval\":\"7\",\"email_bind_remind\":\"true\",\"list_price_tierv2_enable\":\"false\\n\",\" network_report_config\":\"{\\n        \\\"enable\\\": 1,\\n        \\\"status_codes\\\": [],\\n        \\\"url_paths\\\": [\\\"/dataUpload\\\",\\\"combo/postman/device/setAlias\\\"]\\n}\",\"enable_attribution\":\"true\",\"h5log_config\":\" { \\\"enable\\\": 1, \\\"level\\\": \\\"Debug\\\" } \",\"disable_email_bind_skip\":\"false\",\"report_black_list\":\"{\\\"key\\\":[\\\"download_update_progress\\\"]}\"}}}")
	case "1":
		// IOS
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"vals\":{\"enable_bind_google_sdk_order\":\"false\",\"email_bind_remind_interval\":\"7\",\"email_bind_remind\":\"true\",\"list_price_tierv2_enable\":\"false\\n\",\" network_report_config\":\"{\\n        \\\"enable\\\": 1,\\n        \\\"status_codes\\\": [],\\n        \\\"url_paths\\\": [\\\"/dataUpload\\\",\\\"combo/postman/device/setAlias\\\"]\\n}\",\"enable_attribution\":\"true\",\"h5log_config\":\" { \\\"enable\\\": 1, \\\"level\\\": \\\"Debug\\\" } \",\"disable_email_bind_skip\":\"false\",\"report_black_list\":\"{\\\"key\\\":[\\\"download_update_progress\\\"]}\"}}}")
	}
}

// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/combo/granter/api/getConfig?app_id=4&channel_id=1&client_type=3 HTTP/1.1
// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/combo/granter/api/getConfig?app_id=4&channel_id=1&client_type=2 HTTP/1.1
// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/combo/granter/api/getConfig?app_id=4&channel_id=1&client_type=1 HTTP/1.1
func (c *Controller) getConfig(context *gin.Context) {
	context.Header("Content-type", "application/json")
	clientType := context.Query("client_type")
	switch clientType {
	case "3":
		// Windows
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"protocol\":true,\"qr_enabled\":false,\"log_level\":\"INFO\",\"announce_url\":\"https://webstatic-sea.hoyoverse.com/hk4e/announcement/index.html?sdk_presentation_style=fullscreen\\u0026sdk_screen_transparent=true\\u0026game_biz=hk4e_global\\u0026auth_appid=announcement\\u0026game=hk4e#/\",\"push_alias_type\":2,\"disable_ysdk_guard\":false,\"enable_announce_pic_popup\":true}}")
	case "2", "1":
		// Android IOS
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"protocol\":true,\"qr_enabled\":false,\"log_level\":\"INFO\",\"announce_url\":\"https://sdk.hoyoverse.com/hk4e/announcement/index.html?sdk_presentation_style=fullscreen\\u0026announcement_version=1.21\\u0026sdk_screen_transparent=true\\u0026game_biz=hk4e_global\\u0026auth_appid=announcement\\u0026game=hk4e#/\",\"push_alias_type\":2,\"disable_ysdk_guard\":false,\"enable_announce_pic_popup\":true,\"app_name\":\"原神海外\",\"qr_enabled_apps\":null,\"qr_app_icons\":null,\"qr_cloud_display_name\":\"\",\"enable_user_center\":true}}")
	}
}

// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/mdk/shield/api/loadConfig?client=3&game_key=hk4e_global HTTP/1.1
// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/mdk/shield/api/loadConfig?client=2&game_key=hk4e_global HTTP/1.1
// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/mdk/shield/api/loadConfig?client=1&game_key=hk4e_global HTTP/1.1
func (c *Controller) loadConfig(context *gin.Context) {
	context.Header("Content-type", "application/json")
	clientType := context.Query("client")
	switch clientType {
	case "3":
		// Windows
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"id\":6,\"game_key\":\"hk4e_global\",\"client\":\"PC\",\"identity\":\"I_IDENTITY\",\"guest\":false,\"ignore_versions\":\"\",\"scene\":\"S_NORMAL\",\"name\":\"原神海外\",\"disable_regist\":false,\"enable_email_captcha\":false,\"thirdparty\":[\"fb\",\"tw\"],\"disable_mmt\":false,\"server_guest\":false,\"thirdparty_ignore\":{},\"enable_ps_bind_account\":false,\"thirdparty_login_configs\":{\"fb\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":2592000},\"tw\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":2592000}},\"initialize_firebase\":false,\"bbs_auth_login\":false,\"bbs_auth_login_ignore\":[]}}")
	case "2":
		// Android
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"id\":5,\"game_key\":\"hk4e_global\",\"client\":\"Android\",\"identity\":\"I_IDENTITY\",\"guest\":false,\"ignore_versions\":\"\",\"scene\":\"S_NORMAL\",\"name\":\"原神海外\",\"disable_regist\":false,\"enable_email_captcha\":false,\"thirdparty\":[\"gl\",\"fb\",\"tw\"],\"disable_mmt\":false,\"server_guest\":false,\"thirdparty_ignore\":{\"gl\":\"\",\"tw\":\"\",\"fb\":\"\"},\"enable_ps_bind_account\":false,\"thirdparty_login_configs\":{\"tw\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":2592000},\"fb\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":2592000},\"gl\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":604800}},\"initialize_firebase\":false,\"bbs_auth_login\":false,\"bbs_auth_login_ignore\":[]}}")
	case "1":
		// IOS
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"id\":4,\"game_key\":\"hk4e_global\",\"client\":\"IOS\",\"identity\":\"I_IDENTITY\",\"guest\":false,\"ignore_versions\":\"\",\"scene\":\"S_NORMAL\",\"name\":\"原神海外\",\"disable_regist\":false,\"enable_email_captcha\":false,\"thirdparty\":[\"ap\",\"fb\",\"tw\",\"gc\"],\"disable_mmt\":false,\"server_guest\":false,\"thirdparty_ignore\":{\"ap\":\"\",\"fb\":\"\",\"gc\":\"\",\"tw\":\"\"},\"enable_ps_bind_account\":false,\"thirdparty_login_configs\":{\"gc\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":604800},\"tw\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":2592000},\"ap\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":604800},\"fb\":{\"token_type\":\"TK_GAME_TOKEN\",\"game_token_expires_in\":2592000}},\"initialize_firebase\":true,\"bbs_auth_login\":false,\"bbs_auth_login_ignore\":[]}}")
	}
}

// POST https://abtest-api-data-sg.hoyoverse.com/data_abtest_api/config/experiment/list HTTP/1.1
func (c *Controller) list(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"retcode\":0,\"success\":true,\"message\":\"\",\"data\":[{\"code\":1000,\"type\":2,\"config_id\":\"14\",\"period_id\":\"6036_99\",\"version\":\"1\",\"configs\":{\"cardType\":\"old\"}}]}")
}

// GET https://public-data-api.mihoyo.com/device-fp/api/getExtList?platform=3 HTTP/1.1
// GET https://public-data-api.mihoyo.com/device-fp/api/getExtList?platform=2 HTTP/1.1
// GET https://public-data-api.mihoyo.com/device-fp/api/getExtList?platform=1 HTTP/1.1
func (c *Controller) deviceExtList(context *gin.Context) {
	context.Header("Content-type", "application/json")
	platformType := context.Query("platform")
	switch platformType {
	case "3":
		// Windows
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"code\":200,\"msg\":\"ok\",\"ext_list\":[\"cpuName\",\"deviceModel\",\"deviceName\",\"deviceType\",\"deviceUID\",\"gpuID\",\"gpuName\",\"gpuAPI\",\"gpuVendor\",\"gpuVersion\",\"gpuMemory\",\"osVersion\",\"cpuCores\",\"cpuFrequency\",\"gpuVendorID\",\"isGpuMultiTread\",\"memorySize\",\"screenSize\",\"engineName\",\"addressMAC\"],\"pkg_list\":[]}}")
	case "2":
		// Android
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"code\":200,\"msg\":\"ok\",\"ext_list\":[\"oaid\",\"vaid\",\"aaid\",\"serialNumber\",\"board\",\"brand\",\"hardware\",\"cpuType\",\"deviceType\",\"display\",\"hostname\",\"manufacturer\",\"productName\",\"model\",\"deviceInfo\",\"sdkVersion\",\"osVersion\",\"devId\",\"buildTags\",\"buildType\",\"buildUser\",\"buildTime\",\"screenSize\",\"vendor\",\"romCapacity\",\"romRemain\",\"ramCapacity\",\"ramRemain\",\"appMemory\",\"accelerometer\",\"gyroscope\",\"magnetometer\"],\"pkg_list\":[\"com.miHoYo.GenshinImpact\",\"com.miHoYo.Yuanshen\",\"com.miHoYo.enterprise.HK4E\",\"com.miHoYo.enterprise.HK4E2\",\"com.miHoYo.genshinimpactcb\",\"com.miHoYo.yuanshencb\",\"com.miHoYo.bh3global\",\"com.miHoYo.bh3globalBeta\",\"com.miHoYo.bh3korea\",\"com.miHoYo.bh3korea.samsung\",\"com.miHoYo.bh3korea_beta\",\"com.miHoYo.bh3oversea\",\"com.miHoYo.bh3oversea.huawei\",\"com.miHoYo.bh3overseaBeta\",\"com.miHoYo.bh3rdJP\",\"com.miHoYo.bh3tw\",\"com.miHoYo.bh3twbeta\",\"com.miHoYo.bh3twmycard\",\"com.miHoYo.enterprise.NGHSoD\",\"com.miHoYo.enterprise.NGHSoDBak\",\"com.miHoYo.enterprise.NGHSoDBeta\",\"com.miHoYo.enterprise.NGHSoDQD\",\"com.miHoYo.HSoDv2.mix\",\"com.miHoYo.HSoDv2Beta\",\"com.miHoYo.HSoDv2Original\",\"com.miHoYo.HSoDv2OriginalENT\",\"com.miHoYo.tot.cht\",\"com.miHoYo.tot.glb\",\"com.miHoYo.wd\",\"com.miHoYo.cloudgames.ys\",\"com.miHoYo.cloudgames.ys.dev\",\"com.mihoyo.cloudgame\",\"com.mihoyo.cloudgamedev\",\"com.HoYoverse.enterprise.hkrpgoversea\",\"com.HoYoverse.hkrpgoversea\",\"com.HoYoverse.hkrpgoverseacbtest\",\"com.miHoYo.enterprise.hkrpg\",\"com.miHoYo.hkrpg\",\"com.miHoYo.hkrpgcb\",\"com.miHoYo.hkrpgoverseacb\"]}}")
	case "1":
		// IOS
		_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"code\":200,\"msg\":\"ok\",\"ext_list\":[\"IDFV\",\"model\",\"osVersion\",\"screenSize\",\"vendor\",\"cpuType\",\"cpuCores\",\"isJailBreak\",\"networkType\",\"proxyStatus\",\"batteryStatus\",\"chargeStatus\",\"romCapacity\",\"romRemain\",\"ramCapacity\",\"ramRemain\",\"appMemory\",\"accelerometer\",\"gyroscope\",\"magnetometer\"],\"pkg_list\":[]}}")
	}
}

// POST https://public-data-api.mihoyo.com/device-fp/api/getFp HTTP/1.1
func (c *Controller) deviceFp(context *gin.Context) {
	context.Header("Content-type", "application/json")
	deviceFp := context.Query("device_fp")
	_, _ = context.Writer.WriteString(fmt.Sprintf("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"device_fp\":\"%v\",\"code\":200,\"msg\":\"ok\"}}", deviceFp))
}

// Android

// POST https://minor-api-os.hoyoverse.com/common/h5log/log/batch?topic=plat_explog_sdk_v2 HTTP/1.1
func (c *Controller) batch(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"success\",\"data\":null}")
}

// GET https://hk4e-sdk-os-static.hoyoverse.com/hk4e_global/combo/granter/api/getFont?app_id=4 HTTP/1.1
func (c *Controller) getFont(context *gin.Context) {
	context.Header("Content-type", "application/json")
	_, _ = context.Writer.WriteString("{\"retcode\":0,\"message\":\"OK\",\"data\":{\"fonts\":[]}}")
}

// GT

// GET https://account.hoyoverse.com/geetestV2.html HTTP/1.1
func (c *Controller) gtGeetestV2(context *gin.Context) {
	context.Header("Content-type", "text/html")
	_, _ = context.Writer.WriteString("<!DOCTYPE html><html lang=\"en\"><head></head><body></body></html>")
}

// Android GT

// GET https://static.geetest.com/favicon.ico HTTP/1.1
func (c *Controller) gtFaviconIco(context *gin.Context) {
	context.Header("Content-type", "image/x-icon")
	context.Status(http.StatusOK)
}

// GET https://api-na.geetest.com/gettype.php?gt=16bddce04c7385dbb7282778c29bba3e&t=1651516373584 HTTP/1.1
func (c *Controller) gtGetType(context *gin.Context) {
	context.Header("Content-type", "text/javascript;charset=UTF-8")
	_, _ = context.Writer.WriteString("({\"status\": \"success\", \"data\": {\"type\": \"fullpage\", \"static_servers\": [\"static.geetest.com/\", \"dn-staticdown.qbox.me/\"], \"click\": \"/static/js/click.3.0.4.js\", \"pencil\": \"/static/js/pencil.1.0.3.js\", \"voice\": \"/static/js/voice.1.2.0.js\", \"fullpage\": \"/static/js/fullpage.9.0.9.js\", \"beeline\": \"/static/js/beeline.1.0.1.js\", \"slide\": \"/static/js/slide.7.8.6.js\", \"geetest\": \"/static/js/geetest.6.0.9.js\", \"aspect_radio\": {\"slide\": 103, \"click\": 128, \"voice\": 128, \"pencil\": 128, \"beeline\": 50}}})")
}

// GET https://api-na.geetest.com/get.php?gt=16bddce04c7385dbb7282778c29bba3e&challenge=616018607b6940f52fbd349004038686&client_type=android&lang=zh-CN&client_type=android&pt=20&w=SVBBNggmYQj5x34VNcTu9ToZ%2F936VslgWYPwRMBw4J56VYFRpL%2FLI79YW6Xz84H6Vq8HDjXFH5Mp%0APS2PkdDEXQ%3D%3D%0A HTTP/1.1
// GET https://api-na.geetest.com/get.php?is_next=true&mobile=true&product=embed&width=100%25&https=true&gt=16bddce04c7385dbb7282778c29bba3e&challenge=616018607b6940f52fbd349004038686&lang=zh-CN&type=slide3&api_server=api-na.geetest.com&timeout=10000&aspect_radio_voice=128&aspect_radio_slide=103&aspect_radio_beeline=50&aspect_radio_pencil=128&aspect_radio_click=128&voice=%2Fstatic%2Fjs%2Fvoice.1.2.0.js&beeline=%2Fstatic%2Fjs%2Fbeeline.1.0.1.js&pencil=%2Fstatic%2Fjs%2Fpencil.1.0.3.js&click=%2Fstatic%2Fjs%2Fclick.3.0.4.js&callback=geetest_1651516382362 HTTP/1.1
func (c *Controller) gtGet(context *gin.Context) {
	context.Header("Content-type", "text/javascript;charset=UTF-8")
	callback := context.Query("callback")
	if len(callback) == 0 {
		_, _ = context.Writer.WriteString("({\"status\": \"success\", \"data\": {\"theme\": \"wind\", \"theme_version\": \"1.5.8\", \"static_servers\": [\"static.geetest.com\", \"dn-staticdown.qbox.me\"], \"api_server\": \"api-na.geetest.com\", \"logo\": false, \"feedback\": \"\", \"c\": [12, 58, 98, 36, 43, 95, 62, 15, 12], \"s\": \"4958632c\", \"i18n_labels\": {\"copyright\": \"\\u7531\\u6781\\u9a8c\\u63d0\\u4f9b\\u6280\\u672f\\u652f\\u6301\", \"error\": \"\\u7f51\\u7edc\\u4e0d\\u7ed9\\u529b\", \"error_content\": \"\\u8bf7\\u70b9\\u51fb\\u6b64\\u5904\\u91cd\\u8bd5\", \"error_title\": \"\\u7f51\\u7edc\\u8d85\\u65f6\", \"fullpage\": \"\\u667a\\u80fd\\u68c0\\u6d4b\\u4e2d\", \"goto_cancel\": \"\\u53d6\\u6d88\", \"goto_confirm\": \"\\u524d\\u5f80\", \"goto_homepage\": \"\\u662f\\u5426\\u524d\\u5f80\\u9a8c\\u8bc1\\u670d\\u52a1Geetest\\u5b98\\u7f51\", \"loading_content\": \"\\u667a\\u80fd\\u9a8c\\u8bc1\\u68c0\\u6d4b\\u4e2d\", \"next\": \"\\u6b63\\u5728\\u52a0\\u8f7d\\u9a8c\\u8bc1\", \"next_ready\": \"\\u8bf7\\u5b8c\\u6210\\u9a8c\\u8bc1\", \"read_reversed\": false, \"ready\": \"\\u70b9\\u51fb\\u6309\\u94ae\\u8fdb\\u884c\\u9a8c\\u8bc1\", \"refresh_page\": \"\\u9875\\u9762\\u51fa\\u73b0\\u9519\\u8bef\\u5566\\uff01\\u8981\\u7ee7\\u7eed\\u64cd\\u4f5c\\uff0c\\u8bf7\\u5237\\u65b0\\u6b64\\u9875\\u9762\", \"reset\": \"\\u8bf7\\u70b9\\u51fb\\u91cd\\u8bd5\", \"success\": \"\\u9a8c\\u8bc1\\u6210\\u529f\", \"success_title\": \"\\u901a\\u8fc7\\u9a8c\\u8bc1\"}}})")
	} else {
		_, _ = context.Writer.WriteString(callback + "({\"gt\": \"16bddce04c7385dbb7282778c29bba3e\", \"challenge\": \"616018607b6940f52fbd349004038686is\", \"id\": \"a616018607b6940f52fbd349004038686\", \"bg\": \"pictures/gt/a330cf996/bg/86f9db021.jpg\", \"fullbg\": \"pictures/gt/a330cf996/a330cf996.jpg\", \"link\": \"\", \"ypos\": 56, \"xpos\": 0, \"height\": 160, \"slice\": \"pictures/gt/a330cf996/slice/86f9db021.png\", \"api_server\": \"https://api-na.geetest.com/\", \"static_servers\": [\"static.geetest.com/\", \"dn-staticdown.qbox.me/\"], \"mobile\": true, \"theme\": \"ant\", \"theme_version\": \"1.2.6\", \"template\": \"\", \"logo\": false, \"clean\": false, \"type\": \"multilink\", \"fullpage\": false, \"feedback\": \"\", \"show_delay\": 250, \"hide_delay\": 800, \"benchmark\": false, \"version\": \"6.0.9\", \"product\": \"embed\", \"https\": true, \"width\": \"100%\", \"c\": [12, 58, 98, 36, 43, 95, 62, 15, 12], \"s\": \"6c722c65\", \"so\": 0, \"i18n_labels\": {\"cancel\": \"\\u53d6\\u6d88\", \"close\": \"\\u5173\\u95ed\\u9a8c\\u8bc1\", \"error\": \"\\u8bf7\\u91cd\\u8bd5\", \"fail\": \"\\u8bf7\\u6b63\\u786e\\u62fc\\u5408\\u56fe\\u50cf\", \"feedback\": \"\\u5e2e\\u52a9\\u53cd\\u9988\", \"forbidden\": \"\\u602a\\u7269\\u5403\\u4e86\\u62fc\\u56fe\\uff0c\\u8bf7\\u91cd\\u8bd5\", \"loading\": \"\\u52a0\\u8f7d\\u4e2d...\", \"logo\": \"\\u7531\\u6781\\u9a8c\\u63d0\\u4f9b\\u6280\\u672f\\u652f\\u6301\", \"read_reversed\": false, \"refresh\": \"\\u5237\\u65b0\\u9a8c\\u8bc1\", \"slide\": \"\\u62d6\\u52a8\\u6ed1\\u5757\\u5b8c\\u6210\\u62fc\\u56fe\", \"success\": \"sec \\u79d2\\u7684\\u901f\\u5ea6\\u8d85\\u8fc7 score% \\u7684\\u7528\\u6237\", \"tip\": \"\\u8bf7\\u5b8c\\u6210\\u4e0b\\u65b9\\u9a8c\\u8bc1\", \"voice\": \"\\u89c6\\u89c9\\u969c\\u788d\"}, \"gct_path\": \"/static/js/gct.e7810b5b525994e2fb1f89135f8df14a.js\"})")
	}
}

// POST https://api-na.geetest.com/ajax.php?gt=16bddce04c7385dbb7282778c29bba3e&challenge=616018607b6940f52fbd349004038686&client_type=android&lang=zh-CN HTTP/1.1
// GET https://api-na.geetest.com/ajax.php?gt=16bddce04c7385dbb7282778c29bba3e&challenge=616018607b6940f52fbd349004038686is&lang=zh-CN&%24_BBF=3&client_type=web_mobile&w=PfYYA2GvlGseUHihdCmj)zaqrm25077bIOmGUGPIE9iZeyx(T)h29Wi5lCT0NnfqqmFbrfAey3fhYJPxTbEKFOufaGHcSWdzt9Yl6bhmRN1cAwJdMP1qGKbj9SaJ0O4BKqpug6XnYg76akehubqBadKqJHV(Ns8qs6b860IBfFr80xOLZaE5rxf3nKxbF49Hgi25jXIptXp5XCqfkK1alQiK0L(5k4lxKYQU1om)VpUT8QZoHsCNbb38v3Hg75rhcufPzlVMEXz81QbdUyewvMc0RETPTQoKT6yiHFDs81JAwUIXuPkESUNdThU(cVINr5mQugprlBdLniFKKpHdI4ll)F4JvbZjFrDZOU5JV)MsQ2r2gfr(8GVseuZxEy32L(9KI8vwCS(6I50MPPUK2MxmovU5CtqmlaPHbNIVYYTQpRrvteXTz6CNipIBb1J0ntaVERBD90Cb)wDNenv3bDbeFgtT8J5MqZXEYItUG5CsbLjf)eEZQrfxw6FZz3sB5ojzdjal(uw4XIjsCG9s3Z4Jzden8uB0yIJy4Zr(ZoO47)tCvqRsKNF(RgXadSj9tJDjP74p9Kg2dBO95(BRABSKBJe1DJkK9WgomUomOXmS0Dfg)d9N6svt0IZC47XpiLk(600fHQiHXhLRZveCuVbARzk9vsY1DfI4PvcQjHmt6dyPR8xhVp91agaK)wJ3f5CXs(hEAFtDIBsp4LIqt6FWe3)BNvMSl1Is(289vQLbGA1Fch4Y8Yju871Z4FpUhDTu)5EuqVUSB2I9okGM9sLusQxBCuRzJrYv61AU0GmxEfpOG0Wot3QZCIQtvOgHC)3BWgnH2r63)D9QsJioreDm8XXOVT3WaBpfBFZ6h9Sfa03)RNIAsFj)xCy4XlvU8d40873cdf12703609069897655331054c1e221a1578dac4a87711be90588f6709f07a05722392de452d8923508015d7241ec139a06eae32dc63263269e81d37297db69e21df57aeae15d9f57fb93846a083821bafc4e5d4eaa2d904e8e233cddfac0d94989af753680d09e4360f1ce4088172829608e5139862ae5ec7c5ec6f&callback=geetest_1651516385963 HTTP/1.1
func (c *Controller) gtAjax(context *gin.Context) {
	context.Header("Content-type", "text/javascript;charset=UTF-8")
	callback := context.Query("callback")
	if len(callback) == 0 {
		_, _ = context.Writer.WriteString("{\"status\": \"success\", \"data\": {\"result\": \"slide\"}}")
	} else {
		_, _ = context.Writer.WriteString(callback + "({\"success\": 1, \"message\": \"success\", \"validate\": \"af90d1ba691970f759a3c60c908c1499\", \"score\": \"1\"})")
	}
}
