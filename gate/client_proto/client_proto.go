package client_proto

import (
	"os"
	"strconv"
	"strings"

	"hk4e/pkg/logger"
)

type ClientCmdProtoMap struct {
	clientCmdIdCmdNameMap map[uint16]string
	clientCmdNameCmdIdMap map[string]uint16
}

func NewClientCmdProtoMap() (r *ClientCmdProtoMap) {
	r = new(ClientCmdProtoMap)
	r.clientCmdIdCmdNameMap = make(map[uint16]string)
	r.clientCmdNameCmdIdMap = make(map[string]uint16)
	clientCmdFile, err := os.ReadFile("./client_cmd.csv")
	if err != nil {
		panic(err)
	}
	clientCmdData := string(clientCmdFile)
	lineList := strings.Split(clientCmdData, "\n")
	for _, line := range lineList {
		item := strings.Split(line, ",")
		if len(item) != 2 {
			panic("parse client cmd file error")
		}
		cmdName := item[0]
		cmdId, err := strconv.Atoi(item[1])
		if err != nil {
			panic(err)
		}
		r.clientCmdIdCmdNameMap[uint16(cmdId)] = cmdName
		r.clientCmdNameCmdIdMap[cmdName] = uint16(cmdId)
	}
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
