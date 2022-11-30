package model

import "hk4e/protocol/proto"

type StaminaInfo struct {
	State        proto.MotionState // 动作状态
	Cost         int32             // 消耗或恢复的耐力
	RestoreDelay uint8             // 恢复延迟

	PrevPos *Vector
	CurPos  *Vector
}
