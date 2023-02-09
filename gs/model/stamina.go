package model

import (
	"hk4e/common/constant"
	"hk4e/protocol/proto"
)

type StaminaInfo struct {
	State               proto.MotionState // 动作状态
	CostStamina         int32             // 消耗或恢复的耐力
	PlayerRestoreDelay  uint8             // 玩家耐力回复延时
	VehicleRestoreDelay uint8             // 载具耐力回复延时
	LastCasterId        uint32            // 最后释放技能者的Id
	LastSkillId         uint32            // 最后释放的技能Id
	LastSkillTime       int64             // 最后释放技能的时间
	LastSkillStartTime  int64             // 最后执行开始技能耐力消耗的时间
	LastSkillChargeTime int64             // 最后执行技能耐力消耗的时间
	DrownBackDelay      uint8             // 溺水返回安全点延时
}

// SetStaminaCost 设置动作需要消耗的耐力
func (s *StaminaInfo) SetStaminaCost(state proto.MotionState) {
	// 根据状态决定要修改的耐力
	// TODO 角色天赋 食物 会影响耐力消耗
	switch state {
	// 消耗耐力
	case proto.MotionState_MOTION_DASH:
		// 快速跑步
		s.CostStamina = constant.STAMINA_COST_DASH
	case proto.MotionState_MOTION_FLY, proto.MotionState_MOTION_FLY_FAST, proto.MotionState_MOTION_FLY_SLOW:
		// 滑翔
		s.CostStamina = constant.STAMINA_COST_FLY
	case proto.MotionState_MOTION_SWIM_DASH:
		// 快速游泳
		s.CostStamina = constant.STAMINA_COST_SWIM_DASH
	case proto.MotionState_MOTION_SKIFF_DASH:
		// 浪船加速
		s.CostStamina = constant.STAMINA_COST_SKIFF_DASH
	// 恢复耐力
	case proto.MotionState_MOTION_DANGER_RUN, proto.MotionState_MOTION_RUN:
		// 正常跑步
		s.CostStamina = constant.STAMINA_COST_RUN
	case proto.MotionState_MOTION_DANGER_STANDBY_MOVE, proto.MotionState_MOTION_DANGER_STANDBY, proto.MotionState_MOTION_LADDER_TO_STANDBY, proto.MotionState_MOTION_STANDBY_MOVE, proto.MotionState_MOTION_STANDBY:
		// 站立
		s.CostStamina = constant.STAMINA_COST_STANDBY
	case proto.MotionState_MOTION_DANGER_WALK, proto.MotionState_MOTION_WALK:
		// 走路
		s.CostStamina = constant.STAMINA_COST_WALK
	case proto.MotionState_MOTION_SKIFF_BOARDING, proto.MotionState_MOTION_SKIFF_NORMAL:
		// 浪船正常移动或停下
		s.CostStamina = constant.STAMINA_COST_SKIFF_NORMAL
	case proto.MotionState_MOTION_POWERED_FLY:
		// 滑翔加速 (风圈等)
		s.CostStamina = constant.STAMINA_COST_POWERED_FLY
	case proto.MotionState_MOTION_SKIFF_POWERED_DASH:
		// 浪船加速 (风圈等)
		s.CostStamina = constant.STAMINA_COST_POWERED_SKIFF
	// 缓慢动作将在客户端发送消息后消耗
	case proto.MotionState_MOTION_CLIMB, proto.MotionState_MOTION_SWIM_MOVE:
		// 缓慢攀爬 或 缓慢游泳
		s.CostStamina = 0
	}
}
