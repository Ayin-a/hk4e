package game

import (
	"strings"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/reflection"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

var cmdProtoMap *cmd.CmdProtoMap = nil

func DoForward[IET model.InvokeEntryType](player *model.Player, invokeHandler *model.InvokeHandler[IET],
	cmdId uint16, newNtf pb.Message, forwardField string,
	srcNtf pb.Message, copyFieldList []string) {
	if cmdProtoMap == nil {
		cmdProtoMap = cmd.NewCmdProtoMap()
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	if srcNtf != nil && copyFieldList != nil {
		for _, fieldName := range copyFieldList {
			reflection.CopyStructField(newNtf, srcNtf, fieldName)
		}
	}
	if invokeHandler.AllLen() == 0 && invokeHandler.AllExceptCurLen() == 0 && invokeHandler.HostLen() == 0 {
		return
	}
	if invokeHandler.AllLen() > 0 {
		reflection.SetStructFieldValue(newNtf, forwardField, invokeHandler.EntryListForwardAll)
		GAME.SendToWorldA(world, cmdId, player.ClientSeq, newNtf)
	}
	if invokeHandler.AllExceptCurLen() > 0 {
		reflection.SetStructFieldValue(newNtf, forwardField, invokeHandler.EntryListForwardAllExceptCur)
		GAME.SendToWorldAEC(world, cmdId, player.ClientSeq, newNtf, player.PlayerID)
	}
	if invokeHandler.HostLen() > 0 {
		reflection.SetStructFieldValue(newNtf, forwardField, invokeHandler.EntryListForwardHost)
		GAME.SendToWorldH(world, cmdId, player.ClientSeq, newNtf)
	}
}

func (g *Game) UnionCmdNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.UnionCmdNotify)
	_ = req
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	DoForward[proto.CombatInvokeEntry](player, player.CombatInvokeHandler,
		cmd.CombatInvocationsNotify, new(proto.CombatInvocationsNotify), "InvokeList",
		nil, nil)
	DoForward[proto.AbilityInvokeEntry](player, player.AbilityInvokeHandler,
		cmd.AbilityInvocationsNotify, new(proto.AbilityInvocationsNotify), "Invokes",
		nil, nil)
	player.CombatInvokeHandler.Clear()
	player.AbilityInvokeHandler.Clear()
}

func (g *Game) MassiveEntityElementOpBatchNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.MassiveEntityElementOpBatchNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", player.SceneId)
		return
	}
	req.OpIdx = scene.GetMeeoIndex()
	scene.SetMeeoIndex(scene.GetMeeoIndex() + 1)
	g.SendToWorldA(world, cmd.MassiveEntityElementOpBatchNotify, player.ClientSeq, req)
}

