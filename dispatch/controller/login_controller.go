package controller

import (
	"encoding/base64"
	"encoding/json"
	"net/http"
	"regexp"
	"strconv"
	"strings"

	appConfig "hk4e/common/config"
	"hk4e/dispatch/api"
	db "hk4e/dispatch/model"
	"hk4e/pkg/endec"
	"hk4e/pkg/httpclient"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"

	"github.com/gin-gonic/gin"
)

type SdkUserLoginReq struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

type SdkUserLoginRsp struct {
	Code         int32  `json:"code"`
	Msg          string `json:"msg"`
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
	Data         struct {
		Uid      int32  `json:"uid"`
		Username string `json:"username"`
	} `json:"data"`
}

func (c *Controller) apiLogin(context *gin.Context) {
	requestData := new(api.LoginAccountRequestJson)
	err := context.ShouldBindJSON(requestData)
	if err != nil {
		logger.LOG.Error("parse LoginAccountRequestJson error: %v", err)
		return
	}

	encPwdData, err := base64.StdEncoding.DecodeString(requestData.Password)
	if err != nil {
		logger.LOG.Error("decode password enc data error: %v", err)
		return
	}
	pwdPrivKey, err := endec.RsaParsePrivKey(c.pwdRsaKey)
	if err != nil {
		logger.LOG.Error("parse rsa key error: %v", err)
		return
	}
	pwdDecData, err := endec.RsaDecrypt(encPwdData, pwdPrivKey)
	useAtAtMode := false
	if err != nil {
		logger.LOG.Debug("rsa dec error: %v", err)
		logger.LOG.Debug("password rsa dec fail, fallback to @@ mode")
		useAtAtMode = true
	} else {
		logger.LOG.Debug("password dec: %v", string(pwdDecData))
		useAtAtMode = false
	}

	responseData := api.NewLoginResult()

	var username string
	var password string
	if useAtAtMode {
		// 账号格式检查 用户名6-20字符 密码8-20字符 用户名和密码公用account字段 第一次出现的@@视为分割标识 username@@password
		if len(requestData.Account) > 20+20+2 {
			responseData.Retcode = -201
			responseData.Message = "用户名或密码长度超限"
			context.JSON(http.StatusOK, responseData)
			return
		}
		if !strings.Contains(requestData.Account, "@@") {
			responseData.Retcode = -201
			responseData.Message = "用户名同密码均填写到用户名输入框，填写格式为：用户名@@密码，密码输入框填写任意字符均可"
			context.JSON(http.StatusOK, responseData)
			return
		}
		atIndex := strings.Index(requestData.Account, "@@")
		username = requestData.Account[:atIndex]
		password = requestData.Account[atIndex+2:]
	} else {
		username = requestData.Account
		password = string(pwdDecData)
	}

	if len(username) < 6 || len(username) > 20 {
		responseData.Retcode = -201
		responseData.Message = "用户名为6-20位字符"
		context.JSON(http.StatusOK, responseData)
		return
	}
	if len(password) < 8 || len(password) > 20 {
		responseData.Retcode = -201
		responseData.Message = "密码为8-20位字符"
		context.JSON(http.StatusOK, responseData)
		return
	}
	ok, err := regexp.MatchString("^[a-zA-Z0-9]{6,20}$", username)
	if err != nil || !ok {
		responseData.Retcode = -201
		responseData.Message = "用户名只能包含大小写字母和数字"
		context.JSON(http.StatusOK, responseData)
		return
	}
	// SDK账号登陆
	sdkUserLoginRsp, err := httpclient.Post[SdkUserLoginRsp](appConfig.CONF.Hk4e.LoginSdkUrl, &SdkUserLoginReq{
		Username: username,
		Password: password,
	}, "")
	// TODO 测试账号
	{
		sdkUserLoginRsp = &SdkUserLoginRsp{
			Code:         0,
			Msg:          "",
			AccessToken:  "",
			RefreshToken: "",
			Data: struct {
				Uid      int32  `json:"uid"`
				Username string `json:"username"`
			}{
				Uid:      267042405,
				Username: "FlourishingWorld",
			},
		}
		err = nil
	}
	if err != nil {
		responseData.Retcode = -201
		responseData.Message = "服务器内部错误:-1"
		context.JSON(http.StatusOK, responseData)
		return
	}
	if sdkUserLoginRsp.Code != 0 {
		responseData.Retcode = -201
		responseData.Message = sdkUserLoginRsp.Msg
		context.JSON(http.StatusOK, responseData)
		return
	}
	// 登录成功
	account, err := c.dao.QueryAccountByField("username", username)
	if err != nil {
		logger.LOG.Error("query account from db error: %v", err)
		return
	}
	if account == nil {
		// 注册一个原神account
		playerID, err := c.dao.GetNextYuanShenUid()
		if err != nil {
			responseData.Retcode = -201
			responseData.Message = "服务器内部错误:-2"
			context.JSON(http.StatusOK, responseData)
			return
		}
		regAccount := &db.Account{
			Uid:        uint64(sdkUserLoginRsp.Data.Uid),
			Username:   username,
			PlayerID:   playerID,
			Token:      base64.StdEncoding.EncodeToString(random.GetRandomByte(24)),
			ComboToken: "",
		}
		_, err = c.dao.InsertAccount(regAccount)
		if err != nil {
			responseData.Retcode = -201
			responseData.Message = "服务器内部错误:-3"
			context.JSON(http.StatusOK, responseData)
			return
		}
		responseData.Message = "OK"
		responseData.Data.Account.Uid = strconv.FormatInt(int64(regAccount.Uid), 10)
		responseData.Data.Account.Token = regAccount.Token
		responseData.Data.Account.Email = regAccount.Username
	} else {
		// 生产新的token
		account.Token = base64.StdEncoding.EncodeToString(random.GetRandomByte(24))
		_, err := c.dao.UpdateAccountFieldByFieldName("uid", account.Uid, "token", account.Token)
		if err != nil {
			responseData.Retcode = -201
			responseData.Message = "服务器内部错误:-4"
			context.JSON(http.StatusOK, responseData)
			return
		}
		responseData.Message = "OK"
		responseData.Data.Account.Uid = strconv.FormatInt(int64(account.Uid), 10)
		responseData.Data.Account.Token = account.Token
		responseData.Data.Account.Email = account.Username
	}
	context.JSON(http.StatusOK, responseData)
}

