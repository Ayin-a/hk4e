package net

import (
	"reflect"

	"hk4e/common/config"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

type ProtoMsg struct {
	ConvId         uint64
	CmdId          uint16
	HeadMessage    *proto.PacketHead
	PayloadMessage pb.Message
}

type ProtoMessage struct {
	cmdId   uint16
	message pb.Message
}

func (k *KcpConnectManager) protoDecode(kcpMsg *KcpMsg) (protoMsgList []*ProtoMsg) {
	protoMsgList = make([]*ProtoMsg, 0)
	if config.CONF.Hk4e.ClientProtoProxyEnable {
		clientCmdId := kcpMsg.CmdId
		clientProtoData := kcpMsg.ProtoData
		cmdName := k.clientCmdProtoMap.GetClientCmdNameByCmdId(clientCmdId)
		clientProtoObj := k.clientCmdProtoMapRefValue.MethodByName(
			"GetClientProtoObjByCmdName",
		).Call([]reflect.Value{reflect.ValueOf(cmdName)})[0].Interface().(pb.Message)
		err := pb.Unmarshal(clientProtoData, clientProtoObj)
		if err != nil {
			logger.Error("unmarshal client proto error: %v", err)
			return protoMsgList
		}
		serverCmdId := k.serverCmdProtoMap.GetCmdIdByCmdName(cmdName)
		serverProtoObj := k.serverCmdProtoMap.GetProtoObjByCmdId(serverCmdId)
		err = object.CopyProtoBufSameField(serverProtoObj, clientProtoObj)
		if err != nil {
			logger.Error("copy proto obj error: %v", err)
			return protoMsgList
		}
		serverProtoData, err := pb.Marshal(serverProtoObj)
		if err != nil {
			logger.Error("marshal server proto error: %v", err)
			return protoMsgList
		}
		kcpMsg.CmdId = serverCmdId
		kcpMsg.ProtoData = serverProtoData
	}
	protoMsg := new(ProtoMsg)
	protoMsg.ConvId = kcpMsg.ConvId
	protoMsg.CmdId = kcpMsg.CmdId
	// head msg
	if kcpMsg.HeadData != nil && len(kcpMsg.HeadData) != 0 {
		headMsg := new(proto.PacketHead)
		err := pb.Unmarshal(kcpMsg.HeadData, headMsg)
		if err != nil {
			logger.Error("unmarshal head data err: %v", err)
			return protoMsgList
		}
		protoMsg.HeadMessage = headMsg
	} else {
		protoMsg.HeadMessage = nil
	}
	// payload msg
	protoMessageList := make([]*ProtoMessage, 0)
	k.protoDecodePayloadLoop(kcpMsg.CmdId, kcpMsg.ProtoData, &protoMessageList)
	if len(protoMessageList) == 0 {
		logger.Error("decode proto object is nil")
		return protoMsgList
	}
	if kcpMsg.CmdId == cmd.UnionCmdNotify {
		for _, protoMessage := range protoMessageList {
			msg := new(ProtoMsg)
			msg.ConvId = kcpMsg.ConvId
			msg.CmdId = protoMessage.cmdId
			msg.HeadMessage = protoMsg.HeadMessage
			msg.PayloadMessage = protoMessage.message
			protoMsgList = append(protoMsgList, msg)
		}
		for _, msg := range protoMsgList {
			cmdName := "???"
			if msg.PayloadMessage != nil {
				cmdName = string(msg.PayloadMessage.ProtoReflect().Descriptor().FullName())
			}
			logger.Debug("[RECV UNION CMD], cmdId: %v, cmdName: %v, convId: %v, headMsg: %v", msg.CmdId, cmdName, msg.ConvId, msg.HeadMessage)
		}
	} else {
		protoMsg.PayloadMessage = protoMessageList[0].message
		protoMsgList = append(protoMsgList, protoMsg)
		cmdName := ""
		if protoMsg.PayloadMessage != nil {
			cmdName = string(protoMsg.PayloadMessage.ProtoReflect().Descriptor().FullName())
		}
		logger.Debug("[RECV], cmdId: %v, cmdName: %v, convId: %v, headMsg: %v", protoMsg.CmdId, cmdName, protoMsg.ConvId, protoMsg.HeadMessage)
	}
	return protoMsgList
}

func (k *KcpConnectManager) protoDecodePayloadLoop(cmdId uint16, protoData []byte, protoMessageList *[]*ProtoMessage) {
	protoObj := k.decodePayloadToProto(cmdId, protoData)
	if protoObj == nil {
		logger.Error("decode proto object is nil")
		return
	}
	if cmdId == cmd.UnionCmdNotify {
		// 处理聚合消息
		unionCmdNotify, ok := protoObj.(*proto.UnionCmdNotify)
		if !ok {
			logger.Error("parse union cmd error")
			return
		}
		for _, unionCmd := range unionCmdNotify.GetCmdList() {
			k.protoDecodePayloadLoop(uint16(unionCmd.MessageId), unionCmd.Body, protoMessageList)
		}
	}
	*protoMessageList = append(*protoMessageList, &ProtoMessage{
		cmdId:   cmdId,
		message: protoObj,
	})
}

func (k *KcpConnectManager) protoEncode(protoMsg *ProtoMsg) (kcpMsg *KcpMsg) {
	cmdName := ""
	if protoMsg.PayloadMessage != nil {
		cmdName = string(protoMsg.PayloadMessage.ProtoReflect().Descriptor().FullName())
	}
	logger.Debug("[SEND], cmdId: %v, cmdName: %v, convId: %v, headMsg: %v", protoMsg.CmdId, cmdName, protoMsg.ConvId, protoMsg.HeadMessage)
	kcpMsg = new(KcpMsg)
	kcpMsg.ConvId = protoMsg.ConvId
	kcpMsg.CmdId = protoMsg.CmdId
	// head msg
	if protoMsg.HeadMessage != nil {
		headData, err := pb.Marshal(protoMsg.HeadMessage)
		if err != nil {
			logger.Error("marshal head data err: %v", err)
			return nil
		}
		kcpMsg.HeadData = headData
	} else {
		kcpMsg.HeadData = nil
	}
	// payload msg
	if protoMsg.PayloadMessage != nil {
		cmdId, protoData := k.encodeProtoToPayload(protoMsg.PayloadMessage)
		if cmdId == 0 || protoData == nil {
			logger.Error("encode proto data is nil")
			return nil
		}
		if cmdId != 65535 && cmdId != protoMsg.CmdId {
			logger.Error("cmd id is not match with proto obj, src cmd id: %v, found cmd id: %v", protoMsg.CmdId, cmdId)
			return nil
		}
		kcpMsg.ProtoData = protoData
	} else {
		kcpMsg.ProtoData = nil
	}
	if config.CONF.Hk4e.ClientProtoProxyEnable {
		serverCmdId := kcpMsg.CmdId
		serverProtoData := kcpMsg.ProtoData
		serverProtoObj := k.serverCmdProtoMap.GetProtoObjByCmdId(serverCmdId)
		err := pb.Unmarshal(serverProtoData, serverProtoObj)
		if err != nil {
			logger.Error("unmarshal server proto error: %v", err)
		}
		cmdName := k.serverCmdProtoMap.GetCmdNameByCmdId(serverCmdId)
		clientProtoObj := k.clientCmdProtoMapRefValue.MethodByName(
			"GetClientProtoObjByCmdName",
		).Call([]reflect.Value{reflect.ValueOf(cmdName)})[0].Interface().(pb.Message)
		err = object.CopyProtoBufSameField(clientProtoObj, serverProtoObj)
		if err != nil {
			logger.Error("copy proto obj error: %v", err)
			return nil
		}
		clientProtoData, err := pb.Marshal(clientProtoObj)
		if err != nil {
			logger.Error("marshal client proto error: %v", err)
		}
		clientCmdId := k.clientCmdProtoMap.GetClientCmdIdByCmdName(cmdName)
		kcpMsg.CmdId = clientCmdId
		kcpMsg.ProtoData = clientProtoData
	}
	return kcpMsg
}

func (k *KcpConnectManager) decodePayloadToProto(cmdId uint16, protoData []byte) (protoObj pb.Message) {
	protoObj = k.serverCmdProtoMap.GetProtoObjByCmdId(cmdId)
	if protoObj == nil {
		logger.Error("get new proto object is nil")
		return nil
	}
	err := pb.Unmarshal(protoData, protoObj)
	if err != nil {
		logger.Error("unmarshal proto data err: %v", err)
		return nil
	}
	return protoObj
}

func (k *KcpConnectManager) encodeProtoToPayload(protoObj pb.Message) (cmdId uint16, protoData []byte) {
	cmdId = k.serverCmdProtoMap.GetCmdIdByProtoObj(protoObj)
	var err error = nil
	protoData, err = pb.Marshal(protoObj)
	if err != nil {
		logger.Error("marshal proto object err: %v", err)
		return 0, nil
	}
	return cmdId, protoData
}
