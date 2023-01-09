package game

import (
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
	"time"
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
					go func() {
						time.Sleep(3 * 1000)
						// 默认选第一张牌
						cardInfo := gameController.cardMap[CardInfoType_Char][0]
						// 操控者选择角色牌
						g.game.ControllerSelectChar(gameController, cardInfo, []uint32{})
					}()
				case proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN:
					if gameController.allow == 0 {
						return
					}
					go func() {
						time.Sleep(3 * 1000)
						g.game.ControllerUseSkill(gameController, gameController.GetSelectedCharCard().skillList[0].skillId, []uint32{})
					}()
				}
			case *proto.GCGMessage_DiceRoll:
				// 摇完骰子
				msg := message.GetDiceRoll()
				if msg.ControllerId != g.controllerId {
					return
				}
				logger.Error("敌方行动意图")
				go func() {
					time.Sleep(3 * 1000)
					cardInfo1 := g.game.controllerMap[g.controllerId].cardMap[CardInfoType_Char][0]
					cardInfo2 := g.game.controllerMap[g.controllerId].cardMap[CardInfoType_Char][1]
					g.game.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.game.GCGMsgPVEIntention(&proto.GCGMsgPVEIntention{CardGuid: cardInfo1.guid, SkillIdList: []uint32{cardInfo1.skillList[0].skillId}}, &proto.GCGMsgPVEIntention{CardGuid: cardInfo2.guid, SkillIdList: []uint32{cardInfo2.skillList[0].skillId}}))
					g.game.SendAllMsgPack()
					g.game.SetControllerAllow(g.game.controllerMap[g.controllerId], false, true)
					g.game.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.game.GCGMsgPhaseContinue())
				}()
			}
		}
	}
}