func (g *Game) CombatInvocationsNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.CombatInvocationsNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	for _, entry := range req.InvokeList {
		switch entry.ArgumentType {
		case proto.CombatTypeArgument_COMBAT_EVT_BEING_HIT:
			evtBeingHitInfo := new(proto.EvtBeingHitInfo)
			err := pb.Unmarshal(entry.CombatData, evtBeingHitInfo)
			if err != nil {
				logger.Error("parse EvtBeingHitInfo error: %v", err)
				break
			}
			// logger.Debug("EvtBeingHitInfo: %v, ForwardType: %v", evtBeingHitInfo, entry.ForwardType)
			attackResult := evtBeingHitInfo.AttackResult
			if attackResult == nil {
				logger.Error("attackResult is nil")
				break
			}
			target := scene.GetEntity(attackResult.DefenseId)
			if target == nil {
				logger.Error("could not found target, defense id: %v", attackResult.DefenseId)
				break
			}
			fightProp := target.GetFightProp()
			currHp := fightProp[constant.FIGHT_PROP_CUR_HP]
			currHp -= attackResult.Damage
			if currHp < 0 {
				currHp = 0
			}
			fightProp[constant.FIGHT_PROP_CUR_HP] = currHp
			g.EntityFightPropUpdateNotifyBroadcast(world, target)
			switch target.GetEntityType() {
			case constant.ENTITY_TYPE_AVATAR:
			case constant.ENTITY_TYPE_MONSTER:
				if currHp == 0 {
					g.KillEntity(player, scene, target.GetId(), proto.PlayerDieType_PLAYER_DIE_GM)
				}
			case constant.ENTITY_TYPE_GADGET:
				gadgetEntity := target.GetGadgetEntity()
				gadgetDataConfig := gdconf.GetGadgetDataById(int32(gadgetEntity.GetGadgetId()))
				if gadgetDataConfig == nil {
					logger.Error("get gadget data config is nil, gadgetId: %v", gadgetEntity.GetGadgetId())
					break
				}
				logger.Debug("[EvtBeingHit] GadgetData: %+v, uid: %v", gadgetDataConfig, player.PlayerID)
				// TODO 临时的解决方案
				if strings.Contains(gadgetDataConfig.ServerLuaScript, "SetGadgetState") {
					g.ChangeGadgetState(player, target.GetId(), constant.GADGET_STATE_GEAR_START)
				}
				if strings.Contains(gadgetDataConfig.ServerLuaScript, "Controller") {
					g.ChangeGadgetState(player, target.GetId(), constant.GADGET_STATE_GEAR_START)
				}
			}
		case proto.CombatTypeArgument_ENTITY_MOVE:
			entityMoveInfo := new(proto.EntityMoveInfo)
			err := pb.Unmarshal(entry.CombatData, entityMoveInfo)
			if err != nil {
				logger.Error("parse EntityMoveInfo error: %v", err)
				break
			}
			// logger.Debug("EntityMoveInfo: %v, ForwardType: %v", entityMoveInfo, entry.ForwardType)
			motionInfo := entityMoveInfo.MotionInfo
			if motionInfo.Pos == nil || motionInfo.Rot == nil {
				break
			}
			sceneEntity := scene.GetEntity(entityMoveInfo.EntityId)
			if sceneEntity == nil {
				break
			}
			if sceneEntity.GetEntityType() == constant.ENTITY_TYPE_AVATAR {
				// 玩家实体在移动
				g.AoiPlayerMove(player, player.Pos, &model.Vector{
					X: float64(motionInfo.Pos.X),
					Y: float64(motionInfo.Pos.Y),
					Z: float64(motionInfo.Pos.Z),
				})
				// 场景区域触发器检测
				g.SceneRegionTriggerCheck(player, scene, player.Pos, &model.Vector{
					X: float64(motionInfo.Pos.X),
					Y: float64(motionInfo.Pos.Y),
					Z: float64(motionInfo.Pos.Z),
				}, sceneEntity.GetId())
				// 更新玩家的位置信息
				player.Pos.X = float64(motionInfo.Pos.X)
				player.Pos.Y = float64(motionInfo.Pos.Y)
				player.Pos.Z = float64(motionInfo.Pos.Z)
				player.Rot.X = float64(motionInfo.Rot.X)
				player.Rot.Y = float64(motionInfo.Rot.Y)
				player.Rot.Z = float64(motionInfo.Rot.Z)
				// 玩家安全位置更新
				switch motionInfo.State {
				case proto.MotionState_MOTION_DANGER_RUN,
					proto.MotionState_MOTION_RUN,
					proto.MotionState_MOTION_DANGER_STANDBY_MOVE,
					proto.MotionState_MOTION_DANGER_STANDBY,
					proto.MotionState_MOTION_LADDER_TO_STANDBY,
					proto.MotionState_MOTION_STANDBY_MOVE,
					proto.MotionState_MOTION_STANDBY,
					proto.MotionState_MOTION_DANGER_WALK,
					proto.MotionState_MOTION_WALK,
					proto.MotionState_MOTION_DASH:
					// 仅在陆地时更新玩家安全位置
					player.SafePos.X = player.Pos.X
					player.SafePos.Y = player.Pos.Y
					player.SafePos.Z = player.Pos.Z
				}
				// 处理耐力消耗
				g.ImmediateStamina(player, motionInfo.State)
			} else {
				// 非玩家实体在移动
				// 更新场景实体的位置信息
				pos := sceneEntity.GetPos()
				pos.X = float64(motionInfo.Pos.X)
				pos.Y = float64(motionInfo.Pos.Y)
				pos.Z = float64(motionInfo.Pos.Z)
				rot := sceneEntity.GetRot()
				rot.X = float64(motionInfo.Rot.X)
				rot.Y = float64(motionInfo.Rot.Y)
				rot.Z = float64(motionInfo.Rot.Z)
				if sceneEntity.GetEntityType() == constant.ENTITY_TYPE_GADGET {
					// 载具耐力消耗
					gadgetEntity := sceneEntity.GetGadgetEntity()
					if gadgetEntity.GetGadgetVehicleEntity() != nil {
						// 处理耐力消耗
						g.ImmediateStamina(player, motionInfo.State)
						// 处理载具销毁请求
						g.VehicleDestroyMotion(player, sceneEntity, motionInfo.State)
					}
				}
			}
			sceneEntity.SetMoveState(uint16(motionInfo.State))
			sceneEntity.SetLastMoveSceneTimeMs(entityMoveInfo.SceneTime)
			sceneEntity.SetLastMoveReliableSeq(entityMoveInfo.ReliableSeq)
			// 众里寻他千百度 蓦然回首 那人却在灯火阑珊处
			if motionInfo.State == proto.MotionState_MOTION_NOTIFY || motionInfo.State == proto.MotionState_MOTION_FIGHT {
				// 只要转发了这两个包的其中之一 客户端的动画就会被打断
				continue
			}
		case proto.CombatTypeArgument_COMBAT_ANIMATOR_PARAMETER_CHANGED:
			evtAnimatorParameterInfo := new(proto.EvtAnimatorParameterInfo)
			err := pb.Unmarshal(entry.CombatData, evtAnimatorParameterInfo)
			if err != nil {
				logger.Error("parse EvtAnimatorParameterInfo error: %v", err)
				break
			}
			// logger.Debug("EvtAnimatorParameterInfo: %v, ForwardType: %v", evtAnimatorParameterInfo, entry.ForwardType)
		case proto.CombatTypeArgument_COMBAT_ANIMATOR_STATE_CHANGED:
			evtAnimatorStateChangedInfo := new(proto.EvtAnimatorStateChangedInfo)
			err := pb.Unmarshal(entry.CombatData, evtAnimatorStateChangedInfo)
			if err != nil {
				logger.Error("parse EvtAnimatorStateChangedInfo error: %v", err)
				break
			}
			// logger.Debug("EvtAnimatorStateChangedInfo: %v, ForwardType: %v", evtAnimatorStateChangedInfo, entry.ForwardType)
		}
		player.CombatInvokeHandler.AddEntry(entry.ForwardType, entry)
	}
}

