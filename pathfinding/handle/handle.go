package handle

import (
	"hk4e/common/mq"
	"hk4e/node/api"
	"hk4e/pathfinding/world"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"

	pb "google.golang.org/protobuf/proto"
)

type Handle struct {
	worldStatic  *world.WorldStatic
	messageQueue *mq.MessageQueue
}

func NewHandle(messageQueue *mq.MessageQueue) (r *Handle) {
	r = new(Handle)
	r.worldStatic = world.NewWorldStatic()
	r.worldStatic.InitTerrain()
	r.messageQueue = messageQueue
	go r.run()
	return r
}

func (h *Handle) run() {
	for i := 0; i < 4; i++ {
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
				case cmd.QueryPathReq:
					h.QueryPath(gameMsg.UserId, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
				case cmd.ObstacleModifyNotify:
					h.ObstacleModifyNotify(gameMsg.UserId, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
				}
			}
		}()
	}
}

// SendMsg 发送消息给客户端
func (h *Handle) SendMsg(cmdId uint16, userId uint32, gateAppId string, payloadMsg pb.Message) {
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
	h.messageQueue.SendToGate(gateAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeGame,
		EventId: mq.NormalMsg,
		GameMsg: gameMsg,
	})
}
