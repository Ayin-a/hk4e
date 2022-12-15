package game

import (
	pb "google.golang.org/protobuf/proto"
	"hk4e/gdconf"
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"time"
)

// HandleAbilityStamina 处理来自ability的耐力消耗
func (g *GameManager) HandleAbilityStamina(player *model.Player, entry *proto.AbilityInvokeEntry) {
	switch entry.ArgumentType {
	case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_MIXIN_COST_STAMINA:
		// 大剑重击 或 持续技能 耐力消耗
		costStamina := new(proto.AbilityMixinCostStamina)
		err := pb.Unmarshal(entry.AbilityData, costStamina)
		if err != nil {
			logger.LOG.Error("unmarshal ability data err: %v", err)
			return
		}
		// 处理持续耐力消耗
		g.SkillSustainStamina(player, costStamina.IsSwim)
	case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_META_MODIFIER_CHANGE:
		// 普通角色重击耐力消耗
		world := WORLD_MANAGER.GetWorldByID(player.WorldId)
		// 获取世界中的角色实体
		worldAvatar := world.GetWorldAvatarByEntityId(entry.EntityId)
		if worldAvatar == nil {
			return
		}
		// 查找是不是属于该角色实体的ability id
		abilityNameHashCode := uint32(0)
		for _, ability := range worldAvatar.abilityList {
			if ability.InstancedAbilityId == entry.Head.InstancedAbilityId {
				//logger.LOG.Error("%v", ability)
				abilityNameHashCode = ability.AbilityName.GetHash()
			}
		}
		if abilityNameHashCode == 0 {
			return
		}
		// 根据ability name查找到对应的技能表里的技能配置
		var avatarAbility *gdconf.AvatarSkillData = nil
		for _, avatarSkillData := range gdconf.CONF.AvatarSkillDataMap {
			hashCode := endec.Hk4eAbilityHashCode(avatarSkillData.AbilityName)
			if uint32(hashCode) == abilityNameHashCode {
				avatarAbility = avatarSkillData
			}
		}
		if avatarAbility == nil {
			return
		}
		// 距离技能开始过去的时间
		pastTime := time.Now().UnixMilli() - player.StaminaInfo.LastSkillTime
		// 法器角色轻击也会算触发重击消耗
		// 所以通过策略判断 必须距离技能开始过去100ms才算重击
		if player.StaminaInfo.LastSkillId == uint32(avatarAbility.AvatarSkillId) && pastTime > 100 {
			// 重击对应的耐力消耗
			g.ChargedAttackStamina(player, worldAvatar, avatarAbility)
		}
	default:
		break
	}
}

// SceneAvatarStaminaStepReq 缓慢游泳或缓慢攀爬时消耗耐力
func (g *GameManager) SceneAvatarStaminaStepReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SceneAvatarStaminaStepReq)

	// 根据动作状态消耗耐力
	switch player.StaminaInfo.State {
	case proto.MotionState_MOTION_STATE_CLIMB:
		// 缓慢攀爬
		var angleRevise int32 // 角度修正值 归一化为-90到+90范围内的角
		// rotX ∈ [0,90) angle = rotX
		// rotX ∈ (270,360) angle = rotX - 360.0
		if req.Rot.X >= 0 && req.Rot.X < 90 {
			angleRevise = int32(req.Rot.X)
		} else if req.Rot.X > 270 && req.Rot.X < 360 {
			angleRevise = int32(req.Rot.X - 360.0)
		} else {
			logger.LOG.Error("invalid rot x angle: %v, uid: %v", req.Rot.X, player.PlayerID)
			g.CommonRetError(cmd.SceneAvatarStaminaStepRsp, player, &proto.SceneAvatarStaminaStepRsp{})
			return
		}
		// 攀爬耐力修正曲线
		// angle >= 0 cost = -x + 10
		// angle < 0 cost = -2x + 10
		var costRevise int32 // 攀爬耐力修正值 在基础消耗值的水平上增加或减少
		if angleRevise >= 0 {
			// 普通或垂直斜坡
			costRevise = -angleRevise + 10
		} else {
			// 倒三角 非常消耗体力
			costRevise = -(angleRevise * 2) + 10
		}
		logger.LOG.Debug("stamina climbing, rotX: %v, costRevise: %v, cost: %v", req.Rot.X, costRevise, constant.StaminaCostConst.CLIMBING_BASE-costRevise)
		g.UpdateStamina(player, constant.StaminaCostConst.CLIMBING_BASE-costRevise)
	case proto.MotionState_MOTION_STATE_SWIM_MOVE:
		// 缓慢游泳
		g.UpdateStamina(player, constant.StaminaCostConst.SWIMMING)
	}

	// PacketSceneAvatarStaminaStepRsp
	sceneAvatarStaminaStepRsp := new(proto.SceneAvatarStaminaStepRsp)
	sceneAvatarStaminaStepRsp.UseClientRot = true
	sceneAvatarStaminaStepRsp.Rot = req.Rot
	g.SendMsg(cmd.SceneAvatarStaminaStepRsp, player.PlayerID, player.ClientSeq, sceneAvatarStaminaStepRsp)
}

