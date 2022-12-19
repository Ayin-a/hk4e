package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/reflection"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

var cmdProtoMap *cmd.CmdProtoMap = nil

func DoForward[IET model.InvokeEntryType](player *model.Player, req pb.Message, copyFieldList []string, forwardField string, invokeHandler *model.InvokeHandler[IET]) {
	if cmdProtoMap == nil {
		cmdProtoMap = cmd.NewCmdProtoMap()
	}
	cmdId := cmdProtoMap.GetCmdIdByProtoObj(req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if invokeHandler.AllLen() == 0 && invokeHandler.AllExceptCurLen() == 0 && invokeHandler.HostLen() == 0 {
		ntf := cmdProtoMap.GetProtoObjByCmdId(cmdId)
		for _, fieldName := range copyFieldList {
			reflection.CopyStructField(ntf, req, fieldName)
		}
		for _, v := range world.playerMap {
			GAME_MANAGER.SendMsg(cmdId, v.PlayerID, player.ClientSeq, ntf)
		}
	}
	if invokeHandler.AllLen() > 0 {
		ntf := cmdProtoMap.GetProtoObjByCmdId(cmdId)
		for _, fieldName := range copyFieldList {
			reflection.CopyStructField(ntf, req, fieldName)
		}
		reflection.SetStructFieldValue(ntf, forwardField, invokeHandler.EntryListForwardAll)
		GAME_MANAGER.SendToWorldA(world, cmdId, player.ClientSeq, ntf)
	}
	if invokeHandler.AllExceptCurLen() > 0 {
		ntf := cmdProtoMap.GetProtoObjByCmdId(cmdId)
		for _, fieldName := range copyFieldList {
			reflection.CopyStructField(ntf, req, fieldName)
		}
		reflection.SetStructFieldValue(ntf, forwardField, invokeHandler.EntryListForwardAllExceptCur)
		GAME_MANAGER.SendToWorldAEC(world, cmdId, player.ClientSeq, ntf, player.PlayerID)
	}
	if invokeHandler.HostLen() > 0 {
		ntf := cmdProtoMap.GetProtoObjByCmdId(cmdId)
		for _, fieldName := range copyFieldList {
			reflection.CopyStructField(ntf, req, fieldName)
		}
		reflection.SetStructFieldValue(ntf, forwardField, invokeHandler.EntryListForwardHost)
		GAME_MANAGER.SendToWorldH(world, cmdId, player.ClientSeq, ntf)
	}
}

func (g *GameManager) UnionCmdNotify(player *model.Player, payloadMsg pb.Message) {
	// logger.Debug("user send union cmd, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.UnionCmdNotify)
	_ = req
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	DoForward[proto.CombatInvokeEntry](player, &proto.CombatInvocationsNotify{}, []string{}, "InvokeList", player.CombatInvokeHandler)
	DoForward[proto.AbilityInvokeEntry](player, &proto.AbilityInvocationsNotify{}, []string{}, "Invokes", player.AbilityInvokeHandler)
	player.CombatInvokeHandler.Clear()
	player.AbilityInvokeHandler.Clear()
}

func (g *GameManager) MassiveEntityElementOpBatchNotify(player *model.Player, payloadMsg pb.Message) {
	// logger.Debug("user meeo sync, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.MassiveEntityElementOpBatchNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	ntf := req
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	ntf.OpIdx = scene.meeoIndex
	scene.meeoIndex++
	g.SendToWorldA(world, cmd.MassiveEntityElementOpBatchNotify, player.ClientSeq, ntf)
}

func (g *GameManager) CombatInvocationsNotify(player *model.Player, payloadMsg pb.Message) {
	// logger.Debug("user combat invocations, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.CombatInvocationsNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	for _, entry := range req.InvokeList {
		switch entry.ArgumentType {
		case proto.CombatTypeArgument_COMBAT_TYPE_ARGUMENT_EVT_BEING_HIT:
			player.CombatInvokeHandler.AddEntry(entry.ForwardType, entry)
		case proto.CombatTypeArgument_COMBAT_TYPE_ARGUMENT_ENTITY_MOVE:
			entityMoveInfo := new(proto.EntityMoveInfo)
			err := pb.Unmarshal(entry.CombatData, entityMoveInfo)
			if err != nil {
				logger.Error("parse EntityMoveInfo error: %v", err)
				continue
			}
			motionInfo := entityMoveInfo.MotionInfo
			if motionInfo.Pos == nil || motionInfo.Rot == nil {
				continue
			}
			sceneEntity := scene.GetEntity(entityMoveInfo.EntityId)
			if sceneEntity == nil {
				continue
			}
			if sceneEntity.avatarEntity != nil {
				// 玩家实体在移动
				// 更新玩家的位置信息
				player.Pos.X = float64(motionInfo.Pos.X)
				player.Pos.Y = float64(motionInfo.Pos.Y)
				player.Pos.Z = float64(motionInfo.Pos.Z)
				player.Rot.X = float64(motionInfo.Rot.X)
				player.Rot.Y = float64(motionInfo.Rot.Y)
				player.Rot.Z = float64(motionInfo.Rot.Z)

				// 处理耐力消耗
				g.ImmediateStamina(player, motionInfo.State)
			} else {
				// 非玩家实体在移动 更新场景实体的位置信息
				sceneEntity.pos = &model.Vector{
					X: float64(motionInfo.Pos.X),
					Y: float64(motionInfo.Pos.Y),
					Z: float64(motionInfo.Pos.Z),
				}
				sceneEntity.rot = &model.Vector{
					X: float64(motionInfo.Rot.X),
					Y: float64(motionInfo.Rot.Y),
					Z: float64(motionInfo.Rot.Z),
				}
			}
			sceneEntity.moveState = uint16(motionInfo.State)
			sceneEntity.lastMoveSceneTimeMs = entityMoveInfo.SceneTime
			sceneEntity.lastMoveReliableSeq = entityMoveInfo.ReliableSeq

			player.CombatInvokeHandler.AddEntry(entry.ForwardType, entry)
		case proto.CombatTypeArgument_COMBAT_TYPE_ARGUMENT_ANIMATOR_STATE_CHANGED:
			evtAnimatorStateChangedInfo := new(proto.EvtAnimatorStateChangedInfo)
			err := pb.Unmarshal(entry.CombatData, evtAnimatorStateChangedInfo)
			if err != nil {
				logger.Error("parse EvtAnimatorStateChangedInfo error: %v", err)
			}
			logger.Debug("EvtAnimatorStateChangedInfo: %v", entry, player.PlayerID)
			player.CombatInvokeHandler.AddEntry(entry.ForwardType, entry)
		default:
			player.CombatInvokeHandler.AddEntry(entry.ForwardType, entry)
		}
	}
}

