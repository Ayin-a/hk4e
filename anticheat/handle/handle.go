package handle

import (
	"math"
	"time"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gate/kcp"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

const (
	MoveVectorCacheNum = 100
	MaxMoveSpeed       = 50.0
)

type MoveVector struct {
	pos  *proto.Vector
	time int64
}

type AnticheatContext struct {
	moveVectorList []*MoveVector
}

func (a *AnticheatContext) Move(pos *proto.Vector) {
	now := time.Now().UnixMilli()
	if len(a.moveVectorList) > 0 {
		lastMoveVector := a.moveVectorList[len(a.moveVectorList)-1]
		if now-lastMoveVector.time < 1000 {
			return
		}
	}
	a.moveVectorList = append(a.moveVectorList, &MoveVector{
		pos:  pos,
		time: now,
	})
	if len(a.moveVectorList) > MoveVectorCacheNum {
		a.moveVectorList = a.moveVectorList[len(a.moveVectorList)-MoveVectorCacheNum:]
	}
}

func (a *AnticheatContext) GetMoveSpeed() float32 {
	avgMoveSpeed := float32(0.0)
	if len(a.moveVectorList) < MoveVectorCacheNum {
		return avgMoveSpeed
	}
	for index := range a.moveVectorList {
		if index+1 >= len(a.moveVectorList) {
			break
		}
		nextMoveVector := a.moveVectorList[index+1]
		beforeMoveVector := a.moveVectorList[index]
		dx := float32(math.Sqrt(
			float64((nextMoveVector.pos.X-beforeMoveVector.pos.X)*(nextMoveVector.pos.X-beforeMoveVector.pos.X)) +
				float64((nextMoveVector.pos.Y-beforeMoveVector.pos.Y)*(nextMoveVector.pos.Y-beforeMoveVector.pos.Y)) +
				float64((nextMoveVector.pos.Z-beforeMoveVector.pos.Z)*(nextMoveVector.pos.Z-beforeMoveVector.pos.Z)),
		))
		dt := float32(nextMoveVector.time-beforeMoveVector.time) / 1000.0
		avgMoveSpeed += dx / dt
	}
	avgMoveSpeed /= float32(len(a.moveVectorList))
	return avgMoveSpeed
}

func NewAnticheatContext() *AnticheatContext {
	r := &AnticheatContext{
		moveVectorList: make([]*MoveVector, 0),
	}
	return r
}

type Handle struct {
	messageQueue   *mq.MessageQueue
	playerAcCtxMap map[uint32]*AnticheatContext
}

func (h *Handle) GetPlayerAcCtx(userId uint32) *AnticheatContext {
	ctx, exist := h.playerAcCtxMap[userId]
	if !exist {
		ctx = NewAnticheatContext()
		h.playerAcCtxMap[userId] = ctx
	}
	return ctx
}

func NewHandle(messageQueue *mq.MessageQueue) (r *Handle) {
	r = new(Handle)
	r.messageQueue = messageQueue
	r.playerAcCtxMap = make(map[uint32]*AnticheatContext)
	r.run()
	return r
}

func (h *Handle) run() {
	go func() {
		for {
			netMsg := <-h.messageQueue.GetNetMsg()
			if netMsg.MsgType != mq.MsgTypeGame {
				continue
			}
			if netMsg.EventId != mq.NormalMsg {
				continue
			}
			if netMsg.OriginServerType != api.GATE {
				continue
			}
			gameMsg := netMsg.GameMsg
			switch gameMsg.CmdId {
			case cmd.CombatInvocationsNotify:
				h.CombatInvocationsNotify(gameMsg.UserId, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
			}
		}
	}()
}

func (h *Handle) CombatInvocationsNotify(userId uint32, gateAppId string, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.CombatInvocationsNotify)
	for _, entry := range req.InvokeList {
		switch entry.ArgumentType {
		case proto.CombatTypeArgument_ENTITY_MOVE:
			entityMoveInfo := new(proto.EntityMoveInfo)
			err := pb.Unmarshal(entry.CombatData, entityMoveInfo)
			if err != nil {
				continue
			}
			if GetEntityType(entityMoveInfo.EntityId) != constant.ENTITY_TYPE_AVATAR {
				continue
			}
			// 玩家超速移动检测
			ctx := h.GetPlayerAcCtx(userId)
			ctx.Move(entityMoveInfo.MotionInfo.Pos)
			moveSpeed := ctx.GetMoveSpeed()
			logger.Debug("player move speed: %v, uid: %v", moveSpeed, userId)
			if moveSpeed > MaxMoveSpeed {
				logger.Warn("player move overspeed, speed: %v, uid: %v", moveSpeed, userId)
				h.KickPlayer(userId, gateAppId)
			}
		}
	}
}

func GetEntityType(entityId uint32) int {
	return int(entityId >> 24)
}

func (h *Handle) KickPlayer(userId uint32, gateAppId string) {
	h.messageQueue.SendToGate(gateAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeConnCtrl,
		EventId: mq.KickPlayerNotify,
		ConnCtrlMsg: &mq.ConnCtrlMsg{
			KickUserId: userId,
			KickReason: kcp.EnetServerKillClient,
		},
	})
}
