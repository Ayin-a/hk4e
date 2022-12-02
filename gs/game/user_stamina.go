package game

import (
	pb "google.golang.org/protobuf/proto"
	"hk4e/gdconf"
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"time"
)

// SceneAvatarStaminaStepReq 缓慢游泳或缓慢攀爬时消耗耐力
func (g *GameManager) SceneAvatarStaminaStepReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SceneAvatarStaminaStepReq)

	// 根据动作状态消耗耐力
	switch player.StaminaInfo.State {
	case proto.MotionState_MOTION_STATE_CLIMB:
		// 缓慢攀爬

		// 缓慢攀爬的耐力将根据角度不同而改变
		// rotX ∈ [0,180) x = rotX
		// rotX ∈ [180,360) x = rotX - 360.0
		// x >= 0 y = -x + 10
		// x < 0 y = -2x + 10
		// rotX req.Rot.X
		// y 消耗的耐力修正值
		// base(-100) + y 消耗的耐力
		var x int32
		var costRevise int32 // 攀爬耐力修正值
		if req.Rot.X >= 0 && req.Rot.X < 180 {
			x = int32(req.Rot.X)
		} else if req.Rot.X >= 180 && req.Rot.X < 360 {
			x = int32(req.Rot.X - 360.0)
		}
		if x >= 0 {
			costRevise = -x + 10
		} else {
			costRevise = -(x * 2) + 10
		}
		//logger.LOG.Debug("stamina climbing, rotX: %v, costRevise: %v, cost: %v", req.Rot.X, costRevise, constant.StaminaCostConst.CLIMBING_BASE+costRevise)
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMBING_BASE+costRevise)
	case proto.MotionState_MOTION_STATE_SWIM_MOVE:
		// 缓慢游泳
		g.UpdateStamina(player, constant.StaminaCostConst.SWIMMING)
	}

	// PacketSceneAvatarStaminaStepRsp
	sceneAvatarStaminaStepRsp := new(proto.SceneAvatarStaminaStepRsp)
	// 角度超过范围返回值为错误
	if (req.Rot.X >= 0 && req.Rot.X < 90) || (req.Rot.X > 270 && req.Rot.X < 360) {
		sceneAvatarStaminaStepRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SUCC)
	} else {
		sceneAvatarStaminaStepRsp.Retcode = int32(proto.Retcode_RETCODE_RET_FAIL)
	}
	sceneAvatarStaminaStepRsp.UseClientRot = true
	sceneAvatarStaminaStepRsp.Rot = req.Rot
	g.SendMsg(cmd.SceneAvatarStaminaStepRsp, player.PlayerID, player.ClientSeq, sceneAvatarStaminaStepRsp)
}

// HandleStamina 处理即时耐力消耗
func (g *GameManager) HandleStamina(player *model.Player, motionState proto.MotionState) {
	staminaInfo := player.StaminaInfo
	//logger.LOG.Debug("stamina handle, uid: %v, motionState: %v", player.PlayerID, motionState)

	// 设置用于持续消耗或恢复耐力的值
	g.SetStaminaCost(player, motionState)

	// 未改变状态不执行后面 有些仅在动作开始消耗耐力
	if motionState == staminaInfo.State {
		return
	}

	// 记录玩家的动作状态
	staminaInfo.State = motionState

	// 根据玩家的状态立刻消耗耐力
	switch motionState {
	case proto.MotionState_MOTION_STATE_CLIMB:
		// 攀爬开始
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMB_START)
	case proto.MotionState_MOTION_STATE_DASH_BEFORE_SHAKE:
		// 冲刺
		g.UpdateStamina(player, constant.StaminaCostConst.SPRINT)
	case proto.MotionState_MOTION_STATE_CLIMB_JUMP:
		// 攀爬跳跃
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMB_JUMP)
	case proto.MotionState_MOTION_STATE_SWIM_DASH:
		// 快速游泳开始
		g.UpdateStamina(player, constant.StaminaCostConst.SWIM_DASH_START)
	}
}

// HandleSkillSustainStamina 处理技能持续时的耐力消耗
func (g *GameManager) HandleSkillSustainStamina(player *model.Player) {
	skillId := player.StaminaInfo.LastSkillId
	logger.LOG.Error("stamina skill sustain, skillId: %v", skillId)
	avatarSkillConfig, ok := gdconf.CONF.AvatarSkillDataMap[int32(skillId)]
	if !ok {
		logger.LOG.Error("avatarSkillConfig error, skillId: %v", skillId)
		return
	}
	// 距离上次执行过去的时间
	pastTime := time.Now().UnixMilli() - player.StaminaInfo.LastSkillTime
	// 根据配置以及距离上次的时间计算消耗的耐力
	g.UpdateStamina(player, -(int32(pastTime/1000)*avatarSkillConfig.CostStamina)*100)

	// 记录最后释放技能时间
	player.StaminaInfo.LastSkillTime = time.Now().UnixMilli()
}

