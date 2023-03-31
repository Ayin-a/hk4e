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

type QuestExec struct {
	Type  int32
	Param []string
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
	FailCondType1ComplexParam string `csv:"[失败条件]1复杂参数,omitempty"`
	FailCondType1Count        int32  `csv:"[失败条件]1次数,omitempty"`
	FailCondType2             int32  `csv:"[失败条件]2类型,omitempty"`
	FailCondType2Param1       int32  `csv:"[失败条件]2参数1,omitempty"`
	FailCondType2ComplexParam string `csv:"[失败条件]2复杂参数,omitempty"`
	FailCondType2Count        int32  `csv:"[失败条件]2次数,omitempty"`
	// 执行
	ExecType1       int32  `csv:"[执行]1类型,omitempty"`
	ExecType1Param1 string `csv:"[执行]1参数1,omitempty"`
	ExecType1Param2 string `csv:"[执行]1参数2,omitempty"`
	ExecType2       int32  `csv:"[执行]2类型,omitempty"`
	ExecType2Param1 string `csv:"[执行]2参数1,omitempty"`
	ExecType2Param2 string `csv:"[执行]2参数2,omitempty"`
	ExecType3       int32  `csv:"[执行]3类型,omitempty"`
	ExecType3Param1 string `csv:"[执行]3参数1,omitempty"`
	ExecType3Param2 string `csv:"[执行]3参数2,omitempty"`
	ExecType4       int32  `csv:"[执行]4类型,omitempty"`
	ExecType4Param1 string `csv:"[执行]4参数1,omitempty"`
	ExecType4Param2 string `csv:"[执行]4参数2,omitempty"`
	// 失败执行
	FailExecType1       int32  `csv:"[失败执行]1类型,omitempty"`
	FailExecType1Param1 string `csv:"[失败执行]1参数1,omitempty"`
	FailExecType1Param2 string `csv:"[失败执行]1参数2,omitempty"`
	FailExecType2       int32  `csv:"[失败执行]2类型,omitempty"`
	FailExecType2Param1 string `csv:"[失败执行]2参数1,omitempty"`
	FailExecType2Param2 string `csv:"[失败执行]2参数2,omitempty"`
	FailExecType3       int32  `csv:"[失败执行]3类型,omitempty"`
	FailExecType3Param1 string `csv:"[失败执行]3参数1,omitempty"`
	FailExecType3Param2 string `csv:"[失败执行]3参数2,omitempty"`
	// 开始执行
	StartExecType1       int32  `csv:"[开始执行]1类型,omitempty"`
	StartExecType1Param1 string `csv:"[开始执行]1参数1,omitempty"`
	StartExecType1Param2 string `csv:"[开始执行]1参数2,omitempty"`
	StartExecType2       int32  `csv:"[开始执行]2类型,omitempty"`
	StartExecType2Param1 string `csv:"[开始执行]2参数1,omitempty"`
	StartExecType2Param2 string `csv:"[开始执行]2参数2,omitempty"`
	StartExecType3       int32  `csv:"[开始执行]3类型,omitempty"`
	StartExecType3Param1 string `csv:"[开始执行]3参数1,omitempty"`
	StartExecType3Param2 string `csv:"[开始执行]3参数2,omitempty"`

	AcceptCondList []*QuestCond // 领取条件
	FinishCondList []*QuestCond // 完成条件
	FailCondList   []*QuestCond // 失败条件
	ExecList       []*QuestExec // 执行
	FailExecList   []*QuestExec // 失败执行
	StartExecList  []*QuestExec // 开始执行
}

