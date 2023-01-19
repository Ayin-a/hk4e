package engine

import (
	"reflect"
	"time"

	"hk4e/common/config"
	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/common/utils"
	"hk4e/gate/client_proto"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

type FightEngine struct {
	messageQueue *mq.MessageQueue
}

func NewFightEngine(messageQueue *mq.MessageQueue) (r *FightEngine) {
	r = new(FightEngine)
	r.messageQueue = messageQueue
	initClientCmdProtoMap()
	go r.fightHandle()
	return r
}

func (f *FightEngine) fightHandle() {
	fightRoutineMsgChanMap := make(map[uint32]chan *mq.NetMsg)
	fightRoutineCloseChanMap := make(map[uint32]chan bool)
	userIdFightRoutineIdMap := make(map[uint32]uint32)
	for {
		netMsg := <-f.messageQueue.GetNetMsg()
		logger.Debug("recv net msg, netMsg: %v", netMsg)
		switch netMsg.MsgType {
		case mq.MsgTypeGame:
			gameMsg := netMsg.GameMsg
			if netMsg.EventId != mq.NormalMsg {
				continue
			}
			logger.Debug("recv game msg, gameMsg: %v", gameMsg)
			fightRoutineId, exist := userIdFightRoutineIdMap[gameMsg.UserId]
			if !exist {
				logger.Error("could not found fight routine id by uid: %v", gameMsg.UserId)
				continue
			}
			fightRoutineMsgChan, exist := fightRoutineMsgChanMap[fightRoutineId]
			if !exist {
				logger.Error("could not found fight routine msg chan by fight routine id: %v", fightRoutineId)
				continue
			}
			fightRoutineMsgChan <- netMsg
		case mq.MsgTypeFight:
			fightMsg := netMsg.FightMsg
			logger.Debug("recv fight msg, fightMsg: %v", fightMsg)
			switch netMsg.EventId {
			case mq.AddFightRoutine:
				fightRoutineMsgChan := make(chan *mq.NetMsg, 1000)
				fightRoutineMsgChanMap[fightMsg.FightRoutineId] = fightRoutineMsgChan
				fightRoutineCloseChan := make(chan bool, 1)
				fightRoutineCloseChanMap[fightMsg.FightRoutineId] = fightRoutineCloseChan
				go runFightRoutine(fightMsg.FightRoutineId, fightMsg.GateServerAppId, fightRoutineMsgChan, fightRoutineCloseChan, f.messageQueue)
			case mq.DelFightRoutine:
				fightRoutineCloseChan, exist := fightRoutineCloseChanMap[fightMsg.FightRoutineId]
				if !exist {
					logger.Error("could not found fight routine close chan by fight routine id: %v", fightMsg.FightRoutineId)
					continue
				}
				fightRoutineCloseChan <- true
			case mq.FightRoutineAddEntity:
				if fightMsg.Uid != 0 {
					userIdFightRoutineIdMap[fightMsg.Uid] = fightMsg.FightRoutineId
				}
				fightRoutineMsgChan, exist := fightRoutineMsgChanMap[fightMsg.FightRoutineId]
				if !exist {
					logger.Error("could not found fight routine msg chan by fight routine id: %v", fightMsg.FightRoutineId)
					continue
				}
				fightRoutineMsgChan <- netMsg
			case mq.FightRoutineDelEntity:
				if fightMsg.Uid != 0 {
					delete(userIdFightRoutineIdMap, fightMsg.Uid)
				}
				fightRoutineMsgChan, exist := fightRoutineMsgChanMap[fightMsg.FightRoutineId]
				if !exist {
					logger.Error("could not found fight routine msg chan by fight routine id: %v", fightMsg.FightRoutineId)
					continue
				}
				fightRoutineMsgChan <- netMsg
			}
		}
	}
}

// SendMsg 发送消息给客户端
func SendMsg(messageQueue *mq.MessageQueue, cmdId uint16, userId uint32, gateAppId string, payloadMsg pb.Message) {
	if userId < 100000000 || payloadMsg == nil {
		return
	}
	gameMsg := new(mq.GameMsg)
	gameMsg.UserId = userId
	gameMsg.CmdId = cmdId
	gameMsg.ClientSeq = 0
	// 在这里直接序列化成二进制数据 防止发送的消息内包含各种游戏数据指针 而造成并发读写的问题
	payloadMessageData, err := pb.Marshal(payloadMsg)
	if err != nil {
		logger.Error("parse payload msg to bin error: %v", err)
		return
	}
	gameMsg.PayloadMessageData = payloadMessageData
	messageQueue.SendToGate(gateAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeGame,
		EventId: mq.NormalMsg,
		GameMsg: gameMsg,
	})
}

