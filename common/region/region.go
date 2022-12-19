package region

import (
	"os"

	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/proto"
)

func LoadRsaKey() (signRsaKey []byte, encRsaKeyMap map[string][]byte, pwdRsaKey []byte) {
	var err error = nil
	encRsaKeyMap = make(map[string][]byte)
	signRsaKey, err = os.ReadFile("key/region_sign_key.pem")
	if err != nil {
		logger.Error("open region_sign_key.pem error: %v", err)
		return nil, nil, nil
	}
	encKeyIdList := []string{"2", "3", "4", "5"}
	for _, v := range encKeyIdList {
		encRsaKeyMap[v], err = os.ReadFile("key/region_enc_key_" + v + ".pem")
		if err != nil {
			logger.Error("open region_enc_key_"+v+".pem error: %v", err)
			return nil, nil, nil
		}
	}
	pwdRsaKey, err = os.ReadFile("key/account_password_key.pem")
	if err != nil {
		logger.Error("open account_password_key.pem error: %v", err)
		return nil, nil, nil
	}
	return signRsaKey, encRsaKeyMap, pwdRsaKey
}

func InitRegion(kcpAddr string, kcpPort int32) (*proto.QueryCurrRegionHttpRsp, *proto.QueryRegionListHttpRsp, *random.Ec2b) {
	dispatchEc2b := random.NewEc2b()
	dispatchEc2bData := dispatchEc2b.Bytes()
	dispatchXorKey := dispatchEc2b.XorKey()
	// RegionCurr
	regionCurr := new(proto.QueryCurrRegionHttpRsp)
	regionCurr.RegionInfo = &proto.RegionInfo{
		GateserverIp:   kcpAddr,
		GateserverPort: uint32(kcpPort),
		SecretKey:      dispatchEc2bData,
	}
	// RegionList
	customConfigStr := `
		{
			"sdkenv":        "2",
			"checkdevice":   "false",
			"loadPatch":     "false",
			"showexception": "false",
			"regionConfig":  "pm|fk|add",
			"downloadMode":  "0",
		}
	`
	customConfig := []byte(customConfigStr)
	endec.Xor(customConfig, dispatchXorKey)
	serverList := make([]*proto.RegionSimpleInfo, 0)
	server := &proto.RegionSimpleInfo{
		Name:        "os_usa",
		Title:       "America",
		Type:        "DEV_PUBLIC",
		DispatchUrl: "https://osusadispatch.yuanshen.com/query_cur_region",
	}
	serverList = append(serverList, server)
	regionList := new(proto.QueryRegionListHttpRsp)
	regionList.RegionList = serverList
	regionList.ClientSecretKey = dispatchEc2bData
	regionList.ClientCustomConfigEncrypted = customConfig
	regionList.EnableLoginPc = true
	return regionCurr, regionList, dispatchEc2b
}
