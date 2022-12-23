package game

import (
	"strings"
	"time"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// HandleAbilityStamina 处理来自ability的耐力消耗
func (g *GameManager) HandleAbilityStamina(player *model.Player, entry *proto.AbilityInvokeEntry) {
	switch entry.ArgumentType {
	case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_MIXIN_COST_STAMINA:
		// 大剑重击 或 持续技能 耐力消耗
		costStamina := new(proto.AbilityMixinCostStamina)
		err := pb.Unmarshal(entry.AbilityData, costStamina)
		if err != nil {
			logger.Error("unmarshal ability data err: %v", err)
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
				// logger.Error("%v", ability)
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
		// 所以通过策略判断 必须距离技能开始过去200ms才算重击
		if player.StaminaInfo.LastSkillId == uint32(avatarAbility.AvatarSkillId) && pastTime > 200 {
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
			logger.Error("invalid rot x angle: %v, uid: %v", req.Rot.X, player.PlayerID)
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
		logger.Debug("stamina climbing, rotX: %v, costRevise: %v, cost: %v", req.Rot.X, costRevise, constant.StaminaCostConst.CLIMBING_BASE-costRevise)
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.CLIMBING_BASE-costRevise)
	case proto.MotionState_MOTION_STATE_SWIM_MOVE:
		// 缓慢游泳
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.SWIMMING)
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
	// logger.Debug("stamina handle, uid: %v, motionState: %v", player.PlayerID, motionState)

	// 设置用于持续消耗或恢复耐力的值
	staminaInfo.SetStaminaCost(motionState)

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
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.CLIMB_START)
	case proto.MotionState_MOTION_STATE_DASH_BEFORE_SHAKE:
		// 冲刺
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.SPRINT)
	case proto.MotionState_MOTION_STATE_CLIMB_JUMP:
		// 攀爬跳跃
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.CLIMB_JUMP)
	case proto.MotionState_MOTION_STATE_SWIM_DASH:
		// 快速游泳开始
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.SWIM_DASH_START)
	}
}

// SkillSustainStamina 处理技能持续时的耐力消耗
func (g *GameManager) SkillSustainStamina(player *model.Player, isSwim bool) {
	staminaInfo := player.StaminaInfo
	skillId := staminaInfo.LastSkillId

	// 读取技能配置表
	avatarSkillConfig, ok := gdconf.CONF.AvatarSkillDataMap[int32(skillId)]
	if !ok {
		logger.Error("avatarSkillConfig error, skillId: %v", skillId)
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
		logger.Error("avatarDataConfig error, avatarId: %v", worldAvatar.avatarId)
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
	logger.Debug("stamina skill sustain, skillId: %v, cost: %v, isSwim: %v", skillId, costStamina, isSwim)

	// 根据配置以及距离上次的时间计算消耗的耐力
	g.UpdatePlayerStamina(player, costStamina)

	// 记录最后释放技能的时间
	player.StaminaInfo.LastSkillTime = time.Now().UnixMilli()
}

// ChargedAttackStamina 处理重击技能即时耐力消耗
func (g *GameManager) ChargedAttackStamina(player *model.Player, worldAvatar *WorldAvatar, skillData *gdconf.AvatarSkillData) {
	// 确保技能为重击
	if !strings.Contains(skillData.AbilityName, "ExtraAttack") {
		return
	}
	// 获取现行角色的配置表
	avatarDataConfig, ok := gdconf.CONF.AvatarDataMap[int32(worldAvatar.avatarId)]
	if !ok {
		logger.Error("avatarDataConfig error, avatarId: %v", worldAvatar.avatarId)
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
	logger.Debug("charged attack stamina, skillId: %v, cost: %v", skillData.AvatarSkillId, costStamina)

	// 根据配置消耗耐力
	g.UpdatePlayerStamina(player, costStamina)
}

// SkillStartStamina 处理技能开始时的即时耐力消耗
func (g *GameManager) SkillStartStamina(player *model.Player, casterId uint32, skillId uint32) {
	staminaInfo := player.StaminaInfo

	// 获取该技能开始时所需消耗的耐力
	costStamina, ok := constant.StaminaCostConst.SKILL_START[skillId]

	// 配置表确保存在技能开始对应的耐力消耗
	if ok {
		// 距离上次处理技能开始耐力消耗过去的时间
		pastTime := time.Now().UnixMilli() - staminaInfo.LastSkillStartTime
		// 上次触发的技能相同则每400ms触发一次消耗
		if staminaInfo.LastSkillId != skillId || pastTime > 400 {
			logger.Debug("skill start stamina, skillId: %v, cost: %v", skillId, costStamina)
			// 根据配置消耗耐力
			g.UpdatePlayerStamina(player, costStamina)
			staminaInfo.LastSkillStartTime = time.Now().UnixMilli()
		}
	} else {
		// logger.Debug("skill start cost error, cost: %v", costStamina)
	}

	// 记录最后释放的技能
	staminaInfo.LastCasterId = casterId
	staminaInfo.LastSkillId = skillId
	staminaInfo.LastSkillTime = time.Now().UnixMilli()
}

// VehicleRestoreStaminaHandler 处理载具持续回复耐力
func (g *GameManager) VehicleRestoreStaminaHandler(player *model.Player) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// 玩家暂停状态不更新耐力
	if player.Pause {
		return
	}

	// 获取玩家创建的载具实体
	entity := scene.GetEntity(player.VehicleInfo.InVehicleEntityId)
	if entity == nil {
		return
	}
	// 确保实体类型是否为载具
	if entity.gadgetEntity == nil || entity.gadgetEntity.gadgetVehicleEntity == nil {
		return
	}
	// 判断玩家处于载具中
	if g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		// 角色回复耐力
		g.UpdatePlayerStamina(player, constant.StaminaCostConst.IN_SKIFF)
	} else {
		// 载具回复耐力
		g.UpdateVehicleStamina(player, entity, constant.StaminaCostConst.SKIFF_NOBODY)
	}
}