type Entity struct {
	entityId     uint32
	fightPropMap map[uint32]float32
	uid          uint32
	avatarGuid   uint64
}

// FightRoutine 战局例程
type FightRoutine struct {
	messageQueue          *mq.MessageQueue
	entityMap             map[uint32]*Entity
	combatInvokeEntryList []*proto.CombatInvokeEntry
	tickCount             uint64
	gateAppId             string
}

func runFightRoutine(fightRoutineId uint32, gateAppId string, fightRoutineMsgChan chan *mq.NetMsg, fightRoutineCloseChan chan bool, messageQueue *mq.MessageQueue) {
	f := new(FightRoutine)
	f.messageQueue = messageQueue
	f.entityMap = make(map[uint32]*Entity)
	f.combatInvokeEntryList = make([]*proto.CombatInvokeEntry, 0)
	f.tickCount = 0
	f.gateAppId = gateAppId
	logger.Debug("create fight routine, fightRoutineId: %v", fightRoutineId)
	ticker := time.NewTicker(time.Millisecond * 10)
	for {
		select {
		case netMsg := <-fightRoutineMsgChan:
			switch netMsg.MsgType {
			case mq.MsgTypeGame:
				gameMsg := netMsg.GameMsg
				f.attackHandle(gameMsg)
			case mq.MsgTypeFight:
				fightMsg := netMsg.FightMsg
				switch netMsg.EventId {
				case mq.FightRoutineAddEntity:
					f.entityMap[fightMsg.EntityId] = &Entity{
						entityId:     fightMsg.EntityId,
						fightPropMap: fightMsg.FightPropMap,
						uid:          fightMsg.Uid,
						avatarGuid:   fightMsg.AvatarGuid,
					}
				case mq.FightRoutineDelEntity:
					delete(f.entityMap, fightMsg.EntityId)
				}
			}
		case <-ticker.C:
			f.onTick()
		case <-fightRoutineCloseChan:
			logger.Debug("destroy fight routine, fightRoutineId: %v", fightRoutineId)
			return
		}
	}
}

func (f *FightRoutine) onTick() {
	f.tickCount++
	now := time.Now().UnixMilli()
	if f.tickCount%5 == 0 {
		f.onTick50MilliSecond(now)
	}
	if f.tickCount%100 == 0 {
		f.onTickSecond(now)
	}
}

func (f *FightRoutine) onTick50MilliSecond(now int64) {
	if len(f.combatInvokeEntryList) > 0 {
		combatInvocationsNotifyAll := new(proto.CombatInvocationsNotify)
		combatInvocationsNotifyAll.InvokeList = f.combatInvokeEntryList
		for _, uid := range f.getAllPlayer(f.entityMap) {
			SendMsg(f.messageQueue, cmd.CombatInvocationsNotify, uid, f.gateAppId, combatInvocationsNotifyAll)
		}
		f.combatInvokeEntryList = make([]*proto.CombatInvokeEntry, 0)
	}
}

func (f *FightRoutine) onTickSecond(now int64) {
	// 改面板
	for _, entity := range f.entityMap {
		if entity.uid == 0 {
			continue
		}
		entity.fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_ATTACK)] = 1000000
		entity.fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL)] = 1.0
		avatarFightPropNotify := &proto.AvatarFightPropNotify{
			AvatarGuid:   entity.avatarGuid,
			FightPropMap: entity.fightPropMap,
		}
		SendMsg(f.messageQueue, cmd.AvatarFightPropNotify, entity.uid, f.gateAppId, avatarFightPropNotify)
	}
}

