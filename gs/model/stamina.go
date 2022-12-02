package model

import (
	"hk4e/protocol/proto"
)

type StaminaInfo struct {
	State         proto.MotionState // 动作状态
	CostStamina   int32             // 消耗或恢复的耐力
	RestoreDelay  uint8             // 恢复延迟
	LastSkillId   uint32            // 最后释放的技能Id
	LastSkillTime int64             // 最后释放技能的时间
}