func (c *Controller) apiVerify(context *gin.Context) {
	requestData := new(api.LoginTokenRequest)
	err := context.ShouldBindJSON(requestData)
	if err != nil {
		logger.LOG.Error("parse LoginTokenRequest error: %v", err)
		return
	}
	uid, err := strconv.ParseInt(requestData.Uid, 10, 64)
	if err != nil {
		logger.LOG.Error("parse uid error: %v", err)
		return
	}
	account, err := c.dao.QueryAccountByField("uid", uid)
	if err != nil {
		logger.LOG.Error("query account from db error: %v", err)
		return
	}
	responseData := api.NewLoginResult()
	if account == nil || account.Token != requestData.Token {
		responseData.Retcode = -111
		responseData.Message = "账号本地缓存信息错误"
		context.JSON(http.StatusOK, responseData)
		return
	}
	responseData.Message = "OK"
	responseData.Data.Account.Uid = requestData.Uid
	responseData.Data.Account.Token = requestData.Token
	responseData.Data.Account.Email = account.Username
	context.JSON(http.StatusOK, responseData)
}

func (c *Controller) v2Login(context *gin.Context) {
	requestData := new(api.ComboTokenReq)
	err := context.ShouldBindJSON(requestData)
	if err != nil {
		logger.LOG.Error("parse ComboTokenReq error: %v", err)
		return
	}
	data := requestData.Data
	if len(data) == 0 {
		logger.LOG.Error("requestData.Data len == 0")
		return
	}
	loginData := new(api.LoginTokenData)
	err = json.Unmarshal([]byte(data), loginData)
	if err != nil {
		logger.LOG.Error("Unmarshal LoginTokenData error: %v", err)
		return
	}
	uid, err := strconv.ParseInt(loginData.Uid, 10, 64)
	if err != nil {
		logger.LOG.Error("ParseInt uid error: %v", err)
		return
	}
	responseData := api.NewComboTokenRes()
	account, err := c.dao.QueryAccountByField("uid", uid)
	if account == nil || account.Token != loginData.Token {
		responseData.Retcode = -201
		responseData.Message = "token错误"
		context.JSON(http.StatusOK, responseData)
		return
	}
	// 生成新的comboToken
	account.ComboToken = random.GetRandomByteHexStr(20)
	_, err = c.dao.UpdateAccountFieldByFieldName("uid", account.Uid, "comboToken", account.ComboToken)
	if err != nil {
		responseData.Retcode = -201
		responseData.Message = "服务器内部错误:-1"
		context.JSON(http.StatusOK, responseData)
		return
	}
	responseData.Message = "OK"
	responseData.Data.OpenID = loginData.Uid
	responseData.Data.ComboID = "0"
	responseData.Data.ComboToken = account.ComboToken
	context.JSON(http.StatusOK, responseData)
}
