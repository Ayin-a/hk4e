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
						time.Sleep(1000 * 3)
						// 默认选第一张牌
						cardInfo := gameController.cardList[0]
						// 操控者选择角色牌
						g.game.ControllerSelectChar(gameController, cardInfo, []uint32{})
					}()
				}
			}
		}
	}
}