// SustainStaminaHandler 处理持续耐力消耗
func (g *GameManager) SustainStaminaHandler(player *model.Player) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// 玩家暂停状态不更新耐力
	if player.Pause {
		return
	}

	// 获取玩家处于的载具实体
	entity := scene.GetEntity(player.VehicleInfo.InVehicleEntityId)
	// 确保实体类型是否为载具 且 根据玩家是否处于载具中更新耐力
	if entity != nil && (entity.gadgetEntity != nil && entity.gadgetEntity.gadgetVehicleEntity != nil) && g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		// 更新载具耐力
		g.UpdateVehicleStamina(player, entity, player.StaminaInfo.CostStamina)
	} else {
		// 更新玩家耐力
		g.UpdatePlayerStamina(player, player.StaminaInfo.CostStamina)
	}
}

// GetChangeStamina 获取变更的耐力
// 当前耐力值 + 消耗的耐力值
func (g *GameManager) GetChangeStamina(curStamina int32, maxStamina int32, staminaCost int32) uint32 {
	// 即将更改为的耐力值
	stamina := curStamina + staminaCost

	// 确保耐力值不超出范围
	if stamina > maxStamina {
		stamina = maxStamina
	} else if stamina < 0 {
		stamina = 0
	}
	return uint32(stamina)
}

// UpdateVehicleStamina 更新载具耐力
func (g *GameManager) UpdateVehicleStamina(player *model.Player, vehicleEntity *Entity, staminaCost int32) {
	staminaInfo := player.StaminaInfo
	// 添加的耐力大于0为恢复
	if staminaCost > 0 {
		// 耐力延迟2s(10 ticks)恢复 动作状态为加速将立刻恢复耐力
		if staminaInfo.VehicleRestoreDelay < 10 && staminaInfo.State != proto.MotionState_MOTION_STATE_SKIFF_POWERED_DASH {
			// logger.Debug("stamina delay add, restoreDelay: %v", staminaInfo.RestoreDelay)
			staminaInfo.VehicleRestoreDelay++
			return // 不恢复耐力
		}
	} else {
		// 消耗耐力重新计算恢复需要延迟的tick
		// logger.Debug("stamina delay reset, restoreDelay: %v", player.StaminaInfo.VehicleRestoreDelay)
		staminaInfo.VehicleRestoreDelay = 0
	}

	// 确保载具实体存在
	if vehicleEntity == nil {
		return
	}

	// 因为载具的耐力需要换算
	// 这里先*100后面要用的时候再换算 为了确保精度
	// 最大耐力值
	maxStamina := int32(vehicleEntity.gadgetEntity.gadgetVehicleEntity.maxStamina * 100)
	// 现行耐力值
	curStamina := int32(vehicleEntity.gadgetEntity.gadgetVehicleEntity.curStamina * 100)

	// 将被变更的耐力
	stamina := g.GetChangeStamina(curStamina, maxStamina, staminaCost)

	// 当前无变动不要频繁发包
	if uint32(curStamina) == stamina {
		return
	}

	// 更改载具耐力 (换算)
	g.SetVehicleStamina(player, vehicleEntity, float32(stamina)/100)
}

