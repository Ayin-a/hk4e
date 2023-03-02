package model

import (
	"time"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

// DbQuest 玩家任务数据
type DbQuest struct {
	QuestMap map[uint32]*Quest // 任务列表 key:任务id value:任务
}

// Quest 任务
type Quest struct {
	QuestId            uint32   // 任务id
	State              uint8    // 任务状态
	AcceptTime         uint32   // 接取时间
	StartTime          uint32   // 开始执行时间
	FinishProgressList []uint32 // 任务进度
}

func (p *Player) GetDbQuest() *DbQuest {
	if p.DbQuest == nil {
		p.DbQuest = &DbQuest{
			QuestMap: make(map[uint32]*Quest),
		}
	}
	return p.DbQuest
}

// GetQuestMap 获取全部任务
func (q *DbQuest) GetQuestMap() map[uint32]*Quest {
	return q.QuestMap
}

// GetQuestById 获取一个任务
func (q *DbQuest) GetQuestById(questId uint32) *Quest {
	return q.QuestMap[questId]
}

// AddQuest 添加一个任务
func (q *DbQuest) AddQuest(questId uint32) {
	_, exist := q.QuestMap[questId]
	if exist {
		logger.Error("quest is already exist, questId: %v", questId)
		return
	}
	questDataConfig := gdconf.GetQuestDataById(int32(questId))
	if questDataConfig == nil {
		logger.Error("get quest data config is nil, questId: %v", questId)
		return
	}
	q.QuestMap[questId] = &Quest{
		QuestId:            uint32(questDataConfig.QuestId),
		State:              constant.QUEST_STATE_UNSTARTED,
		AcceptTime:         uint32(time.Now().Unix()),
		StartTime:          0,
		FinishProgressList: nil,
	}
}

// ExecQuest 开始执行一个任务
func (q *DbQuest) ExecQuest(questId uint32) {
	quest, exist := q.QuestMap[questId]
	if !exist {
		logger.Error("get quest is nil, questId: %v", questId)
		return
	}
	if quest.State != constant.QUEST_STATE_UNSTARTED {
		logger.Error("invalid quest state, questId: %v, state: %v", questId, quest.State)
		return
	}
	questDataConfig := gdconf.GetQuestDataById(int32(questId))
	if questDataConfig == nil {
		logger.Error("get quest data config is nil, questId: %v", questId)
		return
	}
	quest.State = constant.QUEST_STATE_UNFINISHED
	quest.StartTime = uint32(time.Now().Unix())
	quest.FinishProgressList = make([]uint32, len(questDataConfig.FinishCondList))
}

// DeleteQuest 删除一个任务
func (q *DbQuest) DeleteQuest(questId uint32) {
	_, exist := q.QuestMap[questId]
	if !exist {
		logger.Error("quest is not exist, questId: %v", questId)
		return
	}
	delete(q.QuestMap, questId)
}

// AddQuestProgress 添加一个任务的进度
func (q *DbQuest) AddQuestProgress(questId uint32, index int, progress uint32) {
	quest, exist := q.QuestMap[questId]
	if !exist {
		logger.Error("get quest is nil, questId: %v", questId)
		return
	}
	if quest.State != constant.QUEST_STATE_UNFINISHED {
		logger.Error("invalid quest state, questId: %v, state: %v", questId, quest.State)
		return
	}
	questDataConfig := gdconf.GetQuestDataById(int32(questId))
	if questDataConfig == nil {
		logger.Error("get quest data config is nil, questId: %v", questId)
		return
	}
	if index >= len(quest.FinishProgressList) || index >= len(questDataConfig.FinishCondList) {
		logger.Error("invalid quest progress index, questId: %v, index: %v", questId, index)
		return
	}
	quest.FinishProgressList[index] += progress
	if quest.FinishProgressList[index] >= uint32(questDataConfig.FinishCondList[index].Count) {
		quest.State = constant.QUEST_STATE_FINISHED
	}
}

// ForceFinishQuest 强制完成一个任务
func (q *DbQuest) ForceFinishQuest(questId uint32) {
	questDataConfig := gdconf.GetQuestDataById(int32(questId))
	if questDataConfig == nil {
		logger.Error("get quest data config is nil, questId: %v", questId)
		return
	}
	for index, finishCond := range questDataConfig.FinishCondList {
		q.AddQuestProgress(questId, index, uint32(finishCond.Count))
	}
}