func (g *GameManager) AbilityInvocationsNotify(player *model.Player, payloadMsg pb.Message) {
	// logger.Debug("user ability invocations, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.AbilityInvocationsNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}

	for _, entry := range req.Invokes {
		// logger.Debug("AbilityInvocationsNotify: %v", entry, player.PlayerID)

		// switch entry.ArgumentType {
		// case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_META_MODIFIER_CHANGE:
		//	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
		//	worldAvatar := world.GetWorldAvatarByEntityId(entry.EntityId)
		//	if worldAvatar != nil {
		//		for _, ability := range worldAvatar.abilityList {
		//			if ability.InstancedAbilityId == entry.Head.InstancedAbilityId {
		//				logger.Error("A: %v", ability)
		//			}
		//		}
		//		for _, modifier := range worldAvatar.modifierList {
		//			if modifier.InstancedAbilityId == entry.Head.InstancedAbilityId {
		//				logger.Error("B: %v", modifier)
		//			}
		//		}
		//		for _, modifier := range worldAvatar.modifierList {
		//			if modifier.InstancedModifierId == entry.Head.InstancedModifierId {
		//				logger.Error("C: %v", modifier)
		//			}
		//		}
		//	}
		// case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_NONE:
		// }

		// 处理耐力消耗
		g.HandleAbilityStamina(player, entry)
		player.AbilityInvokeHandler.AddEntry(entry.ForwardType, entry)
	}
}

func (g *GameManager) ClientAbilityInitFinishNotify(player *model.Player, payloadMsg pb.Message) {
	// logger.Debug("user client ability init finish, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ClientAbilityInitFinishNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	invokeHandler := model.NewInvokeHandler[proto.AbilityInvokeEntry]()
	for _, entry := range req.Invokes {
		logger.Debug("ClientAbilityInitFinishNotify: %v", entry, player.PlayerID)
		invokeHandler.AddEntry(entry.ForwardType, entry)
	}
	DoForward[proto.AbilityInvokeEntry](player, &proto.ClientAbilityInitFinishNotify{}, []string{"EntityId"}, "Invokes", invokeHandler)
}

