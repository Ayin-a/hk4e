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
	logger.LOG.Debug("stamina handle, uid: %v, motionState: %v", player.PlayerID, motionState)

	staminaInfo := player.StaminaInfo

	// 记录玩家的此时状态
	staminaInfo.CurState = motionState
	staminaInfo.CurPos = &model.Vector{
		X: player.Pos.X,
		Y: player.Pos.Y,
		Z: player.Pos.Z,
	}

	// 未改变状态不消耗耐力
	if motionState == staminaInfo.PrevState {
		return
	}

	// 根据玩家的状态消耗耐力
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
		// 游泳冲刺开始
		g.UpdateStamina(player, constant.StaminaCostConst.SWIM_DASH_START)
	}
}

// StaminaHandler 处理持续耐力消耗
func (g *GameManager) StaminaHandler(player *model.Player) {
	staminaInfo := player.StaminaInfo
	isMoving := g.GetPlayerIsMoving(staminaInfo)

	// 玩家最大耐力
	maxStamina := player.PropertiesMap[constant.PlayerPropertyConst.PROP_MAX_STAMINA]
	// 玩家现行耐力
	curStamina := player.PropertiesMap[constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA]

	// 确保玩家需要执行耐力消耗
	if isMoving || curStamina < maxStamina {
		var staminaConst int32

		// 根据状态决定要修改的耐力
		// TODO 角色天赋 食物 会影响耐力消耗
		switch staminaInfo.CurState {
		case proto.MotionState_MOTION_STATE_CLIMB:
			// 攀爬
			if isMoving {
				staminaConst = constant.StaminaCostConst.CLIMBING
			}
		case proto.MotionState_MOTION_STATE_DASH:
			// 跑步加速
			staminaConst = constant.StaminaCostConst.DASH
		case proto.MotionState_MOTION_STATE_FLY, proto.MotionState_MOTION_STATE_FLY_FAST, proto.MotionState_MOTION_STATE_FLY_SLOW:
			// 飞行
			staminaConst = constant.StaminaCostConst.FLY
		case proto.MotionState_MOTION_STATE_SWIM_MOVE:
			// 游泳移动
			staminaConst = constant.StaminaCostConst.SWIMMING
		case proto.MotionState_MOTION_STATE_SWIM_DASH:
			// 游泳加速
			staminaConst = constant.StaminaCostConst.SWIM_DASH
		case proto.MotionState_MOTION_STATE_SKIFF_DASH:
			// 载具加速移动
			// TODO 玩家使用载具时需要用载具的协议发送prop
			staminaConst = constant.StaminaCostConst.SKIFF_DASH
		default:
			// 回复体力
			staminaConst = constant.StaminaCostConst.RESTORE
		}

		// 耐力延迟1s(5 ticks)恢复
		if staminaConst > 0 && staminaInfo.RestoreDelay < 5 {
			staminaInfo.RestoreDelay++
			// 不恢复耐力
			staminaConst = 0
		}

		// 更新玩家耐力
		g.UpdateStamina(player, staminaConst)
	}
	// 替换老数据
	staminaInfo.PrevState = staminaInfo.CurState
	staminaInfo.PrevPos = staminaInfo.CurPos
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