// HandleSkillStartStamina 处理技能开始时即时耐力消耗
func (g *GameManager) HandleSkillStartStamina(player *model.Player, skillId uint32) {
	logger.LOG.Error("stamina skill start, skillId: %v", skillId)
	avatarSkillConfig, ok := gdconf.CONF.AvatarSkillDataMap[int32(skillId)]
	if !ok {
		logger.LOG.Error("avatarSkillConfig error, skillId: %v", skillId)
		return
	}
	// 根据配置消耗耐力
	g.UpdateStamina(player, -avatarSkillConfig.CostStamina*100)

	// 记录最后释放的技能
	player.StaminaInfo.LastSkillId = skillId
	player.StaminaInfo.LastSkillTime = time.Now().UnixMilli()
}

// StaminaHandler 处理持续耐力消耗
func (g *GameManager) StaminaHandler(player *model.Player) {
	staminaInfo := player.StaminaInfo

	// 添加的耐力大于0为恢复
	if staminaInfo.CostStamina > 0 {
		// 耐力延迟1s(5 ticks)恢复 动作状态为加速将立刻恢复耐力
		if staminaInfo.RestoreDelay < 5 && (staminaInfo.State != proto.MotionState_MOTION_STATE_POWERED_FLY && staminaInfo.State != proto.MotionState_MOTION_STATE_SKIFF_POWERED_DASH) {
			//logger.LOG.Debug("stamina delay add, restoreDelay: %v", staminaInfo.RestoreDelay)
			staminaInfo.RestoreDelay++
			return // 不恢复耐力
		}
	}

	// 更新玩家耐力
	g.UpdateStamina(player, staminaInfo.CostStamina)
}

// SetStaminaCost 设置动作需要消耗的耐力
func (g *GameManager) SetStaminaCost(player *model.Player, state proto.MotionState) {
	staminaInfo := player.StaminaInfo

	// 根据状态决定要修改的耐力
	// TODO 角色天赋 食物 会影响耐力消耗
	switch state {
	// 消耗耐力
	case proto.MotionState_MOTION_STATE_DASH:
		// 快速跑步
		staminaInfo.CostStamina = constant.StaminaCostConst.DASH
	case proto.MotionState_MOTION_STATE_FLY, proto.MotionState_MOTION_STATE_FLY_FAST, proto.MotionState_MOTION_STATE_FLY_SLOW:
		// 滑翔
		staminaInfo.CostStamina = constant.StaminaCostConst.FLY
	case proto.MotionState_MOTION_STATE_SWIM_DASH:
		// 快速游泳
		staminaInfo.CostStamina = constant.StaminaCostConst.SWIM_DASH
	case proto.MotionState_MOTION_STATE_SKIFF_DASH:
		// 浪船加速
		// TODO 玩家使用载具时需要用载具的协议发送prop
		staminaInfo.CostStamina = constant.StaminaCostConst.SKIFF_DASH
	// 恢复耐力
	case proto.MotionState_MOTION_STATE_DANGER_RUN, proto.MotionState_MOTION_STATE_RUN:
		// 正常跑步
		staminaInfo.CostStamina = constant.StaminaCostConst.RUN
	case proto.MotionState_MOTION_STATE_DANGER_STANDBY_MOVE, proto.MotionState_MOTION_STATE_DANGER_STANDBY, proto.MotionState_MOTION_STATE_LADDER_TO_STANDBY, proto.MotionState_MOTION_STATE_STANDBY_MOVE, proto.MotionState_MOTION_STATE_STANDBY:
		// 站立
		staminaInfo.CostStamina = constant.StaminaCostConst.STANDBY
	case proto.MotionState_MOTION_STATE_DANGER_WALK, proto.MotionState_MOTION_STATE_WALK:
		// 走路
		staminaInfo.CostStamina = constant.StaminaCostConst.WALK
	case proto.MotionState_MOTION_STATE_POWERED_FLY:
		// 滑翔加速 (风圈等)
		staminaInfo.CostStamina = constant.StaminaCostConst.POWERED_FLY
	case proto.MotionState_MOTION_STATE_SKIFF_POWERED_DASH:
		// 浪船加速 (风圈等)
		staminaInfo.CostStamina = constant.StaminaCostConst.POWERED_SKIFF
	// 缓慢动作将在客户端发送消息后消耗
	case proto.MotionState_MOTION_STATE_CLIMB, proto.MotionState_MOTION_STATE_SWIM_MOVE:
		// 缓慢攀爬 或 缓慢游泳
		staminaInfo.CostStamina = 0
	}
}

// UpdateStamina 更新耐力 当前耐力值 + 消耗的耐力值
func (g *GameManager) UpdateStamina(player *model.Player, staminaCost int32) {
	// 耐力增加0是没有意义的
	if staminaCost == 0 {
		return
	}
	// 消耗耐力重新计算恢复需要延迟的tick
	if staminaCost < 0 {
		//logger.LOG.Debug("stamina delay reset, restoreDelay: %v", player.StaminaInfo.RestoreDelay)
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
