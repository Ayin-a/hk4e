package game

import (
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

type GCGAi struct {
	game         *GCGGame // 所在的游戏
	controllerId uint32   // 操控者Id
}

// ReceiveGCGMessagePackNotify 接收GCG消息包通知
func (g *GCGAi) ReceiveGCGMessagePackNotify(notify *proto.GCGMessagePackNotify) {
	// 获取玩家的操控者对象
	gameController := g.game.controllerMap[g.controllerId]
	if gameController == nil {
		logger.Error("ai 角色 nil")
		return
	}

	for _, pack := range notify.MsgPackList {
		for _, message := range pack.MsgList {
			switch message.Message.(type) {
			case *proto.GCGMessage_PhaseChange:
				// 阶段改变
				msg := message.GetPhaseChange()
				switch msg.AfterPhase {
				case proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE:
					logger.Error("请选择你的英雄 hhh")
					// 默认选第一张牌
					cardInfo := gameController.cardList[0]
					// 操控者选择角色牌
					g.game.ControllerSelectChar(gameController, cardInfo, []uint32{})
				}
			case *proto.GCGMessage_DiceRoll:
				// 摇完骰子
				msg := message.GetPhaseChange()
				switch msg.AfterPhase {
				case proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE:
					logger.Error("战斗意识？！")
					cardInfo1 := g.game.controllerMap[g.controllerId].cardList[0]
					cardInfo2 := g.game.controllerMap[g.controllerId].cardList[1]
					g.game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.game.GCGMsgPVEIntention(&proto.GCGMsgPVEIntention{CardGuid: cardInfo1.guid, SkillIdList: []uint32{cardInfo1.skillIdList[1]}}, &proto.GCGMsgPVEIntention{CardGuid: cardInfo2.guid, SkillIdList: []uint32{cardInfo2.skillIdList[0]}}))
					g.game.SendAllMsgPack()
					g.game.SetControllerAllow(g.game.controllerMap[g.controllerId], false, true)
					g.game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.game.GCGMsgPhaseContinue())
				}
			}
		}
	}
}