func (g *GameDataConfig) loadQuestData() {
	g.QuestDataMap = make(map[int32]*QuestData)
	fileNameList := []string{"QuestData.txt", "QuestData_Exported.txt"}
	for _, fileName := range fileNameList {
		questDataList := make([]*QuestData, 0)
		readTable[QuestData](g.txtPrefix+fileName, &questDataList)
		for _, questData := range questDataList {
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
			questData.FailCondList = make([]*QuestCond, 0)
			if questData.FailCondType1 != 0 {
				paramList := make([]int32, 0)
				if questData.FailCondType1Param1 != 0 {
					paramList = append(paramList, questData.FailCondType1Param1)
				}
				questData.FailCondList = append(questData.FailCondList, &QuestCond{
					Type:         questData.FailCondType1,
					Param:        paramList,
					ComplexParam: questData.FailCondType1ComplexParam,
					Count:        questData.FailCondType1Count,
				})
			}
			if questData.FailCondType2 != 0 {
				paramList := make([]int32, 0)
				if questData.FailCondType2Param1 != 0 {
					paramList = append(paramList, questData.FailCondType2Param1)
				}
				questData.FailCondList = append(questData.FailCondList, &QuestCond{
					Type:         questData.FailCondType2,
					Param:        paramList,
					ComplexParam: questData.FailCondType2ComplexParam,
					Count:        questData.FailCondType2Count,
				})
			}
			// 执行
			questData.ExecList = make([]*QuestExec, 0)
			if questData.ExecType1 != 0 {
				paramList := make([]string, 0)
				if questData.ExecType1Param1 != "" {
					paramList = append(paramList, questData.ExecType1Param1)
				}
				if questData.ExecType1Param2 != "" {
					paramList = append(paramList, questData.ExecType1Param2)
				}
				questData.ExecList = append(questData.ExecList, &QuestExec{
					Type:  questData.ExecType1,
					Param: paramList,
				})
			}
			if questData.ExecType2 != 0 {
				paramList := make([]string, 0)
				if questData.ExecType2Param1 != "" {
					paramList = append(paramList, questData.ExecType2Param1)
				}
				if questData.ExecType2Param2 != "" {
					paramList = append(paramList, questData.ExecType2Param2)
				}
				questData.ExecList = append(questData.ExecList, &QuestExec{
					Type:  questData.ExecType2,
					Param: paramList,
				})
			}
			if questData.ExecType3 != 0 {
				paramList := make([]string, 0)
				if questData.ExecType3Param1 != "" {
					paramList = append(paramList, questData.ExecType3Param1)
				}
				if questData.ExecType3Param2 != "" {
					paramList = append(paramList, questData.ExecType3Param2)
				}
				questData.ExecList = append(questData.ExecList, &QuestExec{
					Type:  questData.ExecType3,
					Param: paramList,
				})
			}
			if questData.ExecType4 != 0 {
				paramList := make([]string, 0)
				if questData.ExecType4Param1 != "" {
					paramList = append(paramList, questData.ExecType4Param1)
				}
				if questData.ExecType4Param2 != "" {
					paramList = append(paramList, questData.ExecType4Param2)
				}
				questData.ExecList = append(questData.ExecList, &QuestExec{
					Type:  questData.ExecType4,
					Param: paramList,
				})
			}
			// 失败执行
			questData.FailExecList = make([]*QuestExec, 0)
			if questData.FailExecType1 != 0 {
				paramList := make([]string, 0)
				if questData.FailExecType1Param1 != "" {
					paramList = append(paramList, questData.FailExecType1Param1)
				}
				if questData.FailExecType1Param2 != "" {
					paramList = append(paramList, questData.FailExecType1Param2)
				}
				questData.FailExecList = append(questData.FailExecList, &QuestExec{
					Type:  questData.FailExecType1,
					Param: paramList,
				})
			}
			if questData.FailExecType2 != 0 {
				paramList := make([]string, 0)
				if questData.FailExecType2Param1 != "" {
					paramList = append(paramList, questData.FailExecType2Param1)
				}
				if questData.FailExecType2Param2 != "" {
					paramList = append(paramList, questData.FailExecType2Param2)
				}
				questData.FailExecList = append(questData.FailExecList, &QuestExec{
					Type:  questData.FailExecType2,
					Param: paramList,
				})
			}
			if questData.FailExecType3 != 0 {
				paramList := make([]string, 0)
				if questData.FailExecType3Param1 != "" {
					paramList = append(paramList, questData.FailExecType3Param1)
				}
				if questData.FailExecType3Param2 != "" {
					paramList = append(paramList, questData.FailExecType3Param2)
				}
				questData.FailExecList = append(questData.FailExecList, &QuestExec{
					Type:  questData.FailExecType3,
					Param: paramList,
				})
			}
			// 开始执行
			questData.StartExecList = make([]*QuestExec, 0)
			if questData.StartExecType1 != 0 {
				paramList := make([]string, 0)
				if questData.StartExecType1Param1 != "" {
					paramList = append(paramList, questData.StartExecType1Param1)
				}
				if questData.StartExecType1Param2 != "" {
					paramList = append(paramList, questData.StartExecType1Param2)
				}
				questData.StartExecList = append(questData.StartExecList, &QuestExec{
					Type:  questData.StartExecType1,
					Param: paramList,
				})
			}
			if questData.StartExecType2 != 0 {
				paramList := make([]string, 0)
				if questData.StartExecType2Param1 != "" {
					paramList = append(paramList, questData.StartExecType2Param1)
				}
				if questData.StartExecType2Param2 != "" {
					paramList = append(paramList, questData.StartExecType2Param2)
				}
				questData.StartExecList = append(questData.StartExecList, &QuestExec{
					Type:  questData.StartExecType2,
					Param: paramList,
				})
			}
			if questData.StartExecType3 != 0 {
				paramList := make([]string, 0)
				if questData.StartExecType3Param1 != "" {
					paramList = append(paramList, questData.StartExecType3Param1)
				}
				if questData.StartExecType3Param2 != "" {
					paramList = append(paramList, questData.StartExecType3Param2)
				}
				questData.StartExecList = append(questData.StartExecList, &QuestExec{
					Type:  questData.StartExecType3,
					Param: paramList,
				})
			}
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