// UpdatePlayerStamina 更新玩家耐力
func (g *GameManager) UpdatePlayerStamina(player *model.Player, staminaCost int32) {
	staminaInfo := player.StaminaInfo
	// 添加的耐力大于0为恢复
	if staminaCost > 0 {
		// 耐力延迟2s(10 ticks)恢复 动作状态为加速将立刻恢复耐力
		if staminaInfo.PlayerRestoreDelay < 10 && staminaInfo.State != proto.MotionState_MOTION_STATE_POWERED_FLY {
			// logger.Debug("stamina delay add, restoreDelay: %v", staminaInfo.RestoreDelay)
			staminaInfo.PlayerRestoreDelay++
			return // 不恢复耐力
		}
	} else {
		// 消耗耐力重新计算恢复需要延迟的tick
		// logger.Debug("stamina delay reset, restoreDelay: %v", player.StaminaInfo.RestoreDelay)
		staminaInfo.PlayerRestoreDelay = 0
	}

	// 最大耐力值
	maxStamina := int32(player.PropertiesMap[constant.PlayerPropertyConst.PROP_MAX_STAMINA])
	// 现行耐力值
	curStamina := int32(player.PropertiesMap[constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA])

	// 将被变更的耐力
	stamina := g.GetChangeStamina(curStamina, maxStamina, staminaCost)

	// 检测玩家是否没耐力后执行溺水
	g.HandleDrown(player, stamina)

	// 当前无变动不要频繁发包
	if uint32(curStamina) == stamina {
		return
	}

	// 更改玩家的耐力
	g.SetPlayerStamina(player, stamina)
}

// DrownBackHandler 玩家溺水返回安全点
func (g *GameManager) DrownBackHandler(player *model.Player) {
	// 玩家暂停跳过
	if player.Pause {
		return
	}
	// 溺水返回时间为0代表不进行返回
	if player.StaminaInfo.DrownBackDelay == 0 {
		return
	}

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	activeAvatar := world.GetPlayerWorldAvatar(player, world.GetPlayerActiveAvatarId(player))
	avatarEntity := scene.GetEntity(activeAvatar.avatarEntityId)
	if avatarEntity == nil {
		logger.Error("avatar entity is nil, entityId: %v", activeAvatar.avatarEntityId)
		return
	}

	// TODO 耐力未完成的内容：
	// 一直溺水回到距离最近的位置 ?
	// 溺水队伍扣血
	// 队伍都没血了显示死亡界面
	// 角色技能影响重击耐力消耗 雷神开大后修改重击耐力为20 达达利亚 一斗
	// 食物影响消耗的耐力 还有 角色天赋也会影响

	// 先传送玩家再设置角色存活否则同时设置会传送前显示角色实体
	if player.StaminaInfo.DrownBackDelay > 20 && player.SceneLoadState == model.SceneEnterDone {
		// 设置角色存活
		scene.SetEntityLifeState(avatarEntity, constant.LifeStateConst.LIFE_REVIVE, proto.PlayerDieType_PLAYER_DIE_TYPE_NONE)
		// 重置溺水返回时间
		player.StaminaInfo.DrownBackDelay = 0
	} else if player.StaminaInfo.DrownBackDelay == 20 {
		// TODO 队伍扣血
		maxStamina := player.PropertiesMap[constant.PlayerPropertyConst.PROP_MAX_STAMINA]
		// 设置玩家耐力为一半
		g.SetPlayerStamina(player, maxStamina/2)
		// 如果玩家的位置比锚点距离近则优先使用玩家位置
		pos := &model.Vector{
			X: player.SafePos.X,
			Y: player.SafePos.Y,
			Z: player.SafePos.Z,
		}
		// 获取最近角色实体的锚点
		// TODO 阻塞优化 16ms我感觉有点慢
		// for _, entry := range gdc.CONF.ScenePointEntries {
		//	if entry.PointData == nil || entry.PointData.TranPos == nil {
		//		continue
		//	}
		//	pointPos := &model.Vector{
		//		X: entry.PointData.TranPos.X,
		//		Y: entry.PointData.TranPos.Y,
		//		Z: entry.PointData.TranPos.Z,
		//	}
		//	// 该坐标距离小于之前的则赋值
		//	if player.SafePos.Distance(pointPos) < player.SafePos.Distance(pos) {
		//		pos = pointPos
		//	}
		// }
		// 传送玩家至安全位置
		g.TeleportPlayer(player, uint32(constant.EnterReasonConst.Revival), player.SceneId, pos)
	}
	// 防止重置后又被修改
	if player.StaminaInfo.DrownBackDelay != 0 {
		player.StaminaInfo.DrownBackDelay++
	}
}

