package region

import (
	"encoding/base64"
	"os"

	"hk4e/common/config"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
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

func NewRegionEc2b() *random.Ec2b {
	return random.NewEc2b()
}

func GetRegionList(ec2b *random.Ec2b) *proto.QueryRegionListHttpRsp {
	dispatchEc2bData := ec2b.Bytes()
	dispatchXorKey := ec2b.XorKey()
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
		DispatchUrl: config.GetConfig().Hk4e.DispatchUrl,
	}
	serverList = append(serverList, server)
	regionList := new(proto.QueryRegionListHttpRsp)
	regionList.RegionList = serverList
	regionList.ClientSecretKey = dispatchEc2bData
	regionList.ClientCustomConfigEncrypted = customConfig
	regionList.EnableLoginPc = true
	return regionList
}

func GetRegionCurr(kcpAddr string, kcpPort int32, ec2b *random.Ec2b) *proto.QueryCurrRegionHttpRsp {
	dispatchEc2bData := ec2b.Bytes()
	// RegionCurr
	regionCurr := new(proto.QueryCurrRegionHttpRsp)
	regionCurr.RegionInfo = &proto.RegionInfo{
		GateserverIp:   kcpAddr,
		GateserverPort: uint32(kcpPort),
		SecretKey:      dispatchEc2bData,
	}
	return regionCurr
}

func GetRegionListBase64(ec2b *random.Ec2b) string {
	regionList := GetRegionList(ec2b)
	regionListData, err := pb.Marshal(regionList)
	if err != nil {
		logger.Error("pb marshal QueryRegionListHttpRsp error: %v", err)
		return ""
	}
	return base64.StdEncoding.EncodeToString(regionListData)
}

func GetRegionCurrBase64(kcpAddr string, kcpPort int32, ec2b *random.Ec2b) string {
	regionCurr := GetRegionCurr(kcpAddr, kcpPort, ec2b)
	regionCurrData, err := pb.Marshal(regionCurr)
	if err != nil {
		logger.Error("pb marshal QueryCurrRegionHttpRsp error: %v", err)
		return ""
	}
	return base64.StdEncoding.EncodeToString(regionCurrData)
}
