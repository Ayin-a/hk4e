package gdconf

import (
	"hk4e/pkg/logger"
)

type QuestCond struct {
	Type         int32
	Param        []int32
	ComplexParam string
	Count        int32
}

// QuestData 任务配置表
type QuestData struct {
	QuestId       int32 `csv:"子任务ID"`
	ParentQuestId int32 `csv:"父任务ID,omitempty"`
	Sequence      int32 `csv:"序列,omitempty"`
	// 领取条件
	AcceptCondCompose     int32 `csv:"[领取条件]组合,omitempty"`
	AcceptCondType1       int32 `csv:"[领取条件]1类型,omitempty"`
	AcceptCondType1Param1 int32 `csv:"[领取条件]1参数1,omitempty"`
	AcceptCondType1Param2 int32 `csv:"[领取条件]1参数2,omitempty"`
	AcceptCondType1Param3 int32 `csv:"[领取条件]1参数3,omitempty"`
	AcceptCondType2       int32 `csv:"[领取条件]2类型,omitempty"`
	AcceptCondType2Param1 int32 `csv:"[领取条件]2参数1,omitempty"`
	AcceptCondType2Param2 int32 `csv:"[领取条件]2参数2,omitempty"`
	AcceptCondType2Param3 int32 `csv:"[领取条件]2参数3,omitempty"`
	AcceptCondType3       int32 `csv:"[领取条件]3类型,omitempty"`
	AcceptCondType3Param1 int32 `csv:"[领取条件]3参数1,omitempty"`
	AcceptCondType3Param2 int32 `csv:"[领取条件]3参数2,omitempty"`
	AcceptCondType3Param3 int32 `csv:"[领取条件]3参数3,omitempty"`
	// 完成条件
	FinishCondCompose           int32  `csv:"[完成条件]组合,omitempty"`
	FinishCondType1             int32  `csv:"[完成条件]1类型,omitempty"`
	FinishCondType1Param1       int32  `csv:"[完成条件]1参数1,omitempty"`
	FinishCondType1Param2       int32  `csv:"[完成条件]1参数2,omitempty"`
	FinishCondType1ComplexParam string `csv:"[完成条件]1复杂参数,omitempty"`
	FinishCondType1Count        int32  `csv:"[完成条件]1次数,omitempty"`
	FinishCondType2             int32  `csv:"[完成条件]2类型,omitempty"`
	FinishCondType2Param1       int32  `csv:"[完成条件]2参数1,omitempty"`
	FinishCondType2Param2       int32  `csv:"[完成条件]2参数2,omitempty"`
	FinishCondType2ComplexParam string `csv:"[完成条件]2复杂参数,omitempty"`
	FinishCondType2Count        int32  `csv:"[完成条件]2次数,omitempty"`
	FinishCondType3             int32  `csv:"[完成条件]3类型,omitempty"`
	FinishCondType3Param1       int32  `csv:"[完成条件]3参数1,omitempty"`
	FinishCondType3Param2       int32  `csv:"[完成条件]3参数2,omitempty"`
	FinishCondType3ComplexParam string `csv:"[完成条件]3复杂参数,omitempty"`
	FinishCondType3Count        int32  `csv:"[完成条件]3次数,omitempty"`
	// 失败条件
	FailCondCompose           int32  `csv:"[失败条件]组合,omitempty"`
	FailCondType1             int32  `csv:"[失败条件]1类型,omitempty"`
	FailCondType1Param1       int32  `csv:"[失败条件]1参数1,omitempty"`
	FailCondType1Param2       int32  `csv:"[失败条件]1参数2,omitempty"`
	FailCondType1ComplexParam string `csv:"[失败条件]1复杂参数,omitempty"`
	FailCondType1Count        int32  `csv:"[失败条件]1次数,omitempty"`
	FailCondType2             int32  `csv:"[失败条件]2类型,omitempty"`
	FailCondType2Param1       int32  `csv:"[失败条件]2参数1,omitempty"`
	FailCondType2Param2       int32  `csv:"[失败条件]2参数2,omitempty"`
	FailCondType2ComplexParam string `csv:"[失败条件]2复杂参数,omitempty"`
	FailCondType2Count        int32  `csv:"[失败条件]2次数,omitempty"`
	FailCondType3             int32  `csv:"[失败条件]3类型,omitempty"`
	FailCondType3Param1       int32  `csv:"[失败条件]3参数1,omitempty"`
	FailCondType3Param2       int32  `csv:"[失败条件]3参数2,omitempty"`
	FailCondType3ComplexParam string `csv:"[失败条件]3复杂参数,omitempty"`
	FailCondType3Count        int32  `csv:"[失败条件]3次数,omitempty"`

	AcceptCondList []*QuestCond // 领取条件
	FinishCondList []*QuestCond // 完成条件
	FailCondList   []*QuestCond // 失败条件
}

