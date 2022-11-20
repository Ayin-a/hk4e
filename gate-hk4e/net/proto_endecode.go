package net

import (
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	pb "google.golang.org/protobuf/proto"
)

type ProtoEnDecode struct {
	apiProtoMap *proto.ApiProtoMap
}

func NewProtoEnDecode() (r *ProtoEnDecode) {
	r = new(ProtoEnDecode)
	r.apiProtoMap = proto.NewApiProtoMap()
	return r
}

type ProtoMsg struct {
	ConvId         uint64
	ApiId          uint16
	HeadMessage    *proto.PacketHead
	PayloadMessage pb.Message
}

type ProtoMessage struct {
	apiId   uint16
	message pb.Message
}

func (p *ProtoEnDecode) protoDecode(kcpMsg *KcpMsg) (protoMsgList []*ProtoMsg) {
	protoMsgList = make([]*ProtoMsg, 0)
	protoMsg := new(ProtoMsg)
	protoMsg.ConvId = kcpMsg.ConvId
	protoMsg.ApiId = kcpMsg.ApiId
	// head msg
	if kcpMsg.HeadData != nil && len(kcpMsg.HeadData) != 0 {
		headMsg := new(proto.PacketHead)
		err := pb.Unmarshal(kcpMsg.HeadData, headMsg)
		if err != nil {
			logger.LOG.Error("unmarshal head data err: %v", err)
			return protoMsgList
		}
		protoMsg.HeadMessage = headMsg
	} else {
		protoMsg.HeadMessage = nil
	}
	// payload msg
	protoMessageList := make([]*ProtoMessage, 0)
	p.protoDecodePayloadCore(kcpMsg.ApiId, kcpMsg.ProtoData, &protoMessageList)
	if len(protoMessageList) == 0 {
		logger.LOG.Error("decode proto object is nil")
		return protoMsgList
	}
	if kcpMsg.ApiId == proto.ApiUnionCmdNotify {
		for _, protoMessage := range protoMessageList {
			msg := new(ProtoMsg)
			msg.ConvId = kcpMsg.ConvId
			msg.ApiId = protoMessage.apiId
			msg.HeadMessage = protoMsg.HeadMessage
			msg.PayloadMessage = protoMessage.message
			//logger.LOG.Debug("[recv] union proto msg, convId: %v, apiId: %v", msg.ConvId, msg.ApiId)
			if protoMessage.apiId == proto.ApiUnionCmdNotify {
				// 聚合消息自身不再往后发送
				continue
			}
			//logger.LOG.Debug("[recv] proto msg, convId: %v, apiId: %v, headMsg: %v", protoMsg.ConvId, protoMsg.ApiId, protoMsg.HeadMessage)
			protoMsgList = append(protoMsgList, msg)
		}
		// 聚合消息自身不再往后发送
		return protoMsgList
	} else {
		protoMsg.PayloadMessage = protoMessageList[0].message
	}
	//logger.LOG.Debug("[recv] proto msg, convId: %v, apiId: %v, headMsg: %v", protoMsg.ConvId, protoMsg.ApiId, protoMsg.HeadMessage)
	protoMsgList = append(protoMsgList, protoMsg)
	return protoMsgList
}

func (p *ProtoEnDecode) protoDecodePayloadCore(apiId uint16, protoData []byte, protoMessageList *[]*ProtoMessage) {
	protoObj := p.decodePayloadToProto(apiId, protoData)
	if protoObj == nil {
		logger.LOG.Error("decode proto object is nil")
		return
	}
	if apiId == proto.ApiUnionCmdNotify {
		// 处理聚合消息
		unionCmdNotify, ok := protoObj.(*proto.UnionCmdNotify)
		if !ok {
			logger.LOG.Error("parse union cmd error")
			return
		}
		for _, cmd := range unionCmdNotify.GetCmdList() {
			p.protoDecodePayloadCore(uint16(cmd.MessageId), cmd.Body, protoMessageList)
		}
	}
	*protoMessageList = append(*protoMessageList, &ProtoMessage{
		apiId:   apiId,
		message: protoObj,
	})
}

func (p *ProtoEnDecode) protoEncode(protoMsg *ProtoMsg) (kcpMsg *KcpMsg) {
	//logger.LOG.Debug("[send] proto msg, convId: %v, apiId: %v, headMsg: %v", protoMsg.ConvId, protoMsg.ApiId, protoMsg.HeadMessage)
	kcpMsg = new(KcpMsg)
	kcpMsg.ConvId = protoMsg.ConvId
	kcpMsg.ApiId = protoMsg.ApiId
	// head msg
	if protoMsg.HeadMessage != nil {
		headData, err := pb.Marshal(protoMsg.HeadMessage)
		if err != nil {
			logger.LOG.Error("marshal head data err: %v", err)
			return nil
		}
		kcpMsg.HeadData = headData
	} else {
		kcpMsg.HeadData = nil
	}
	// payload msg
	if protoMsg.PayloadMessage != nil {
		apiId, protoData := p.encodeProtoToPayload(protoMsg.PayloadMessage)
		if apiId == 0 || protoData == nil {
			logger.LOG.Error("encode proto data is nil")
			return nil
		}
		if apiId != 65535 && apiId != protoMsg.ApiId {
			logger.LOG.Error("api id is not match with proto obj, src api id: %v, found api id: %v", protoMsg.ApiId, apiId)
			return nil
		}
		kcpMsg.ProtoData = protoData
	} else {
		kcpMsg.ProtoData = nil
	}
	return kcpMsg
}

func (p *ProtoEnDecode) decodePayloadToProto(apiId uint16, protoData []byte) (protoObj pb.Message) {
	protoObj = p.apiProtoMap.GetProtoObjByApiId(apiId)
	if protoObj == nil {
		logger.LOG.Error("get new proto object is nil")
		return nil
	}
	err := pb.Unmarshal(protoData, protoObj)
	if err != nil {
		logger.LOG.Error("unmarshal proto data err: %v", err)
		return nil
	}
	return protoObj
}

func (p *ProtoEnDecode) encodeProtoToPayload(protoObj pb.Message) (apiId uint16, protoData []byte) {
	apiId = p.apiProtoMap.GetApiIdByProtoObj(protoObj)
	var err error = nil
	protoData, err = pb.Marshal(protoObj)
	if err != nil {
		logger.LOG.Error("marshal proto object err: %v", err)
		return 0, nil
	}
	return apiId, protoData
}
