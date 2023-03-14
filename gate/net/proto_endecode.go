package net

import (
	"reflect"

	"hk4e/common/config"
	"hk4e/gate/client_proto"
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

func ProtoDecode(kcpMsg *KcpMsg,
	serverCmdProtoMap *cmd.CmdProtoMap, clientCmdProtoMap *client_proto.ClientCmdProtoMap) (protoMsgList []*ProtoMsg) {
	protoMsgList = make([]*ProtoMsg, 0)
	if config.GetConfig().Hk4e.ClientProtoProxyEnable {
		clientCmdId := kcpMsg.CmdId
		clientProtoData := kcpMsg.ProtoData
		cmdName := clientCmdProtoMap.GetClientCmdNameByCmdId(clientCmdId)
		if cmdName == "" {
			logger.Error("get cmdName is nil, clientCmdId: %v", clientCmdId)
			return protoMsgList
		}
		clientProtoObj := GetClientProtoObjByName(cmdName, clientCmdProtoMap)
		if clientProtoObj == nil {
			logger.Error("get client proto obj is nil, cmdName: %v", cmdName)
			return protoMsgList
		}
		err := pb.Unmarshal(clientProtoData, clientProtoObj)
		if err != nil {
			logger.Error("unmarshal client proto error: %v", err)
			return protoMsgList
		}
		serverCmdId := serverCmdProtoMap.GetCmdIdByCmdName(cmdName)
		if serverCmdId == 0 {
			logger.Error("get server cmdId is nil, cmdName: %v", cmdName)
			return protoMsgList
		}
		serverProtoObj := serverCmdProtoMap.GetProtoObjByCmdId(serverCmdId)
		if serverProtoObj == nil {
			logger.Error("get server proto obj is nil, serverCmdId: %v", serverCmdId)
			return protoMsgList
		}
		delList, err := object.CopyProtoBufSameField(serverProtoObj, clientProtoObj)
		if err != nil {
			logger.Error("copy proto obj error: %v", err)
			return protoMsgList
		}
		if len(delList) != 0 {
			logger.Error("delete field name list: %v, cmdName: %v", delList, cmdName)
		}
		ConvClientPbDataToServer(serverProtoObj, clientCmdProtoMap)
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
	ProtoDecodePayloadLoop(kcpMsg.CmdId, kcpMsg.ProtoData, &protoMessageList, serverCmdProtoMap, clientCmdProtoMap)
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
			logger.Debug("[RECV UNION CMD], cmdId: %v, cmdName: %v, convId: %v, headMsg: %v",
				msg.CmdId, cmdName, msg.ConvId, msg.HeadMessage)
		}
	} else {
		protoMsg.PayloadMessage = protoMessageList[0].message
		protoMsgList = append(protoMsgList, protoMsg)
		cmdName := ""
		if protoMsg.PayloadMessage != nil {
			cmdName = string(protoMsg.PayloadMessage.ProtoReflect().Descriptor().FullName())
		}
		logger.Debug("[RECV], cmdId: %v, cmdName: %v, convId: %v, headMsg: %v",
			protoMsg.CmdId, cmdName, protoMsg.ConvId, protoMsg.HeadMessage)
	}
	return protoMsgList
}