// HandleDrown 处理玩家溺水
func (g *GameManager) HandleDrown(player *model.Player, stamina uint32) {
	// 溺水需要耐力等于0 返回延时不等于0代表已处理过溺水正在等待返回
	if stamina != 0 || player.StaminaInfo.DrownBackDelay != 0 {
		return
	}

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	activeAvatar := world.GetPlayerWorldAvatar(player, world.GetPlayerActiveAvatarId(player))
	avatarEntity := scene.GetEntity(activeAvatar.avatarEntityId)
	if avatarEntity == nil {
		logger.Error("avatar entity is nil, entityId: %v", activeAvatar.avatarEntityId)
		return
	}

	// 确保玩家正在游泳
	if player.StaminaInfo.State == proto.MotionState_MOTION_STATE_SWIM_MOVE || player.StaminaInfo.State == proto.MotionState_MOTION_STATE_SWIM_DASH {
		logger.Debug("player drown, curStamina: %v, state: %v", stamina, player.StaminaInfo.State)
		// 设置角色为死亡
		scene.SetEntityLifeState(avatarEntity, constant.LifeStateConst.LIFE_DEAD, proto.PlayerDieType_PLAYER_DIE_TYPE_DRAWN)
		// 溺水返回安全点 计时开始
		player.StaminaInfo.DrownBackDelay = 1
	}
}

// SetVehicleStamina 设置载具耐力
func (g *GameManager) SetVehicleStamina(player *model.Player, vehicleEntity *Entity, stamina float32) {
	// 设置载具的耐力
	vehicleEntity.gadgetEntity.gadgetVehicleEntity.curStamina = stamina
	// logger.Debug("vehicle stamina set, stamina: %v", stamina)

	// PacketVehicleStaminaNotify
	vehicleStaminaNotify := new(proto.VehicleStaminaNotify)
	vehicleStaminaNotify.EntityId = vehicleEntity.id
	vehicleStaminaNotify.CurStamina = stamina
	g.SendMsg(cmd.VehicleStaminaNotify, player.PlayerID, player.ClientSeq, vehicleStaminaNotify)
}

// SetPlayerStamina 设置玩家耐力
func (g *GameManager) SetPlayerStamina(player *model.Player, stamina uint32) {
	// 设置玩家的耐力
	prop := constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA
	player.PropertiesMap[prop] = stamina
	// logger.Debug("player stamina set, stamina: %v", stamina)

	// PacketPlayerPropNotify
	g.PlayerPropNotify(player, prop)
}

func (g *GameManager) PlayerPropNotify(player *model.Player, playerPropId uint16) {
	// PacketPlayerPropNotify
	playerPropNotify := new(proto.PlayerPropNotify)
	playerPropNotify.PropMap = make(map[uint32]*proto.PropValue)
	playerPropNotify.PropMap[uint32(playerPropId)] = &proto.PropValue{
		Type: uint32(playerPropId),
		Val:  int64(player.PropertiesMap[playerPropId]),
		Value: &proto.PropValue_Ival{
			Ival: int64(player.PropertiesMap[playerPropId]),
		},
	}
	g.SendMsg(cmd.PlayerPropNotify, player.PlayerID, player.ClientSeq, playerPropNotify)
}
