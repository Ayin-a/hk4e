package handle

import (
	"math"
	"time"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gate/kcp"
	"hk4e/gdconf"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

const (
	MoveVectorCacheNum = 10
	MaxMoveSpeed       = 30.0
	JumpDistance       = 100.0
	PointDistance      = 10.0
)

type MoveVector struct {
	pos  *proto.Vector
	time int64
}

type AnticheatContext struct {
	sceneId        uint32
	moveVectorList []*MoveVector
}

func (a *AnticheatContext) Move(pos *proto.Vector) bool {
	now := time.Now().UnixMilli()
	if len(a.moveVectorList) > 0 {
		lastMoveVector := a.moveVectorList[len(a.moveVectorList)-1]
		if now-lastMoveVector.time < 1000 {
			return true
		}
		distance := GetDistance(pos, lastMoveVector.pos)
		if distance > JumpDistance {
			// 瞬时变化太大 判断是否为传送
			scenePointMap := gdconf.GetScenePointMapBySceneId(int32(a.sceneId))
			if scenePointMap == nil {
				return true
			}
			isJump := true
			for _, pointData := range scenePointMap {
				d := GetDistance(pos, &proto.Vector{
					X: float32(pointData.TranPos.X),
					Y: float32(pointData.TranPos.Y),
					Z: float32(pointData.TranPos.Z),
				})
				if d < PointDistance {
					isJump = false
					break
				}
			}
			if isJump {
				return false
			} else {
				a.moveVectorList = make([]*MoveVector, 0)
			}
		}
	}
	a.moveVectorList = append(a.moveVectorList, &MoveVector{
		pos:  pos,
		time: now,
	})
	if len(a.moveVectorList) > MoveVectorCacheNum {
		a.moveVectorList = a.moveVectorList[len(a.moveVectorList)-MoveVectorCacheNum:]
	}
	return true
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
		dx := GetDistance(nextMoveVector.pos, beforeMoveVector.pos)
		dt := float32(nextMoveVector.time-beforeMoveVector.time) / 1000.0
		avgMoveSpeed += dx / dt
	}
	avgMoveSpeed /= float32(len(a.moveVectorList))
	return avgMoveSpeed
}

func NewAnticheatContext() *AnticheatContext {
	r := &AnticheatContext{
		sceneId:        0,
		moveVectorList: make([]*MoveVector, 0),
	}
	return r
}

type Handle struct {
	messageQueue   *mq.MessageQueue
	playerAcCtxMap map[uint32]*AnticheatContext
}

func (h *Handle) AddPlayerAcCtx(userId uint32) {
	h.playerAcCtxMap[userId] = NewAnticheatContext()
}

func (h *Handle) DelPlayerAcCtx(userId uint32) {
	delete(h.playerAcCtxMap, userId)
}

func (h *Handle) GetPlayerAcCtx(userId uint32) *AnticheatContext {
	return h.playerAcCtxMap[userId]
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
			switch netMsg.MsgType {
			case mq.MsgTypeGame:
				if netMsg.OriginServerType != api.GATE {
					continue
				}
				if netMsg.EventId != mq.NormalMsg {
					continue
				}
				gameMsg := netMsg.GameMsg
				switch gameMsg.CmdId {
				case cmd.CombatInvocationsNotify:
					h.CombatInvocationsNotify(gameMsg.UserId, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
				case cmd.ToTheMoonEnterSceneReq:
					h.ToTheMoonEnterSceneReq(gameMsg.UserId, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
				}
			case mq.MsgTypeServer:
				serverMsg := netMsg.ServerMsg
				switch netMsg.EventId {
				case mq.ServerUserOnlineStateChangeNotify:
					if serverMsg.IsOnline {
						h.AddPlayerAcCtx(serverMsg.UserId)
					} else {
						h.DelPlayerAcCtx(serverMsg.UserId)
					}
				}
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
			if entityMoveInfo.MotionInfo.Pos != nil {
				continue
			}
			// 玩家超速移动检测
			ctx := h.GetPlayerAcCtx(userId)
			if ctx == nil {
				logger.Error("get player anticheat context is nil, uid: %v", userId)
				continue
			}
			ok := ctx.Move(entityMoveInfo.MotionInfo.Pos)
			if !ok {
				logger.Warn("player move jump, pos: %v, uid: %v", entityMoveInfo.MotionInfo.Pos, userId)
				h.KickPlayer(userId, gateAppId)
				continue
			}
			moveSpeed := ctx.GetMoveSpeed()
			logger.Debug("player move speed: %v, uid: %v", moveSpeed, userId)
			if moveSpeed > MaxMoveSpeed {
				logger.Warn("player move overspeed, speed: %v, uid: %v", moveSpeed, userId)
				h.KickPlayer(userId, gateAppId)
				continue
			}
		}
	}
}

func (h *Handle) ToTheMoonEnterSceneReq(userId uint32, gateAppId string, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.ToTheMoonEnterSceneReq)
	ctx := h.GetPlayerAcCtx(userId)
	if ctx == nil {
		logger.Error("get player anticheat context is nil, uid: %v", userId)
		return
	}
	ctx.sceneId = req.SceneId
}

func GetEntityType(entityId uint32) int {
	return int(entityId >> 24)
}

func GetDistance(v1 *proto.Vector, v2 *proto.Vector) float32 {
	return float32(math.Sqrt(
		float64((v1.X-v2.X)*(v1.X-v2.X)) +
			float64((v1.Y-v2.Y)*(v1.Y-v2.Y)) +
			float64((v1.Z-v2.Z)*(v1.Z-v2.Z)),
	))
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
