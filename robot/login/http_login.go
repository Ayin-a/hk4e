package login

import (
	"encoding/base64"
	"encoding/json"
	"math"
	"strconv"

	"hk4e/common/region"
	"hk4e/dispatch/api"
	"hk4e/pkg/endec"
	"hk4e/pkg/httpclient"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/proto"

	"github.com/pkg/errors"
	pb "google.golang.org/protobuf/proto"
)

type DispatchInfo struct {
	GateIp      string
	GatePort    uint32
	DispatchKey []byte
}

func GetDispatchInfo(regionListUrl string, curRegionUrl string, regionListParam string, curRegionParam string, keyId string) (*DispatchInfo, error) {
	logger.Info("http get url: %v", regionListUrl+"/query_region_list"+regionListParam)
	regionListBase64, err := httpclient.GetRaw(regionListUrl+"/query_region_list"+regionListParam, "")
	if err != nil {
		return nil, err
	}
	regionListData, err := base64.StdEncoding.DecodeString(regionListBase64)
	if err != nil {
		return nil, err
	}
	queryRegionListHttpRsp := new(proto.QueryRegionListHttpRsp)
	err = pb.Unmarshal(regionListData, queryRegionListHttpRsp)
	if err != nil {
		return nil, err
	}
	logger.Info("region list: %v", queryRegionListHttpRsp.RegionList)
	if len(queryRegionListHttpRsp.RegionList) == 0 {
		return nil, errors.New("no region found")
	}
	if curRegionUrl == "" {
		selectRegion := queryRegionListHttpRsp.RegionList[0]
		logger.Info("select region: %v", selectRegion)
		curRegionUrl = selectRegion.DispatchUrl
	}
	logger.Info("http get url: %v", curRegionUrl+curRegionParam)
	regionCurrJson, err := httpclient.GetRaw(curRegionUrl+curRegionParam, "")
	if err != nil {
		return nil, err
	}
	queryCurRegionRspJson := new(api.QueryCurRegionRspJson)
	err = json.Unmarshal([]byte(regionCurrJson), queryCurRegionRspJson)
	if err != nil {
		return nil, err
	}
	encryptedRegionInfo, err := base64.StdEncoding.DecodeString(queryCurRegionRspJson.Content)
	if err != nil {
		return nil, err
	}
	chunkSize := 256
	regionInfoLength := len(encryptedRegionInfo)
	numChunks := int(math.Ceil(float64(regionInfoLength) / float64(chunkSize)))
	regionCurrData := make([]byte, 0)
	_, encRsaKeyMap, _ := region.LoadRsaKey()
	encPubPrivKey, exist := encRsaKeyMap[keyId]
	if !exist {
		logger.Error("can not found key id: %v", keyId)
		return nil, err
	}
	for i := 0; i < numChunks; i++ {
		from := i * chunkSize
		to := int(math.Min(float64((i+1)*chunkSize), float64(regionInfoLength)))
		chunk := encryptedRegionInfo[from:to]
		privKey, err := endec.RsaParsePrivKey(encPubPrivKey)
		if err != nil {
			logger.Error("parse rsa priv key error: %v", err)
			return nil, err
		}
		decrypt, err := endec.RsaDecrypt(chunk, privKey)
		if err != nil {
			logger.Error("rsa dec error: %v", err)
			return nil, err
		}
		regionCurrData = append(regionCurrData, decrypt...)
	}
	queryCurrRegionHttpRsp := new(proto.QueryCurrRegionHttpRsp)
	err = pb.Unmarshal(regionCurrData, queryCurrRegionHttpRsp)
	if err != nil {
		return nil, err
	}
	regionInfo := queryCurrRegionHttpRsp.RegionInfo
	if regionInfo == nil {
		return nil, errors.New("region info is nil")
	}
	ec2b, err := random.LoadEc2bKey(regionInfo.SecretKey)
	if err != nil {
		return nil, err
	}
	dispatchInfo := &DispatchInfo{
		GateIp:      regionInfo.GateserverIp,
		GatePort:    regionInfo.GateserverPort,
		DispatchKey: ec2b.XorKey(),
	}
	return dispatchInfo, nil
}

type AccountInfo struct {
	AccountId  uint32
	Token      string
	ComboToken string
}

func AccountLogin(url string, account string, password string) (*AccountInfo, error) {
	loginAccountRequestJson := &api.LoginAccountRequestJson{
		Account:  account,
		Password: password,
		IsCrypto: true,
	}
	logger.Info("http post url: %v", url+"/hk4e_global/mdk/shield/api/login")
	loginResult, err := httpclient.PostJson[api.LoginResult](url+"/hk4e_global/mdk/shield/api/login", loginAccountRequestJson, "")
	if err != nil {
		return nil, err
	}
	if loginResult.Retcode != 0 {
		logger.Error("login error msg: %v", loginResult.Message)
		return nil, errors.New("login error")
	}
	accountId, err := strconv.Atoi(loginResult.Data.Account.Uid)
	if err != nil {
		return nil, err
	}
	loginTokenData := &api.LoginTokenData{
		Uid:   loginResult.Data.Account.Uid,
		Token: loginResult.Data.Account.Token,
	}
	loginTokenDataJson, err := json.Marshal(loginTokenData)
	if err != nil {
		return nil, err
	}
	comboTokenReq := &api.ComboTokenReq{
		Data: string(loginTokenDataJson),
	}
	logger.Info("http post url: %v", url+"/hk4e_global/combo/granter/login/v2/login")
	comboTokenRsp, err := httpclient.PostJson[api.ComboTokenRsp](url+"/hk4e_global/combo/granter/login/v2/login", comboTokenReq, "")
	if err != nil {
		return nil, err
	}
	if comboTokenRsp.Retcode != 0 {
		logger.Error("v2 login error msg: %v", comboTokenRsp.Message)
		return nil, errors.New("v2 login error")
	}
	accountInfo := &AccountInfo{
		AccountId:  uint32(accountId),
		Token:      loginResult.Data.Account.Token,
		ComboToken: comboTokenRsp.Data.ComboToken,
	}
	return accountInfo, nil
}