// ImmediateStamina 处理即时耐力消耗
func (g *GameManager) ImmediateStamina(player *model.Player, motionState proto.MotionState) {
	// 玩家暂停状态不更新耐力
	if player.Pause {
		return
	}
	staminaInfo := player.StaminaInfo
	//logger.LOG.Debug("stamina handle, uid: %v, motionState: %v", player.PlayerID, motionState)

	// 设置用于持续消耗或恢复耐力的值
	staminaInfo.SetStaminaCost(motionState)

	// 未改变状态不执行后面 有些仅在动作开始消耗耐力
	if motionState == staminaInfo.State {
		return
	}

	// 记录玩家的动作状态
	staminaInfo.State = motionState
	logger.LOG.Error("state: %v", motionState.String())

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

// SkillSustainStamina 处理技能持续时的耐力消耗
func (g *GameManager) SkillSustainStamina(player *model.Player, isSwim bool) {
	staminaInfo := player.StaminaInfo
	skillId := staminaInfo.LastSkillId

	// 读取技能配置表
	avatarSkillConfig, ok := gdconf.CONF.AvatarSkillDataMap[int32(skillId)]
	if !ok {
		logger.LOG.Error("avatarSkillConfig error, skillId: %v", skillId)
		return
	}
	// 获取释放技能者的角色Id
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	// 获取世界中的角色实体
	worldAvatar := world.GetWorldAvatarByEntityId(staminaInfo.LastCasterId)
	if worldAvatar == nil {
		return
	}
	// 获取现行角色的配置表
	avatarDataConfig, ok := gdconf.CONF.AvatarDataMap[int32(worldAvatar.avatarId)]
	if !ok {
		logger.LOG.Error("avatarDataConfig error, avatarId: %v", worldAvatar.avatarId)
		return
	}

	// 需要消耗的耐力值
	var costStamina int32

	// 如果为0代表使用默认值
	if avatarSkillConfig.CostStamina == 0 {
		// 大剑持续耐力消耗默认值
		if avatarDataConfig.WeaponType == constant.WeaponTypeConst.WEAPON_CLAYMORE {
			costStamina = constant.StaminaCostConst.FIGHT_CLAYMORE_PER
		}
	} else {
		costStamina = -(avatarSkillConfig.CostStamina * 100)
	}

	// 距离上次执行过去的时间
	pastTime := time.Now().UnixMilli() - staminaInfo.LastSkillTime
	// 根据配置以及距离上次的时间计算消耗的耐力
	costStamina = int32(float64(pastTime) / 1000 * float64(costStamina))
	logger.LOG.Debug("stamina skill sustain, skillId: %v, cost: %v, isSwim: %v", skillId, costStamina, isSwim)

	// 根据配置以及距离上次的时间计算消耗的耐力
	g.UpdateStamina(player, costStamina)

	// 记录最后释放技能的时间
	player.StaminaInfo.LastSkillTime = time.Now().UnixMilli()
}

// ChargedAttackStamina 处理重击技能即时耐力消耗
func (g *GameManager) ChargedAttackStamina(player *model.Player, worldAvatar *WorldAvatar, skillData *gdconf.AvatarSkillData) {
	// 获取现行角色的配置表
	avatarDataConfig, ok := gdconf.CONF.AvatarDataMap[int32(worldAvatar.avatarId)]
	if !ok {
		logger.LOG.Error("avatarDataConfig error, avatarId: %v", worldAvatar.avatarId)
		return
	}

	// 需要消耗的耐力值
	var costStamina int32

	// 如果为0代表使用默认值
	if skillData.CostStamina == 0 {
		// 使用武器对应默认耐力消耗
		// 双手剑为持续耐力消耗不在这里处理
		switch avatarDataConfig.WeaponType {
		case constant.WeaponTypeConst.WEAPON_SWORD_ONE_HAND:
			// 单手剑
			costStamina = constant.StaminaCostConst.FIGHT_SWORD_ONE_HAND
		case constant.WeaponTypeConst.WEAPON_POLE:
			// 长枪
			costStamina = constant.StaminaCostConst.FIGHT_POLE
		case constant.WeaponTypeConst.WEAPON_CATALYST:
			// 法器
			costStamina = constant.StaminaCostConst.FIGHT_CATALYST
		}
	} else {
		costStamina = -(skillData.CostStamina * 100)
	}
	logger.LOG.Debug("charged attack stamina, skillId: %v, cost: %v", skillData.AvatarSkillId, costStamina)

	// 根据配置消耗耐力
	g.UpdateStamina(player, costStamina)
}

// SkillStartStamina 处理技能开始时的即时耐力消耗
func (g *GameManager) SkillStartStamina(player *model.Player, casterId uint32, skillId uint32) {
	staminaInfo := player.StaminaInfo

	// 获取该技能开始时所需消耗的耐力
	costStamina := constant.StaminaCostConst.SKILL_START[skillId]

	// 距离上次处理技能开始耐力消耗过去的时间
	pastTime := time.Now().UnixMilli() - staminaInfo.LastSkillTime
	// 上次触发的技能相同则每400ms触发一次消耗
	if staminaInfo.LastSkillId == skillId && pastTime < 400 {
		return
	}
	// 根据配置消耗耐力
	g.UpdateStamina(player, costStamina)

	logger.LOG.Debug("skill start stamina, skillId: %v, cost: %v", skillId, costStamina)

	// 记录最后释放的技能
	staminaInfo.LastCasterId = casterId
	staminaInfo.LastSkillId = skillId
	staminaInfo.LastSkillTime = time.Now().UnixMilli()
}

// SustainStaminaHandler 处理持续耐力消耗
func (g *GameManager) SustainStaminaHandler(player *model.Player) {
	// 玩家暂停状态不更新耐力
	if player.Pause {
		return
	}
	staminaInfo := player.StaminaInfo

	// 添加的耐力大于0为恢复
	if staminaInfo.CostStamina > 0 {
		// 耐力延迟2s(10 ticks)恢复 动作状态为加速将立刻恢复耐力
		if staminaInfo.RestoreDelay < 10 && (staminaInfo.State != proto.MotionState_MOTION_STATE_POWERED_FLY && staminaInfo.State != proto.MotionState_MOTION_STATE_SKIFF_POWERED_DASH) {
			//logger.LOG.Debug("stamina delay add, restoreDelay: %v", staminaInfo.RestoreDelay)
			staminaInfo.RestoreDelay++
			return // 不恢复耐力
		}
	}

	// 更新玩家耐力
	g.UpdateStamina(player, staminaInfo.CostStamina)
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

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// 最大耐力值 现行耐力值
	var maxStamina, curStamina int32
	// 玩家是否处于载具中
	var isInVehicle bool

	// 获取载具实体
	entity := g.GetSceneVehicleEntity(scene, player.VehicleInfo.InVehicleEntityId)
	// 判断玩家处于载具中
	if entity != nil && g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		// 载具耐力
		// 因为载具的耐力需要换算
		// 这里先*100后面要用的时候再换算 为了确保精度
		maxStamina = int32(entity.gadgetEntity.gadgetVehicleEntity.maxStamina * 100)
		curStamina = int32(entity.gadgetEntity.gadgetVehicleEntity.curStamina * 100)
		isInVehicle = true
	} else {
		// 角色耐力
		maxStamina = int32(player.PropertiesMap[constant.PlayerPropertyConst.PROP_MAX_STAMINA])
		curStamina = int32(player.PropertiesMap[constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA])
	}

	// 即将更改为的耐力值
	stamina := curStamina + staminaCost

	// 确保耐力值不超出范围
	if stamina > maxStamina {
		stamina = maxStamina
	} else if stamina < 0 {
		stamina = 0
	}

	// 当前无变动不要频繁发包
	if curStamina == stamina {
		return
	}

	if isInVehicle {
		// 修改载具现行耐力
		g.SetVehicleStamina(player, entity.gadgetEntity.gadgetVehicleEntity, float32(stamina)/100)
	} else {
		// 修改玩家现行耐力
		g.SetPlayerStamina(player, uint32(stamina))
	}

}

// SetVehicleStamina 设置载具的耐力
func (g *GameManager) SetVehicleStamina(player *model.Player, gadgetVehicleEntity *GadgetVehicleEntity, stamina float32) {
	// 设置载具的耐力
	gadgetVehicleEntity.curStamina = stamina
	logger.LOG.Debug("vehicle stamina set, stamina: %v", stamina)

	// PacketVehicleStaminaNotify
	vehicleStaminaNotify := new(proto.VehicleStaminaNotify)
	vehicleStaminaNotify.EntityId = player.VehicleInfo.InVehicleEntityId
	vehicleStaminaNotify.CurStamina = stamina
	g.SendMsg(cmd.VehicleStaminaNotify, player.PlayerID, player.ClientSeq, vehicleStaminaNotify)
}

// SetPlayerStamina 设置玩家的耐力
func (g *GameManager) SetPlayerStamina(player *model.Player, stamina uint32) {
	// 设置玩家的耐力
	prop := constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA
	player.PropertiesMap[prop] = stamina
	logger.LOG.Debug("player stamina set, stamina: %v", stamina)

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