func (g *Game) AoiPlayerMove(player *model.Player, oldPos *model.Vector, newPos *model.Vector) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		logger.Error("get player world is nil, uid: %v", player.PlayerID)
		return
	}
	scene := world.GetSceneById(player.SceneId)
	sceneBlockAoiMap := WORLD_MANAGER.GetSceneBlockAoiMap()
	aoiManager, exist := sceneBlockAoiMap[player.SceneId]
	if !exist {
		logger.Error("get scene block aoi is nil, sceneId: %v, uid: %v", player.SceneId, player.PlayerID)
		return
	}
	oldGid := aoiManager.GetGidByPos(float32(oldPos.X), 0.0, float32(oldPos.Z))
	newGid := aoiManager.GetGidByPos(float32(newPos.X), 0.0, float32(newPos.Z))
	if oldGid != newGid {
		// 跨越了block格子
		logger.Debug("player cross grid, oldGid: %v, newGid: %v, uid: %v", oldGid, newGid, player.PlayerID)
	}
	// 加载和卸载的group
	oldNeighborGroupMap := g.GetNeighborGroup(player.SceneId, oldPos)
	newNeighborGroupMap := g.GetNeighborGroup(player.SceneId, newPos)
	for groupId, groupConfig := range oldNeighborGroupMap {
		_, exist := newNeighborGroupMap[groupId]
		if exist {
			continue
		}
		// 旧有新没有的group即为卸载的
		if !world.GetMultiplayer() {
			// 处理多人世界不同玩家不同位置的group卸载情况
			g.RemoveSceneGroup(player, scene, groupConfig)
		}
	}
	for groupId, groupConfig := range newNeighborGroupMap {
		_, exist := oldNeighborGroupMap[groupId]
		if exist {
			continue
		}
		// 新有旧没有的group即为加载的
		g.AddSceneGroup(player, scene, groupConfig)
	}
	// 消失和出现的场景实体
	oldVisionEntityMap := g.GetVisionEntity(scene, oldPos)
	newVisionEntityMap := g.GetVisionEntity(scene, newPos)
	delEntityIdList := make([]uint32, 0)
	for entityId := range oldVisionEntityMap {
		_, exist := newVisionEntityMap[entityId]
		if exist {
			continue
		}
		// 旧有新没有的实体即为消失的
		delEntityIdList = append(delEntityIdList, entityId)
	}
	addEntityIdList := make([]uint32, 0)
	for entityId := range newVisionEntityMap {
		_, exist := oldVisionEntityMap[entityId]
		if exist {
			continue
		}
		// 新有旧没有的实体即为出现的
		addEntityIdList = append(addEntityIdList, entityId)
	}
	// 同步客户端消失和出现的场景实体
	if len(delEntityIdList) > 0 {
		g.RemoveSceneEntityNotifyToPlayer(player, proto.VisionType_VISION_MISS, delEntityIdList)
	}
	if len(addEntityIdList) > 0 {
		g.AddSceneEntityNotify(player, proto.VisionType_VISION_MEET, addEntityIdList, false, false)
	}
}

