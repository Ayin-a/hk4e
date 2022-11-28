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

	// 记录玩家的此时状态
	player.StaminaInfo.CurState = motionState
	player.StaminaInfo.CurPos = &model.Vector{
		X: player.Pos.X,
		Y: player.Pos.Y,
		Z: player.Pos.Z,
	}

	// 根据玩家的状态消耗耐力
	switch motionState {
	case proto.MotionState_MOTION_STATE_CLIMB:
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMB_START)
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

		switch staminaInfo.CurState {
		case proto.MotionState_MOTION_STATE_CLIMB:
			// 攀爬
			if isMoving {
				staminaConst = constant.StaminaCostConst.CLIMBING
			}
		case proto.MotionState_MOTION_STATE_DASH:
			// 短跑
			staminaConst = constant.StaminaCostConst.DASH
		case proto.MotionState_MOTION_STATE_RUN:
			// 跑步
			staminaConst = constant.StaminaCostConst.RUN
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
