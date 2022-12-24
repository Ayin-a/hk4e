package utils

import (
	"hk4e/common/config"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"

	pb "google.golang.org/protobuf/proto"
)

func UnmarshalProtoObj(serverProtoObj pb.Message, clientProtoObj pb.Message, data []byte) bool {
	if config.CONF.Hk4e.ClientProtoProxyEnable {
		err := pb.Unmarshal(data, clientProtoObj)
		if err != nil {
			logger.Error("parse client proto obj error: %v", err)
			return false
		}
		delList, err := object.CopyProtoBufSameField(serverProtoObj, clientProtoObj)
		if err != nil {
			logger.Error("copy proto obj error: %v", err)
			return false
		}
		if len(delList) != 0 {
			logger.Error("delete field name list: %v", delList)
		}
	} else {
		err := pb.Unmarshal(data, serverProtoObj)
		if err != nil {
			logger.Error("parse server proto obj error: %v", err)
			return false
		}
	}
	return true
}