func (f *FightRoutine) attackHandle(gameMsg *mq.GameMsg) {
	_ = gameMsg.UserId
	cmdId := gameMsg.CmdId
	_ = gameMsg.ClientSeq
	payloadMsg := gameMsg.PayloadMessage

	switch cmdId {
	case cmd.CombatInvocationsNotify:
		req := payloadMsg.(*proto.CombatInvocationsNotify)
		for _, entry := range req.InvokeList {
			if entry.ForwardType != proto.ForwardType_FORWARD_TO_ALL {
				continue
			}
			if entry.ArgumentType != proto.CombatTypeArgument_COMBAT_EVT_BEING_HIT {
				continue
			}
			hitInfo := new(proto.EvtBeingHitInfo)
			if config.CONF.Hk4e.ClientProtoProxyEnable {
				clientProtoObj := GetClientProtoObjByName("EvtBeingHitInfo")
				if clientProtoObj == nil {
					logger.Error("get client proto obj is nil")
					continue
				}
				ok := utils.UnmarshalProtoObj(hitInfo, clientProtoObj, entry.CombatData)
				if !ok {
					continue
				}
			} else {
				err := pb.Unmarshal(entry.CombatData, hitInfo)
				if err != nil {
					logger.Error("parse EvtBeingHitInfo error: %v", err)
					continue
				}
			}
			attackResult := hitInfo.AttackResult
			if attackResult == nil {
				logger.Error("attackResult is nil")
				continue
			}
			// logger.Debug("run attack handler, attackResult: %v", attackResult)
			target := f.entityMap[attackResult.DefenseId]
			if target == nil {
				logger.Error("could not found target, defense id: %v", attackResult.DefenseId)
				continue
			}
			attackResult.Damage *= 100
			damage := attackResult.Damage
			attackerId := attackResult.AttackerId
			_ = attackerId
			currHp := float32(0)
			if target.fightPropMap != nil {
				currHp = target.fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)]
				currHp -= damage
				if currHp < 0 {
					currHp = 0
				}
				target.fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)] = currHp
			}
			entityFightPropUpdateNotify := new(proto.EntityFightPropUpdateNotify)
			entityFightPropUpdateNotify.EntityId = target.entityId
			entityFightPropUpdateNotify.FightPropMap = make(map[uint32]float32)
			entityFightPropUpdateNotify.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)] = currHp
			for _, uid := range f.getAllPlayer(f.entityMap) {
				SendMsg(f.messageQueue, cmd.EntityFightPropUpdateNotify, uid, f.gateAppId, entityFightPropUpdateNotify)
			}
			combatData, err := pb.Marshal(hitInfo)
			if err != nil {
				logger.Error("create combat invocations entity hit info error: %v", err)
			}
			entry.CombatData = combatData
			f.combatInvokeEntryList = append(f.combatInvokeEntryList, entry)
		}
	}
}

func (f *FightRoutine) getAllPlayer(entityMap map[uint32]*Entity) []uint32 {
	uidMap := make(map[uint32]bool)
	for _, entity := range entityMap {
		if entity.uid != 0 {
			uidMap[entity.uid] = true
		}
	}
	uidList := make([]uint32, 0)
	for uid := range uidMap {
		uidList = append(uidList, uid)
	}
	return uidList
}

var ClientCmdProtoMap *client_proto.ClientCmdProtoMap
var ClientCmdProtoMapRefValue reflect.Value

func initClientCmdProtoMap() {
	if config.CONF.Hk4e.ClientProtoProxyEnable {
		ClientCmdProtoMap = client_proto.NewClientCmdProtoMap()
		ClientCmdProtoMapRefValue = reflect.ValueOf(ClientCmdProtoMap)
	}
}

func GetClientProtoObjByName(protoObjName string) pb.Message {
	fn := ClientCmdProtoMapRefValue.MethodByName("GetClientProtoObjByName")
	ret := fn.Call([]reflect.Value{reflect.ValueOf(protoObjName)})
	obj := ret[0].Interface()
	if obj == nil {
		logger.Error("try to get a not exist proto obj, protoObjName: %v", protoObjName)
		return nil
	}
	clientProtoObj := obj.(pb.Message)
	return clientProtoObj
}