func (g *GameDataConfig) loadQuestData() {
	g.QuestDataMap = make(map[int32]*QuestData)
	fileNameList := []string{"QuestData.txt", "QuestData_Exported.txt"}
	for _, fileName := range fileNameList {
		questDataList := make([]*QuestData, 0)
		readTable[QuestData](g.tablePrefix+fileName, &questDataList)
		for _, questData := range questDataList {
			// list -> map
			// 领取条件
			questData.AcceptCondList = make([]*QuestCond, 0)
			if questData.AcceptCondType1 != 0 {
				paramList := make([]int32, 0)
				if questData.AcceptCondType1Param1 != 0 {
					paramList = append(paramList, questData.AcceptCondType1Param1)
				}
				if questData.AcceptCondType1Param2 != 0 {
					paramList = append(paramList, questData.AcceptCondType1Param2)
				}
				if questData.AcceptCondType1Param3 != 0 {
					paramList = append(paramList, questData.AcceptCondType1Param3)
				}
				questData.AcceptCondList = append(questData.AcceptCondList, &QuestCond{
					Type:  questData.AcceptCondType1,
					Param: paramList,
				})
			}
			if questData.AcceptCondType2 != 0 {
				paramList := make([]int32, 0)
				if questData.AcceptCondType2Param1 != 0 {
					paramList = append(paramList, questData.AcceptCondType2Param1)
				}
				if questData.AcceptCondType2Param2 != 0 {
					paramList = append(paramList, questData.AcceptCondType2Param2)
				}
				if questData.AcceptCondType2Param3 != 0 {
					paramList = append(paramList, questData.AcceptCondType2Param3)
				}
				questData.AcceptCondList = append(questData.AcceptCondList, &QuestCond{
					Type:  questData.AcceptCondType2,
					Param: paramList,
				})
			}
			if questData.AcceptCondType3 != 0 {
				paramList := make([]int32, 0)
				if questData.AcceptCondType3Param1 != 0 {
					paramList = append(paramList, questData.AcceptCondType3Param1)
				}
				if questData.AcceptCondType3Param2 != 0 {
					paramList = append(paramList, questData.AcceptCondType3Param2)
				}
				if questData.AcceptCondType3Param3 != 0 {
					paramList = append(paramList, questData.AcceptCondType3Param3)
				}
				questData.AcceptCondList = append(questData.AcceptCondList, &QuestCond{
					Type:  questData.AcceptCondType3,
					Param: paramList,
				})
			}
			// 完成条件
			questData.FinishCondList = make([]*QuestCond, 0)
			if questData.FinishCondType1 != 0 {
				paramList := make([]int32, 0)
				if questData.FinishCondType1Param1 != 0 {
					paramList = append(paramList, questData.FinishCondType1Param1)
				}
				if questData.FinishCondType1Param2 != 0 {
					paramList = append(paramList, questData.FinishCondType1Param2)
				}
				questData.FinishCondList = append(questData.FinishCondList, &QuestCond{
					Type:         questData.FinishCondType1,
					Param:        paramList,
					ComplexParam: questData.FinishCondType1ComplexParam,
					Count:        questData.FinishCondType1Count,
				})
			}
			if questData.FinishCondType2 != 0 {
				paramList := make([]int32, 0)
				if questData.FinishCondType2Param1 != 0 {
					paramList = append(paramList, questData.FinishCondType2Param1)
				}
				if questData.FinishCondType2Param2 != 0 {
					paramList = append(paramList, questData.FinishCondType2Param2)
				}
				questData.FinishCondList = append(questData.FinishCondList, &QuestCond{
					Type:         questData.FinishCondType2,
					Param:        paramList,
					ComplexParam: questData.FinishCondType2ComplexParam,
					Count:        questData.FinishCondType2Count,
				})
			}
			if questData.FinishCondType3 != 0 {
				paramList := make([]int32, 0)
				if questData.FinishCondType3Param1 != 0 {
					paramList = append(paramList, questData.FinishCondType3Param1)
				}
				if questData.FinishCondType3Param2 != 0 {
					paramList = append(paramList, questData.FinishCondType3Param2)
				}
				questData.FinishCondList = append(questData.FinishCondList, &QuestCond{
					Type:         questData.FinishCondType3,
					Param:        paramList,
					ComplexParam: questData.FinishCondType3ComplexParam,
					Count:        questData.FinishCondType3Count,
				})
			}
			// 失败条件
			g.QuestDataMap[questData.QuestId] = questData
		}
	}
	logger.Info("QuestData count: %v", len(g.QuestDataMap))
}

func GetQuestDataById(questId int32) *QuestData {
	return CONF.QuestDataMap[questId]
}

func GetQuestDataMap() map[int32]*QuestData {
	return CONF.QuestDataMap
}