func ProtoDecodePayloadLoop(cmdId uint16, protoData []byte, protoMessageList *[]*ProtoMessage,
	serverCmdProtoMap *cmd.CmdProtoMap, clientCmdProtoMap *client_proto.ClientCmdProtoMap) {
	protoObj := DecodePayloadToProto(cmdId, protoData, serverCmdProtoMap)
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
			if config.GetConfig().Hk4e.ClientProtoProxyEnable {
				clientCmdId := uint16(unionCmd.MessageId)
				clientProtoData := unionCmd.Body
				cmdName := clientCmdProtoMap.GetClientCmdNameByCmdId(clientCmdId)
				if cmdName == "" {
					logger.Error("get cmdName is nil, clientCmdId: %v", clientCmdId)
					continue
				}
				clientProtoObj := GetClientProtoObjByName(cmdName, clientCmdProtoMap)
				if clientProtoObj == nil {
					logger.Error("get client proto obj is nil, cmdName: %v", cmdName)
					continue
				}
				err := pb.Unmarshal(clientProtoData, clientProtoObj)
				if err != nil {
					logger.Error("unmarshal client proto error: %v", err)
					continue
				}
				serverCmdId := serverCmdProtoMap.GetCmdIdByCmdName(cmdName)
				if serverCmdId == 0 {
					logger.Error("get server cmdId is nil, cmdName: %v", cmdName)
					continue
				}
				serverProtoObj := serverCmdProtoMap.GetProtoObjByCmdId(serverCmdId)
				if serverProtoObj == nil {
					logger.Error("get server proto obj is nil, serverCmdId: %v", serverCmdId)
					continue
				}
				delList, err := object.CopyProtoBufSameField(serverProtoObj, clientProtoObj)
				if err != nil {
					logger.Error("copy proto obj error: %v", err)
					continue
				}
				if len(delList) != 0 {
					logger.Error("delete field name list: %v, cmdName: %v", delList, cmdName)
				}
				ConvClientPbDataToServer(serverProtoObj, clientCmdProtoMap)
				serverProtoData, err := pb.Marshal(serverProtoObj)
				if err != nil {
					logger.Error("marshal server proto error: %v", err)
					continue
				}
				unionCmd.MessageId = uint32(serverCmdId)
				unionCmd.Body = serverProtoData
			}
			ProtoDecodePayloadLoop(uint16(unionCmd.MessageId), unionCmd.Body, protoMessageList,
				serverCmdProtoMap, clientCmdProtoMap)
		}
	}
	*protoMessageList = append(*protoMessageList, &ProtoMessage{
		cmdId:   cmdId,
		message: protoObj,
	})
}

func ProtoEncode(protoMsg *ProtoMsg,
	serverCmdProtoMap *cmd.CmdProtoMap, clientCmdProtoMap *client_proto.ClientCmdProtoMap) (kcpMsg *KcpMsg) {
	cmdName := ""
	if protoMsg.PayloadMessage != nil {
		cmdName = string(protoMsg.PayloadMessage.ProtoReflect().Descriptor().FullName())
	}
	logger.Debug("[SEND], cmdId: %v, cmdName: %v, convId: %v, headMsg: %v",
		protoMsg.CmdId, cmdName, protoMsg.ConvId, protoMsg.HeadMessage)
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
		protoData := EncodeProtoToPayload(protoMsg.PayloadMessage, serverCmdProtoMap)
		if protoData == nil {
			logger.Error("encode proto data is nil")
			return nil
		}
		kcpMsg.ProtoData = protoData
	} else {
		kcpMsg.ProtoData = nil
	}
	if config.GetConfig().Hk4e.ClientProtoProxyEnable {
		serverCmdId := kcpMsg.CmdId
		serverProtoData := kcpMsg.ProtoData
		serverProtoObj := serverCmdProtoMap.GetProtoObjByCmdId(serverCmdId)
		if serverProtoObj == nil {
			logger.Error("get server proto obj is nil, serverCmdId: %v", serverCmdId)
			return nil
		}
		err := pb.Unmarshal(serverProtoData, serverProtoObj)
		if err != nil {
			logger.Error("unmarshal server proto error: %v", err)
			return nil
		}
		cmdName := serverCmdProtoMap.GetCmdNameByCmdId(serverCmdId)
		if cmdName == "" {
			logger.Error("get cmdName is nil, serverCmdId: %v", serverCmdId)
			return nil
		}
		clientProtoObj := GetClientProtoObjByName(cmdName, clientCmdProtoMap)
		if clientProtoObj == nil {
			logger.Error("get client proto obj is nil, cmdName: %v", cmdName)
			return nil
		}
		delList, err := object.CopyProtoBufSameField(clientProtoObj, serverProtoObj)
		if err != nil {
			logger.Error("copy proto obj error: %v", err)
			return nil
		}
		if len(delList) != 0 {
			logger.Error("delete field name list: %v, cmdName: %v", delList, cmdName)
		}
		ConvServerPbDataToClient(clientProtoObj, clientCmdProtoMap)
		clientProtoData, err := pb.Marshal(clientProtoObj)
		if err != nil {
			logger.Error("marshal client proto error: %v", err)
			return nil
		}
		clientCmdId := clientCmdProtoMap.GetClientCmdIdByCmdName(cmdName)
		if clientCmdId == 0 {
			logger.Error("get client cmdId is nil, cmdName: %v", cmdName)
			return nil
		}
		kcpMsg.CmdId = clientCmdId
		kcpMsg.ProtoData = clientProtoData
	}
	return kcpMsg
}

