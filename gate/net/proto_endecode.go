package net

import (
	"hk4e/pkg/logger"
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
	return kcpMsg
}

func (k *KcpConnectManager) decodePayloadToProto(cmdId uint16, protoData []byte) (protoObj pb.Message) {
	protoObj = k.cmdProtoMap.GetProtoObjByCmdId(cmdId)
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
	cmdId = k.cmdProtoMap.GetCmdIdByProtoObj(protoObj)
	var err error = nil
	protoData, err = pb.Marshal(protoObj)
	if err != nil {
		logger.Error("marshal proto object err: %v", err)
		return 0, nil
	}
	return cmdId, protoData
}
