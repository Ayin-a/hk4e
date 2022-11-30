package game

import (
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// HandleStamina 处理即时耐力消耗
func (g *GameManager) HandleStamina(player *model.Player, motionState proto.MotionState) {
	staminaInfo := player.StaminaInfo
	logger.LOG.Debug("stamina handle, uid: %v, motionState: %v", player.PlayerID, motionState)

	// 记录玩家的此时位置
	staminaInfo.CurPos = &model.Vector{
		X: player.Pos.X,
		Y: player.Pos.Y,
		Z: player.Pos.Z,
	}

	// 未改变状态执行后面没有意义
	if motionState == staminaInfo.State {
		return
	}

	// 设置用于持续消耗或恢复耐力的值
	g.SetStaminaCost(player, motionState)

	// 根据玩家的状态立刻消耗耐力
	switch motionState {
	case proto.MotionState_MOTION_STATE_CLIMB:
		// 攀爬
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMB_START)
	case proto.MotionState_MOTION_STATE_DASH_BEFORE_SHAKE:
		// 冲刺
		g.UpdateStamina(player, constant.StaminaCostConst.SPRINT)
	case proto.MotionState_MOTION_STATE_CLIMB_JUMP:
		// 攀爬跳跃
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMB_JUMP)
	case proto.MotionState_MOTION_STATE_SWIM_DASH:
		// 游泳冲刺
		g.UpdateStamina(player, constant.StaminaCostConst.SWIM_DASH_START)
	}
}

// StaminaHandler 处理持续耐力消耗
func (g *GameManager) StaminaHandler(player *model.Player) {
	staminaInfo := player.StaminaInfo

	// 添加的耐力大于0为恢复
	if staminaInfo.Cost > 0 {
		// 耐力延迟1s(5 ticks)恢复 动作状态为加速将立刻恢复耐力
		if staminaInfo.RestoreDelay < 5 && staminaInfo.State != proto.MotionState_MOTION_STATE_POWERED_FLY && staminaInfo.State != proto.MotionState_MOTION_STATE_SKIFF_POWERED_DASH {
			logger.LOG.Debug("stamina delay add, restoreDelay: %v", staminaInfo.RestoreDelay)
			staminaInfo.RestoreDelay++
			return // 不恢复耐力
		}
	}

	// 更新玩家耐力
	g.UpdateStamina(player, staminaInfo.Cost)

	// 记录坐标 用于判断是否移动
	staminaInfo.PrevPos = staminaInfo.CurPos
}

// SetStaminaCost 设置动作需要消耗的耐力
func (g *GameManager) SetStaminaCost(player *model.Player, state proto.MotionState) {
	staminaInfo := player.StaminaInfo

	// 耐力消耗值
	var cost int32

	// 根据状态决定要修改的耐力
	// TODO 角色天赋 食物 会影响耐力消耗
	switch state {
	// 消耗耐力
	case proto.MotionState_MOTION_STATE_CLIMB:
		// 攀爬
		// TODO 不应该通过这种方式判断玩家是否移动 应该有更好的方式
		if g.GetPlayerIsMoving(staminaInfo) {
			cost = constant.StaminaCostConst.CLIMBING
		}
	case proto.MotionState_MOTION_STATE_DASH:
		// 疾跑
		cost = constant.StaminaCostConst.DASH
	case proto.MotionState_MOTION_STATE_FLY, proto.MotionState_MOTION_STATE_FLY_FAST, proto.MotionState_MOTION_STATE_FLY_SLOW:
		// 飞行
		cost = constant.StaminaCostConst.FLY
	case proto.MotionState_MOTION_STATE_SWIM_MOVE:
		// 游泳移动
		cost = constant.StaminaCostConst.SWIMMING
	case proto.MotionState_MOTION_STATE_SWIM_DASH:
		// 游泳加速
		cost = constant.StaminaCostConst.SWIM_DASH
	case proto.MotionState_MOTION_STATE_SKIFF_DASH:
		// 小艇加速移动
		// TODO 玩家使用载具时需要用载具的协议发送prop
		cost = constant.StaminaCostConst.SKIFF_DASH
	// 恢复耐力
	case proto.MotionState_MOTION_STATE_DANGER_RUN, proto.MotionState_MOTION_STATE_RUN:
		// 跑步
		cost = constant.StaminaCostConst.RUN
	case proto.MotionState_MOTION_STATE_DANGER_STANDBY_MOVE, proto.MotionState_MOTION_STATE_DANGER_STANDBY, proto.MotionState_MOTION_STATE_LADDER_TO_STANDBY, proto.MotionState_MOTION_STATE_STANDBY_MOVE, proto.MotionState_MOTION_STATE_STANDBY:
		// 站立
		cost = constant.StaminaCostConst.STANDBY
	case proto.MotionState_MOTION_STATE_DANGER_WALK, proto.MotionState_MOTION_STATE_WALK:
		// 走路
		cost = constant.StaminaCostConst.WALK
	case proto.MotionState_MOTION_STATE_POWERED_FLY:
		// 飞行加速 (风圈等)
		cost = constant.StaminaCostConst.POWERED_FLY
	case proto.MotionState_MOTION_STATE_SKIFF_POWERED_DASH:
		// 小艇加速 (风圈等)
		cost = constant.StaminaCostConst.POWERED_SKIFF
	}

	// 确保目前的动作状态会改变耐力
	// 如果会则修改记录 tick执行时会调用数据
	if cost != 0 {
		staminaInfo.State = state
		staminaInfo.Cost = cost
	}
}