func DecodePayloadToProto(cmdId uint16, protoData []byte, serverCmdProtoMap *cmd.CmdProtoMap) (protoObj pb.Message) {
	protoObj = serverCmdProtoMap.GetProtoObjCacheByCmdId(cmdId)
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

func EncodeProtoToPayload(protoObj pb.Message, serverCmdProtoMap *cmd.CmdProtoMap) (protoData []byte) {
	var err error = nil
	protoData, err = pb.Marshal(protoObj)
	if err != nil {
		logger.Error("marshal proto object err: %v", err)
		return nil
	}
	return protoData
}

// 网关客户端协议代理相关反射方法

func GetClientProtoObjByName(protoObjName string, clientCmdProtoMap *client_proto.ClientCmdProtoMap) pb.Message {
	fn := clientCmdProtoMap.RefValue.MethodByName("GetClientProtoObjByName")
	if !fn.IsValid() {
		logger.Error("fn is nil")
		return nil
	}
	ret := fn.Call([]reflect.Value{reflect.ValueOf(protoObjName)})
	obj := ret[0].Interface()
	if obj == nil {
		logger.Error("try to get a not exist proto obj, protoObjName: %v", protoObjName)
		return nil
	}
	clientProtoObj := obj.(pb.Message)
	return clientProtoObj
}

func ConvClientPbDataToServerCore(protoObjName string, serverProtoObj pb.Message, clientProtoData *[]byte, clientCmdProtoMap *client_proto.ClientCmdProtoMap) {
	clientProtoObj := GetClientProtoObjByName(protoObjName, clientCmdProtoMap)
	if clientProtoObj == nil {
		return
	}
	err := pb.Unmarshal(*clientProtoData, clientProtoObj)
	if err != nil {
		return
	}
	_, err = object.CopyProtoBufSameField(serverProtoObj, clientProtoObj)
	if err != nil {
		return
	}
	serverProtoData, err := pb.Marshal(serverProtoObj)
	if err != nil {
		return
	}
	*clientProtoData = serverProtoData
}

func ConvServerPbDataToClientCore(protoObjName string, serverProtoObj pb.Message, serverProtoData *[]byte, clientCmdProtoMap *client_proto.ClientCmdProtoMap) {
	err := pb.Unmarshal(*serverProtoData, serverProtoObj)
	if err != nil {
		return
	}
	clientProtoObj := GetClientProtoObjByName(protoObjName, clientCmdProtoMap)
	if clientProtoObj == nil {
		return
	}
	_, err = object.CopyProtoBufSameField(clientProtoObj, serverProtoObj)
	if err != nil {
		return
	}
	clientProtoData, err := pb.Marshal(clientProtoObj)
	if err != nil {
		return
	}
	*serverProtoData = clientProtoData
}

// 在GS侧进行pb.Unmarshal解析二级pb数据前 请先在这里添加相关代码

func ConvClientPbDataToServer(protoObj pb.Message, clientCmdProtoMap *client_proto.ClientCmdProtoMap) pb.Message {
	switch protoObj.(type) {
	case *proto.CombatInvocationsNotify:
		ntf := protoObj.(*proto.CombatInvocationsNotify)
		for _, entry := range ntf.InvokeList {
			switch entry.ArgumentType {
			case proto.CombatTypeArgument_COMBAT_EVT_BEING_HIT:
				serverProtoObj := new(proto.EvtBeingHitInfo)
				ConvClientPbDataToServerCore("EvtBeingHitInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			case proto.CombatTypeArgument_ENTITY_MOVE:
				serverProtoObj := new(proto.EntityMoveInfo)
				ConvClientPbDataToServerCore("EntityMoveInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			case proto.CombatTypeArgument_COMBAT_ANIMATOR_PARAMETER_CHANGED:
				serverProtoObj := new(proto.EvtAnimatorParameterInfo)
				ConvClientPbDataToServerCore("EvtAnimatorParameterInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			case proto.CombatTypeArgument_COMBAT_ANIMATOR_STATE_CHANGED:
				serverProtoObj := new(proto.EvtAnimatorStateChangedInfo)
				ConvClientPbDataToServerCore("EvtAnimatorStateChangedInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			}
		}
	case *proto.AbilityInvocationsNotify:
		ntf := protoObj.(*proto.AbilityInvocationsNotify)
		for _, entry := range ntf.Invokes {
			switch entry.ArgumentType {
			case proto.AbilityInvokeArgument_ABILITY_MIXIN_COST_STAMINA:
				serverProtoObj := new(proto.AbilityMixinCostStamina)
				ConvClientPbDataToServerCore("AbilityMixinCostStamina", serverProtoObj, &entry.AbilityData, clientCmdProtoMap)
			}
		}
	case *proto.ClientAbilityChangeNotify:
		ntf := protoObj.(*proto.ClientAbilityChangeNotify)
		for _, entry := range ntf.Invokes {
			switch entry.ArgumentType {
			case proto.AbilityInvokeArgument_ABILITY_META_ADD_NEW_ABILITY:
				serverProtoObj := new(proto.AbilityMetaAddAbility)
				ConvClientPbDataToServerCore("AbilityMetaAddAbility", serverProtoObj, &entry.AbilityData, clientCmdProtoMap)
			case proto.AbilityInvokeArgument_ABILITY_META_MODIFIER_CHANGE:
				serverProtoObj := new(proto.AbilityMetaModifierChange)
				ConvClientPbDataToServerCore("AbilityMetaModifierChange", serverProtoObj, &entry.AbilityData, clientCmdProtoMap)
			}
		}
	}
	return protoObj
}

func ConvServerPbDataToClient(protoObj pb.Message, clientCmdProtoMap *client_proto.ClientCmdProtoMap) pb.Message {
	switch protoObj.(type) {
	case *proto.CombatInvocationsNotify:
		ntf := protoObj.(*proto.CombatInvocationsNotify)
		for _, entry := range ntf.InvokeList {
			switch entry.ArgumentType {
			case proto.CombatTypeArgument_COMBAT_EVT_BEING_HIT:
				serverProtoObj := new(proto.EvtBeingHitInfo)
				ConvServerPbDataToClientCore("EvtBeingHitInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			case proto.CombatTypeArgument_ENTITY_MOVE:
				serverProtoObj := new(proto.EntityMoveInfo)
				ConvServerPbDataToClientCore("EntityMoveInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			case proto.CombatTypeArgument_COMBAT_ANIMATOR_PARAMETER_CHANGED:
				serverProtoObj := new(proto.EvtAnimatorParameterInfo)
				ConvServerPbDataToClientCore("EvtAnimatorParameterInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			case proto.CombatTypeArgument_COMBAT_ANIMATOR_STATE_CHANGED:
				serverProtoObj := new(proto.EvtAnimatorStateChangedInfo)
				ConvServerPbDataToClientCore("EvtAnimatorStateChangedInfo", serverProtoObj, &entry.CombatData, clientCmdProtoMap)
			}
		}
	case *proto.AbilityInvocationsNotify:
		ntf := protoObj.(*proto.AbilityInvocationsNotify)
		for _, entry := range ntf.Invokes {
			switch entry.ArgumentType {
			case proto.AbilityInvokeArgument_ABILITY_MIXIN_COST_STAMINA:
				serverProtoObj := new(proto.AbilityMixinCostStamina)
				ConvServerPbDataToClientCore("AbilityMixinCostStamina", serverProtoObj, &entry.AbilityData, clientCmdProtoMap)
			}
		}
	case *proto.ClientAbilityChangeNotify:
		ntf := protoObj.(*proto.ClientAbilityChangeNotify)
		for _, entry := range ntf.Invokes {
			switch entry.ArgumentType {
			case proto.AbilityInvokeArgument_ABILITY_META_ADD_NEW_ABILITY:
				serverProtoObj := new(proto.AbilityMetaAddAbility)
				ConvServerPbDataToClientCore("AbilityMetaAddAbility", serverProtoObj, &entry.AbilityData, clientCmdProtoMap)
			case proto.AbilityInvokeArgument_ABILITY_META_MODIFIER_CHANGE:
				serverProtoObj := new(proto.AbilityMetaModifierChange)
				ConvServerPbDataToClientCore("AbilityMetaModifierChange", serverProtoObj, &entry.AbilityData, clientCmdProtoMap)
			}
		}
	}
	return protoObj
}