func (g *Game) AbilityInvocationsNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AbilityInvocationsNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	for _, entry := range req.Invokes {
		player.AbilityInvokeHandler.AddEntry(entry.ForwardType, entry)
		switch entry.ArgumentType {
		case proto.AbilityInvokeArgument_ABILITY_META_MODIFIER_CHANGE:
			modifierChange := new(proto.AbilityMetaModifierChange)
			err := pb.Unmarshal(entry.AbilityData, modifierChange)
			if err != nil {
				logger.Error("parse AbilityMetaModifierChange error: %v", err)
				continue
			}
			// logger.Debug("entry: %v, ModifierChange: %v", entry, modifierChange)
			// 处理耐力消耗
			g.HandleAbilityStamina(player, entry)
		case proto.AbilityInvokeArgument_ABILITY_MIXIN_COST_STAMINA:
			costStamina := new(proto.AbilityMixinCostStamina)
			err := pb.Unmarshal(entry.AbilityData, costStamina)
			if err != nil {
				logger.Error("parse AbilityMixinCostStamina error: %v", err)
				continue
			}
			logger.Debug("entry: %v, MixinCostStamina: %v", entry, costStamina)
			// 处理耐力消耗
			g.HandleAbilityStamina(player, entry)
		case proto.AbilityInvokeArgument_ABILITY_ACTION_DEDUCT_STAMINA:
			deductStamina := new(proto.AbilityActionDeductStamina)
			err := pb.Unmarshal(entry.AbilityData, deductStamina)
			if err != nil {
				logger.Error("parse AbilityActionDeductStamina error: %v", err)
				continue
			}
			logger.Debug("entry: %v, ActionDeductStamina: %v", entry, deductStamina)
			// 处理耐力消耗
			g.HandleAbilityStamina(player, entry)
		case proto.AbilityInvokeArgument_ABILITY_META_MODIFIER_DURABILITY_CHANGE:
			modifierDurabilityChange := new(proto.AbilityMetaModifierDurabilityChange)
			err := pb.Unmarshal(entry.AbilityData, modifierDurabilityChange)
			if err != nil {
				logger.Error("parse AbilityMetaModifierDurabilityChange error: %v", err)
				continue
			}
			logger.Debug("entry: %v, DurabilityChange: %v", entry, modifierDurabilityChange)
		case proto.AbilityInvokeArgument_ABILITY_META_DURABILITY_IS_ZERO:
			durabilityIsZero := new(proto.AbilityMetaDurabilityIsZero)
			err := pb.Unmarshal(entry.AbilityData, durabilityIsZero)
			if err != nil {
				logger.Error("parse AbilityMetaDurabilityIsZero error: %v", err)
				continue
			}
			logger.Debug("entry: %v, DurabilityIsZero: %v", entry, durabilityIsZero)
		case proto.AbilityInvokeArgument_ABILITY_MIXIN_ELITE_SHIELD:
		case proto.AbilityInvokeArgument_ABILITY_MIXIN_ELEMENT_SHIELD:
		case proto.AbilityInvokeArgument_ABILITY_MIXIN_GLOBAL_SHIELD:
		case proto.AbilityInvokeArgument_ABILITY_MIXIN_SHIELD_BAR:
		}
	}
}

func (g *Game) ClientAbilityInitFinishNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.ClientAbilityInitFinishNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	invokeHandler := model.NewInvokeHandler[proto.AbilityInvokeEntry]()
	for _, entry := range req.Invokes {
		// logger.Debug("ClientAbilityInitFinishNotify: %v", entry)
		invokeHandler.AddEntry(entry.ForwardType, entry)
	}
	DoForward[proto.AbilityInvokeEntry](player, invokeHandler,
		cmd.ClientAbilityInitFinishNotify, new(proto.ClientAbilityInitFinishNotify), "Invokes",
		req, []string{"EntityId"})
}

func (g *Game) ClientAbilityChangeNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.ClientAbilityChangeNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	invokeHandler := model.NewInvokeHandler[proto.AbilityInvokeEntry]()
	for _, entry := range req.Invokes {
		// logger.Debug("ClientAbilityChangeNotify: %v", entry)
		invokeHandler.AddEntry(entry.ForwardType, entry)
	}
	DoForward[proto.AbilityInvokeEntry](player, invokeHandler,
		cmd.ClientAbilityChangeNotify, new(proto.ClientAbilityChangeNotify), "Invokes",
		req, []string{"IsInitHash", "EntityId"})
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	for _, abilityInvokeEntry := range req.Invokes {
		switch abilityInvokeEntry.ArgumentType {
		case proto.AbilityInvokeArgument_ABILITY_META_ADD_NEW_ABILITY:
			abilityMetaAddAbility := new(proto.AbilityMetaAddAbility)
			err := pb.Unmarshal(abilityInvokeEntry.AbilityData, abilityMetaAddAbility)
			if err != nil {
				logger.Error("parse AbilityMetaAddAbility error: %v", err)
				continue
			}
			worldAvatar := world.GetWorldAvatarByEntityId(abilityInvokeEntry.EntityId)
			if worldAvatar == nil {
				continue
			}
			if abilityMetaAddAbility.Ability == nil {
				continue
			}
			abilityList := worldAvatar.GetAbilityList()
			abilityList = append(abilityList, abilityMetaAddAbility.Ability)
			worldAvatar.SetAbilityList(abilityList)
		case proto.AbilityInvokeArgument_ABILITY_META_MODIFIER_CHANGE:
			abilityMetaModifierChange := new(proto.AbilityMetaModifierChange)
			err := pb.Unmarshal(abilityInvokeEntry.AbilityData, abilityMetaModifierChange)
			if err != nil {
				logger.Error("parse AbilityMetaModifierChange error: %v", err)
				continue
			}
			abilityAppliedModifier := &proto.AbilityAppliedModifier{
				ModifierLocalId:           abilityMetaModifierChange.ModifierLocalId,
				ParentAbilityEntityId:     0,
				ParentAbilityName:         abilityMetaModifierChange.ParentAbilityName,
				ParentAbilityOverride:     abilityMetaModifierChange.ParentAbilityOverride,
				InstancedAbilityId:        abilityInvokeEntry.Head.InstancedAbilityId,
				InstancedModifierId:       abilityInvokeEntry.Head.InstancedModifierId,
				ExistDuration:             0,
				AttachedInstancedModifier: abilityMetaModifierChange.AttachedInstancedModifier,
				ApplyEntityId:             abilityMetaModifierChange.ApplyEntityId,
				IsAttachedParentAbility:   abilityMetaModifierChange.IsAttachedParentAbility,
				ModifierDurability:        nil,
				SbuffUid:                  0,
				IsServerbuffModifier:      abilityInvokeEntry.Head.IsServerbuffModifier,
			}
			worldAvatar := world.GetWorldAvatarByEntityId(abilityInvokeEntry.EntityId)
			if worldAvatar == nil {
				continue
			}
			modifierList := worldAvatar.GetModifierList()
			modifierList = append(modifierList, abilityAppliedModifier)
			worldAvatar.SetModifierList(modifierList)
		}
	}
}

func (g *Game) EvtDoSkillSuccNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtDoSkillSuccNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtDoSkillSuccNotify: %v", req)
	// 处理技能开始的耐力消耗
	g.SkillStartStamina(player, req.CasterId, req.SkillId)
	g.TriggerQuest(player, constant.QUEST_FINISH_COND_TYPE_SKILL, "", int32(req.SkillId))
}

func (g *Game) EvtAvatarEnterFocusNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtAvatarEnterFocusNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	// logger.Debug("EvtAvatarEnterFocusNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtAvatarEnterFocusNotify, player.ClientSeq, req)
}

func (g *Game) EvtAvatarUpdateFocusNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtAvatarUpdateFocusNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	// logger.Debug("EvtAvatarUpdateFocusNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtAvatarUpdateFocusNotify, player.ClientSeq, req)
}

func (g *Game) EvtAvatarExitFocusNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtAvatarExitFocusNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	// logger.Debug("EvtAvatarExitFocusNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtAvatarExitFocusNotify, player.ClientSeq, req)
}

func (g *Game) EvtEntityRenderersChangedNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtEntityRenderersChangedNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	// logger.Debug("EvtEntityRenderersChangedNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtEntityRenderersChangedNotify, player.ClientSeq, req)
}

func (g *Game) EvtCreateGadgetNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtCreateGadgetNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	// logger.Debug("EvtCreateGadgetNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		logger.Error("world is nil, WorldId: %v", player.WorldId)
		return
	}
	scene := world.GetSceneById(player.SceneId)
	if req.InitPos == nil {
		return
	}
	scene.CreateEntityGadgetClient(&model.Vector{
		X: float64(req.InitPos.X),
		Y: float64(req.InitPos.Y),
		Z: float64(req.InitPos.Z),
	}, &model.Vector{
		X: float64(req.InitEulerAngles.X),
		Y: float64(req.InitEulerAngles.Y),
		Z: float64(req.InitEulerAngles.Z),
	}, req.EntityId, req.ConfigId, req.CampId, req.CampType, req.OwnerEntityId, req.TargetEntityId, req.PropOwnerEntityId)
	g.AddSceneEntityNotify(player, proto.VisionType_VISION_BORN, []uint32{req.EntityId}, true, true)
}

func (g *Game) EvtDestroyGadgetNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtDestroyGadgetNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	// logger.Debug("EvtDestroyGadgetNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		logger.Error("world is nil, worldId: %v", player.WorldId)
		return
	}
	scene := world.GetSceneById(player.SceneId)
	scene.DestroyEntity(req.EntityId)
	g.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_MISS, []uint32{req.EntityId})
}

func (g *Game) EvtAiSyncSkillCdNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtAiSyncSkillCdNotify)
	_ = req
}

func (g *Game) EvtAiSyncCombatThreatInfoNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EvtAiSyncCombatThreatInfoNotify)
	_ = req
}

func (g *Game) EntityConfigHashNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EntityConfigHashNotify)
	_ = req
}

func (g *Game) MonsterAIConfigHashNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.MonsterAIConfigHashNotify)
	_ = req
}

func (g *Game) SetEntityClientDataNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetEntityClientDataNotify)
	g.SendMsg(cmd.SetEntityClientDataNotify, player.PlayerID, player.ClientSeq, req)
}

func (g *Game) EntityAiSyncNotify(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.EntityAiSyncNotify)
	entityAiSyncNotify := &proto.EntityAiSyncNotify{
		InfoList: make([]*proto.AiSyncInfo, 0),
	}
	for _, monsterId := range req.LocalAvatarAlertedMonsterList {
		entityAiSyncNotify.InfoList = append(entityAiSyncNotify.InfoList, &proto.AiSyncInfo{
			EntityId:        monsterId,
			HasPathToTarget: true,
			IsSelfKilling:   false,
		})
	}
	g.SendMsg(cmd.EntityAiSyncNotify, player.PlayerID, player.ClientSeq, entityAiSyncNotify)
}
