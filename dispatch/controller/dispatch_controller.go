package controller

import (
	"bytes"
	"encoding/base64"
	"math"
	"net/http"
	"os"
	"regexp"
	"strconv"

	"hk4e/common/region"
	httpapi "hk4e/dispatch/api"
	"hk4e/node/api"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"

	"github.com/gin-gonic/gin"
)

func (c *Controller) query_security_file(context *gin.Context) {
	// 很早以前2.6.0版本的时候抓包为了完美还原写的 不清楚有没有副作用暂时不要了
	return
	file, err := os.ReadFile("static/security_file")
	if err != nil {
		logger.Error("open security_file error")
		return
	}
	context.Header("Content-type", "text/html; charset=UTF-8")
	_, _ = context.Writer.WriteString(string(file))
}

func (c *Controller) query_region_list(context *gin.Context) {
	context.Header("Content-type", "text/html; charset=UTF-8")
	regionListBase64 := region.GetRegionListBase64(c.ec2b)
	_, _ = context.Writer.WriteString(regionListBase64)
}

func (c *Controller) getClientVersionByName(versionName string) (int, string) {
	reg, err := regexp.Compile("[0-9]+")
	if err != nil {
		logger.Error("compile regexp error: %v", err)
		return 0, ""
	}
	versionSlice := reg.FindAllString(versionName, -1)
	version := 0
	for index, value := range versionSlice {
		v, err := strconv.Atoi(value)
		if err != nil {
			logger.Error("parse client version error: %v", err)
			return 0, ""
		}
		if v >= 10 {
			// 测试版本
			if index != 2 {
				logger.Error("invalid client version")
				return 0, ""
			}
			v /= 10
		}
		for i := 0; i < 2-index; i++ {
			v *= 10
		}
		version += v
	}
	return version, strconv.Itoa(version)
}

func (c *Controller) query_cur_region(context *gin.Context) {
	rspError := func() {
		rspContentError := "CAESGE5vdCBGb3VuZCB2ZXJzaW9uIGNvbmZpZw=="
		rspSignError := "TW9yZSBsb3ZlIGZvciBVQSBQYXRjaCBwbGF5ZXJz"
		rsp := &httpapi.QueryCurRegionRspJson{
			Content: rspContentError,
			Sign:    rspSignError,
		}
		context.JSON(http.StatusOK, rsp)
	}
	versionName := context.Query("version")
	if versionName == "" {
		rspError()
		return
	}
	version, versionStr := c.getClientVersionByName(versionName)
	if version == 0 {
		rspError()
		return
	}
	addr, err := c.discovery.GetGateServerAddr(context.Request.Context(), &api.GetGateServerAddrReq{
		Version: versionStr,
	})
	if err != nil {
		logger.Error("get gate server addr error: %v", err)
		rspError()
		return
	}
	regionCurrBase64 := region.GetRegionCurrBase64(addr.IpAddr, int32(addr.Port), c.ec2b)
	if version < 275 {
		context.Header("Content-type", "text/html; charset=UTF-8")
		_, _ = context.Writer.WriteString(regionCurrBase64)
		return
	}
	logger.Debug("do hk4e 2.8 rsa logic")
	if context.Query("dispatchSeed") == "" {
		rspError()
		return
	}
	keyId := context.Query("key_id")
	encPubPrivKey, exist := c.encRsaKeyMap[keyId]
	if !exist {
		logger.Error("can not found key id: %v", keyId)
		rspError()
		return
	}
	regionInfo, err := base64.StdEncoding.DecodeString(regionCurrBase64)
	if err != nil {
		logger.Error("decode region info error: %v", err)
		rspError()
		return
	}
	chunkSize := 256 - 11
	regionInfoLength := len(regionInfo)
	numChunks := int(math.Ceil(float64(regionInfoLength) / float64(chunkSize)))
	encryptedRegionInfo := make([]byte, 0)
	for i := 0; i < numChunks; i++ {
		from := i * chunkSize
		to := int(math.Min(float64((i+1)*chunkSize), float64(regionInfoLength)))
		chunk := regionInfo[from:to]
		pubKey, err := endec.RsaParsePubKeyByPrivKey(encPubPrivKey)
		if err != nil {
			logger.Error("parse rsa pub key error: %v", err)
			rspError()
			return
		}
		privKey, err := endec.RsaParsePrivKey(encPubPrivKey)
		if err != nil {
			logger.Error("parse rsa priv key error: %v", err)
			rspError()
			return
		}
		encrypt, err := endec.RsaEncrypt(chunk, pubKey)
		if err != nil {
			logger.Error("rsa enc error: %v", err)
			rspError()
			return
		}
		decrypt, err := endec.RsaDecrypt(encrypt, privKey)
		if err != nil {
			logger.Error("rsa dec error: %v", err)
			rspError()
			return
		}
		if bytes.Compare(decrypt, chunk) != 0 {
			logger.Error("rsa dec test fail")
			rspError()
			return
		}
		encryptedRegionInfo = append(encryptedRegionInfo, encrypt...)
	}
	signPrivkey, err := endec.RsaParsePrivKey(c.signRsaKey)
	if err != nil {
		logger.Error("parse rsa priv key error: %v", err)
		rspError()
		return
	}
	signData, err := endec.RsaSign(regionInfo, signPrivkey)
	if err != nil {
		logger.Error("rsa sign error: %v", err)
		rspError()
		return
	}
	ok, err := endec.RsaVerify(regionInfo, signData, &signPrivkey.PublicKey)
	if err != nil {
		logger.Error("rsa verify error: %v", err)
		rspError()
		return
	}
	if !ok {
		logger.Error("rsa verify test fail")
		rspError()
		return
	}
	rsp := &httpapi.QueryCurRegionRspJson{
		Content: base64.StdEncoding.EncodeToString(encryptedRegionInfo),
		Sign:    base64.StdEncoding.EncodeToString(signData),
	}
	context.JSON(http.StatusOK, rsp)
}
