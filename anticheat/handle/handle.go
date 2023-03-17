package handle

import (
	"hk4e/common/mq"
	"hk4e/gate/kcp"
	"hk4e/node/api"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

type Handle struct {
	messageQueue *mq.MessageQueue
}

func NewHandle(messageQueue *mq.MessageQueue) (r *Handle) {
	r = new(Handle)
	r.messageQueue = messageQueue
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
			if entityMoveInfo.MotionInfo.Pos.Y > 3000.0 {
				h.KickPlayer(userId, gateAppId)
			}
		}
	}
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