func (g *GameManager) ClientAbilityChangeNotify(player *model.Player, payloadMsg pb.Message) {
	// logger.Debug("user client ability change, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ClientAbilityChangeNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	invokeHandler := model.NewInvokeHandler[proto.AbilityInvokeEntry]()
	for _, entry := range req.Invokes {
		logger.Debug("ClientAbilityChangeNotify: %v", entry, player.PlayerID)

		invokeHandler.AddEntry(entry.ForwardType, entry)
	}
	DoForward[proto.AbilityInvokeEntry](player, req, []string{"EntityId", "IsInitHash"}, "Invokes", invokeHandler)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	for _, abilityInvokeEntry := range req.Invokes {
		switch abilityInvokeEntry.ArgumentType {
		case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_META_ADD_NEW_ABILITY:
			abilityMetaAddAbility := new(proto.AbilityMetaAddAbility)
			err := pb.Unmarshal(abilityInvokeEntry.AbilityData, abilityMetaAddAbility)
			if err != nil {
				logger.Error("%v", err)
				continue
			}
			worldAvatar := world.GetWorldAvatarByEntityId(abilityInvokeEntry.EntityId)
			if worldAvatar == nil {
				continue
			}
			worldAvatar.abilityList = append(worldAvatar.abilityList, abilityMetaAddAbility.Ability)
		case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_META_MODIFIER_CHANGE:
			abilityMetaModifierChange := new(proto.AbilityMetaModifierChange)
			err := pb.Unmarshal(abilityInvokeEntry.AbilityData, abilityMetaModifierChange)
			if err != nil {
				logger.Error("%v", err)
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
			worldAvatar.modifierList = append(worldAvatar.modifierList, abilityAppliedModifier)
		default:
		}
	}
}

func (g *GameManager) EvtDoSkillSuccNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user event do skill success, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtDoSkillSuccNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtDoSkillSuccNotify: %v", req)

	// 处理技能开始的耐力消耗
	g.SkillStartStamina(player, req.CasterId, req.SkillId)
}

func (g *GameManager) EvtAvatarEnterFocusNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user avatar enter focus, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtAvatarEnterFocusNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtAvatarEnterFocusNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtAvatarEnterFocusNotify, player.ClientSeq, req)
}

func (g *GameManager) EvtAvatarUpdateFocusNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user avatar update focus, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtAvatarUpdateFocusNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtAvatarUpdateFocusNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtAvatarUpdateFocusNotify, player.ClientSeq, req)
}

func (g *GameManager) EvtAvatarExitFocusNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user avatar exit focus, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtAvatarExitFocusNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtAvatarExitFocusNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtAvatarExitFocusNotify, player.ClientSeq, req)
}

func (g *GameManager) EvtEntityRenderersChangedNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user entity render change, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtEntityRenderersChangedNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtEntityRenderersChangedNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.SendToWorldA(world, cmd.EvtEntityRenderersChangedNotify, player.ClientSeq, req)
}

func (g *GameManager) EvtCreateGadgetNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user create gadget, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtCreateGadgetNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtCreateGadgetNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	scene.ClientCreateEntityGadget(&model.Vector{
		X: float64(req.InitPos.X),
		Y: float64(req.InitPos.Y),
		Z: float64(req.InitPos.Z),
	}, &model.Vector{
		X: float64(req.InitEulerAngles.X),
		Y: float64(req.InitEulerAngles.Y),
		Z: float64(req.InitEulerAngles.Z),
	}, req.EntityId, req.ConfigId, req.CampId, req.CampType, req.OwnerEntityId, req.TargetEntityId, req.PropOwnerEntityId)
	g.AddSceneEntityNotify(player, proto.VisionType_VISION_TYPE_BORN, []uint32{req.EntityId}, true, true)
}

func (g *GameManager) EvtDestroyGadgetNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user destroy gadget, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtDestroyGadgetNotify)
	if player.SceneLoadState != model.SceneEnterDone {
		return
	}
	logger.Debug("EvtDestroyGadgetNotify: %v", req)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	scene.DestroyEntity(req.EntityId)
	g.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_TYPE_MISS, []uint32{req.EntityId})
}
