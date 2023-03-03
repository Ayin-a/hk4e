package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// AddQuestContentProgressReq 添加任务内容进度请求
func (g *GameManager) AddQuestContentProgressReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AddQuestContentProgressReq)
	logger.Error("AddQuestContentProgressReq: %v", req)

	g.AddQuestProgress(player, req)

	rsp := &proto.AddQuestContentProgressRsp{
		ContentType: req.ContentType,
	}
	g.SendMsg(cmd.AddQuestContentProgressRsp, player.PlayerID, player.ClientSeq, rsp)

	g.AcceptQuest(player, true)
}

// AddQuestProgress 添加任务进度
func (g *GameManager) AddQuestProgress(player *model.Player, req *proto.AddQuestContentProgressReq) {
	dbQuest := player.GetDbQuest()
	updateQuestIdList := make([]uint32, 0)
	for _, quest := range dbQuest.GetQuestMap() {
		questDataConfig := gdconf.GetQuestDataById(int32(quest.QuestId))
		if questDataConfig == nil {
			logger.Error("get quest data config is nil, questId: %v", quest.QuestId)
			continue
		}
		for index, finishCond := range questDataConfig.FinishCondList {
			if len(finishCond.Param) != 1 {
				continue
			}
			if req.ContentType != uint32(finishCond.Type) || req.Param != uint32(finishCond.Param[0]) {
				continue
			}
			dbQuest.AddQuestProgress(quest.QuestId, index, req.AddProgress)
			updateQuestIdList = append(updateQuestIdList, quest.QuestId)
		}
	}
	for _, questId := range updateQuestIdList {
		quest := dbQuest.GetQuestById(questId)
		if quest == nil {
			logger.Error("get quest is nil, questId: %v", quest.QuestId)
			continue
		}
		ntf := &proto.QuestProgressUpdateNotify{
			QuestId:            quest.QuestId,
			FinishProgressList: quest.FinishProgressList,
		}
		g.SendMsg(cmd.QuestProgressUpdateNotify, player.PlayerID, player.ClientSeq, ntf)
	}
}

// AcceptQuest 接取当前条件下能接取到的全部任务
func (g *GameManager) AcceptQuest(player *model.Player, notifyClient bool) {
	dbQuest := player.GetDbQuest()
	addQuestIdList := make([]uint32, 0)
	for _, questData := range gdconf.GetQuestDataMap() {
		if dbQuest.GetQuestById(uint32(questData.QuestId)) != nil {
			continue
		}
		canAccept := true
		for _, acceptCond := range questData.AcceptCondList {
			switch acceptCond.Type {
			case constant.QUEST_ACCEPT_COND_TYPE_STATE_EQUAL:
				// 某个任务状态等于 参数1:任务id 参数2:任务状态
				if len(acceptCond.Param) != 2 {
					logger.Error("quest accept cond config format error, questId: %v", questData.QuestId)
					canAccept = false
					break
				}
				quest := dbQuest.GetQuestById(uint32(acceptCond.Param[0]))
				if quest == nil {
					canAccept = false
					break
				}
				if quest.State != uint8(acceptCond.Param[1]) {
					canAccept = false
					break
				}
			default:
				canAccept = false
				break
			}
		}
		if canAccept {
			dbQuest.AddQuest(uint32(questData.QuestId))
			// TODO 判断任务是否能开始执行
			dbQuest.ExecQuest(uint32(questData.QuestId))
			addQuestIdList = append(addQuestIdList, uint32(questData.QuestId))
		}
	}
	if notifyClient {
		ntf := &proto.QuestListUpdateNotify{
			QuestList: make([]*proto.Quest, 0),
		}
		for _, questId := range addQuestIdList {
			pbQuest := g.PacketQuest(player, questId)
			if pbQuest == nil {
				continue
			}
			ntf.QuestList = append(ntf.QuestList, pbQuest)
		}
		g.SendMsg(cmd.QuestListUpdateNotify, player.PlayerID, player.ClientSeq, ntf)
	}
}

// PacketQuest 打包一个任务
func (g *GameManager) PacketQuest(player *model.Player, questId uint32) *proto.Quest {
	dbQuest := player.GetDbQuest()
	questDataConfig := gdconf.GetQuestDataById(int32(questId))
	if questDataConfig == nil {
		logger.Error("get quest data config is nil, questId: %v", questId)
		return nil
	}
	quest := dbQuest.GetQuestById(questId)
	if quest == nil {
		logger.Error("get quest is nil, questId: %v", quest.QuestId)
		return nil
	}
	pbQuest := &proto.Quest{
		QuestId:            quest.QuestId,
		State:              uint32(quest.State),
		StartTime:          quest.StartTime,
		ParentQuestId:      uint32(questDataConfig.ParentQuestId),
		StartGameTime:      0,
		AcceptTime:         quest.AcceptTime,
		FinishProgressList: quest.FinishProgressList,
	}
	return pbQuest
}

// PacketQuestListNotify 打包任务列表通知
func (g *GameManager) PacketQuestListNotify(player *model.Player) *proto.QuestListNotify {
	questListNotify := &proto.QuestListNotify{
		QuestList: make([]*proto.Quest, 0),
	}
	dbQuest := player.GetDbQuest()
	for _, quest := range dbQuest.GetQuestMap() {
		pbQuest := g.PacketQuest(player, quest.QuestId)
		if pbQuest == nil {
			continue
		}
		questListNotify.QuestList = append(questListNotify.QuestList, pbQuest)
	}
	return questListNotify
}