// GetPlayerIsMoving 玩家是否正在移动
func (g *GameManager) GetPlayerIsMoving(staminaInfo *model.StaminaInfo) bool {
	if staminaInfo.PrevPos == nil || staminaInfo.CurPos == nil {
		return false
	}
	diffX := staminaInfo.CurPos.X - staminaInfo.PrevPos.X
	diffY := staminaInfo.CurPos.Y - staminaInfo.PrevPos.Y
	diffZ := staminaInfo.CurPos.Z - staminaInfo.PrevPos.Z
	logger.LOG.Debug("get player is moving, diffX: %v, diffY: %v, diffZ: %v", diffX, diffY, diffZ)
	return diffX > 0.3 || diffY > 0.2 || diffZ > 0.3
}

// UpdateStamina 更新耐力 当前耐力值 + 消耗的耐力值
func (g *GameManager) UpdateStamina(player *model.Player, staminaCost int32) {
	// 耐力增加0是没有意义的
	if staminaCost == 0 {
		return
	}
	// 消耗耐力重新计算恢复需要延迟的tick
	if staminaCost < 0 {
		logger.LOG.Debug("stamina delay reset, restoreDelay: %v", player.StaminaInfo.RestoreDelay)
		player.StaminaInfo.RestoreDelay = 0
	}

	// 玩家最大耐力值
	maxStamina := int32(player.PropertiesMap[constant.PlayerPropertyConst.PROP_MAX_STAMINA])
	// 玩家现行耐力值
	curStamina := int32(player.PropertiesMap[constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA])

	// 即将更改为的耐力值
	stamina := curStamina + staminaCost

	// 确保耐力值不超出范围
	if stamina > maxStamina {
		stamina = maxStamina
	} else if stamina < 0 {
		stamina = 0
	}

	g.SetStamina(player, uint32(stamina))
}

// SetStamina 设置玩家的耐力
func (g *GameManager) SetStamina(player *model.Player, stamina uint32) {
	prop := constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA

	// 设置玩家的耐力prop
	player.PropertiesMap[prop] = stamina

	// PacketPlayerPropNotify
	playerPropNotify := new(proto.PlayerPropNotify)
	playerPropNotify.PropMap = make(map[uint32]*proto.PropValue)
	playerPropNotify.PropMap[uint32(prop)] = &proto.PropValue{
		Type: uint32(prop),
		Val:  int64(player.PropertiesMap[prop]),
		Value: &proto.PropValue_Ival{
			Ival: int64(player.PropertiesMap[prop]),
		},
	}
	g.SendMsg(cmd.PlayerPropNotify, player.PlayerID, player.ClientSeq, playerPropNotify)
}
