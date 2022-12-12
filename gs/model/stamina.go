package model

import (
	"hk4e/protocol/proto"
	"time"
)

type StaminaInfo struct {
	State         proto.MotionState // 动作状态
	CostStamina   int32             // 消耗或恢复的耐力
	RestoreDelay  uint8             // 恢复延迟
	LastCasterId  uint32            // 最后释放技能者的Id
	LastSkillId   uint32            // 最后释放的技能Id
	LastSkillTime int64             // 最后释放技能的时间
}

// SetLastSkill 记录技能以便后续使用
func (s *StaminaInfo) SetLastSkill(casterId uint32, skillId uint32) {
	s.LastCasterId = casterId
	s.LastSkillId = skillId
	s.LastSkillTime = time.Now().UnixMilli()
}
