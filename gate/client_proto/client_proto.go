package client_proto

import (
	"reflect"

	"hk4e/pkg/logger"
)

type ClientCmdProtoMap struct {
	clientCmdIdCmdNameMap map[uint16]string
	clientCmdNameCmdIdMap map[string]uint16
	RefValue              reflect.Value
}

func NewClientCmdProtoMap() (r *ClientCmdProtoMap) {
	r = new(ClientCmdProtoMap)
	r.clientCmdIdCmdNameMap = make(map[uint16]string)
	r.clientCmdNameCmdIdMap = make(map[string]uint16)
	r.RefValue = reflect.ValueOf(r)
	fn := r.RefValue.MethodByName("LoadClientCmdIdAndCmdName")
	fn.Call([]reflect.Value{})
	return r
}

func (c *ClientCmdProtoMap) GetClientCmdNameByCmdId(cmdId uint16) string {
	cmdName, exist := c.clientCmdIdCmdNameMap[cmdId]
	if !exist {
		logger.Error("unknown cmd id: %v", cmdId)
		return ""
	}
	return cmdName
}

func (c *ClientCmdProtoMap) GetClientCmdIdByCmdName(cmdName string) uint16 {
	cmdId, exist := c.clientCmdNameCmdIdMap[cmdName]
	if !exist {
		logger.Error("unknown cmd name: %v", cmdName)
		return 0
	}
	return cmdId
}
