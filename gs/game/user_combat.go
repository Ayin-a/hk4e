package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) CombatInvocationsNotify(player *model.Player, payloadMsg pb.Message) {
	//logger.LOG.Debug("user combat invocations, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.CombatInvocationsNotify)
	world := g.worldManager.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	invokeHandler := NewInvokeHandler[proto.CombatInvokeEntry]()
	for _, entry := range req.InvokeList {
		//logger.LOG.Debug("AT: %v, FT: %v, UID: %v", entry.ArgumentType, entry.ForwardType, player.PlayerID)
		switch entry.ArgumentType {
		case proto.CombatTypeArgument_COMBAT_TYPE_ARGUMENT_EVT_BEING_HIT:
			scene.AddAttack(&Attack{
				combatInvokeEntry: entry,
				uid:               player.PlayerID,
			})
		case proto.CombatTypeArgument_COMBAT_TYPE_ARGUMENT_ENTITY_MOVE:
			entityMoveInfo := new(proto.EntityMoveInfo)
			err := pb.Unmarshal(entry.CombatData, entityMoveInfo)
			if err != nil {
				logger.LOG.Error("parse combat invocations entity move info error: %v", err)
				continue
			}
			motionInfo := entityMoveInfo.MotionInfo
			if motionInfo.Pos == nil || motionInfo.Rot == nil {
				continue
			}
			activeAvatarId := player.TeamConfig.GetActiveAvatarId()
			playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
			playerActiveAvatarEntityId := playerTeamEntity.avatarEntityMap[activeAvatarId]
			if entityMoveInfo.EntityId == playerActiveAvatarEntityId {
				// 玩家在移动
				ok := world.aoiManager.IsValidAoiPos(motionInfo.Pos.X, motionInfo.Pos.Y, motionInfo.Pos.Z)
				if !ok {
					continue
				}
				// aoi
				oldGid := world.aoiManager.GetGidByPos(float32(player.Pos.X), float32(player.Pos.Y), float32(player.Pos.Z))
				newGid := world.aoiManager.GetGidByPos(motionInfo.Pos.X, motionInfo.Pos.Y, motionInfo.Pos.Z)
				if oldGid != newGid {
					// 跨越了格子
					oldGridList := world.aoiManager.GetSurrGridListByGid(oldGid)
					oldEntityIdMap := make(map[uint32]bool)
					for _, grid := range oldGridList {
						tmp := grid.GetEntityIdList()
						for _, v := range tmp {
							oldEntityIdMap[v] = true
						}
					}
					newGridList := world.aoiManager.GetSurrGridListByGid(newGid)
					newEntityIdMap := make(map[uint32]bool)
					for _, grid := range newGridList {
						tmp := grid.GetEntityIdList()
						for _, v := range tmp {
							newEntityIdMap[v] = true
						}
					}
					delEntityIdList := make([]uint32, 0)
					delUidList := make([]uint32, 0)
					for oldEntityId := range oldEntityIdMap {
						_, exist := newEntityIdMap[oldEntityId]
						if exist {
							continue
						}
						delEntityIdList = append(delEntityIdList, oldEntityId)
						entity := scene.GetEntity(oldEntityId)
						if entity == nil {
							continue
						}
						if entity.avatarEntity != nil {
							delUidList = append(delUidList, entity.avatarEntity.uid)
						}
					}
					addEntityIdList := make([]uint32, 0)
					addUidList := make([]uint32, 0)
					for newEntityId := range newEntityIdMap {
						_, exist := oldEntityIdMap[newEntityId]
						if exist {
							continue
						}
						addEntityIdList = append(addEntityIdList, newEntityId)
						entity := scene.GetEntity(newEntityId)
						if entity == nil {
							continue
						}
						if entity.avatarEntity != nil {
							addUidList = append(addUidList, entity.avatarEntity.uid)
						}
					}
					// 发送已消失格子里的实体消失通知
					g.RemoveSceneEntityNotifyToPlayer(player, delEntityIdList)
					// 发送新出现格子里的实体出现通知
					g.AddSceneEntityNotify(player, proto.VisionType_VISION_TYPE_BORN, addEntityIdList, false)
					// 更新玩家的位置信息
					player.Pos.X = float64(motionInfo.Pos.X)
					player.Pos.Y = float64(motionInfo.Pos.Y)
					player.Pos.Z = float64(motionInfo.Pos.Z)
					// 更新玩家所在格子
					world.aoiManager.RemoveEntityIdFromGrid(playerActiveAvatarEntityId, oldGid)
					world.aoiManager.AddEntityIdToGrid(playerActiveAvatarEntityId, newGid)
					// 其他玩家
					for _, uid := range delUidList {
						otherPlayer := g.userManager.GetOnlineUser(uid)
						g.RemoveSceneEntityNotifyToPlayer(otherPlayer, []uint32{playerActiveAvatarEntityId})
					}
					for _, uid := range addUidList {
						otherPlayer := g.userManager.GetOnlineUser(uid)
						g.AddSceneEntityNotify(otherPlayer, proto.VisionType_VISION_TYPE_BORN, []uint32{playerActiveAvatarEntityId}, false)
					}
				}
				// 把队伍中的其他非活跃角色也同步进行移动
				team := player.TeamConfig.GetActiveTeam()
				for _, avatarId := range team.AvatarIdList {
					// 跳过当前的活跃角色
					if avatarId == activeAvatarId {
						continue
					}
					entityId := playerTeamEntity.avatarEntityMap[avatarId]
					entity := scene.GetEntity(entityId)
					if entity == nil {
						continue
					}
					entity.pos.X = float64(motionInfo.Pos.X)
					entity.pos.Y = float64(motionInfo.Pos.Y)
					entity.pos.Z = float64(motionInfo.Pos.Z)
					entity.rot.X = float64(motionInfo.Rot.X)
					entity.rot.Y = float64(motionInfo.Rot.Y)
					entity.rot.Z = float64(motionInfo.Rot.Z)
				}
				// 更新玩家的位置信息
				player.Pos.X = float64(motionInfo.Pos.X)
				player.Pos.Y = float64(motionInfo.Pos.Y)
				player.Pos.Z = float64(motionInfo.Pos.Z)
				player.Rot.X = float64(motionInfo.Rot.X)
				player.Rot.Y = float64(motionInfo.Rot.Y)
				player.Rot.Z = float64(motionInfo.Rot.Z)
				//// TODO 采集大地图地形数据
				//if world.IsBigWorld() && scene.id == 3 && player.PlayerID != 1 {
				//	if motionInfo.State == proto.MotionState_MOTION_STATE_WALK ||
				//		motionInfo.State == proto.MotionState_MOTION_STATE_RUN ||
				//		motionInfo.State == proto.MotionState_MOTION_STATE_DASH ||
				//		motionInfo.State == proto.MotionState_MOTION_STATE_CLIMB {
				//		logger.LOG.Debug("set terr motionInfo: %v", motionInfo)
				//		exist := g.worldManager.worldStatic.GetTerrain(int16(motionInfo.Pos.X), int16(motionInfo.Pos.Y), int16(motionInfo.Pos.Z))
				//		g.worldManager.worldStatic.SetTerrain(int16(motionInfo.Pos.X), int16(motionInfo.Pos.Y), int16(motionInfo.Pos.Z))
				//		if !exist {
				//			// TODO 薄荷标记
				//			// 只给附近aoi区域的玩家广播消息
				//			surrPlayerList := make([]*model.Player, 0)
				//			entityIdList := world.aoiManager.GetEntityIdListByPos(float32(player.Pos.X), float32(player.Pos.Y), float32(player.Pos.Z))
				//			for _, entityId := range entityIdList {
				//				entity := scene.GetEntity(entityId)
				//				if entity == nil {
				//					continue
				//				}
				//				if entity.avatarEntity != nil {
				//					otherPlayer := g.userManager.GetOnlineUser(entity.avatarEntity.uid)
				//					surrPlayerList = append(surrPlayerList, otherPlayer)
				//				}
				//			}
				//			pos := &model.Vector{
				//				X: float64(int16(motionInfo.Pos.X)),
				//				Y: float64(int16(motionInfo.Pos.Y)),
				//				Z: float64(int16(motionInfo.Pos.Z)),
				//			}
				//			gadgetEntityId := scene.CreateEntityGadget(pos, 3003009)
				//			for _, otherPlayer := range surrPlayerList {
				//				g.AddSceneEntityNotify(otherPlayer, proto.VisionType_VISION_TYPE_BORN, []uint32{gadgetEntityId}, false)
				//			}
				//		}
				//	}
				//}
			}
			// 更新场景实体的位置信息
			sceneEntity := scene.GetEntity(entityMoveInfo.EntityId)
			if sceneEntity != nil {
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
				sceneEntity.moveState = uint16(motionInfo.State)
				sceneEntity.lastMoveSceneTimeMs = entityMoveInfo.SceneTime
				sceneEntity.lastMoveReliableSeq = entityMoveInfo.ReliableSeq
				//logger.LOG.Debug("entity move, id: %v, pos: %v, uid: %v", sceneEntity.id, sceneEntity.pos, player.PlayerID)
			}

			// 处理耐力消耗
			g.HandleStamina(player, motionInfo.State)

			invokeHandler.addEntry(entry.ForwardType, entry)
		default:
			invokeHandler.addEntry(entry.ForwardType, entry)
		}
	}

	// 只给附近aoi区域的玩家广播消息
	surrPlayerList := make([]*model.Player, 0)
	entityIdList := world.aoiManager.GetEntityIdListByPos(float32(player.Pos.X), float32(player.Pos.Y), float32(player.Pos.Z))
	for _, entityId := range entityIdList {
		entity := scene.GetEntity(entityId)
		if entity == nil {
			continue
		}
		if entity.avatarEntity != nil {
			otherPlayer := g.userManager.GetOnlineUser(entity.avatarEntity.uid)
			surrPlayerList = append(surrPlayerList, otherPlayer)
		}
	}

	// 处理转发
	// PacketCombatInvocationsNotify
	if invokeHandler.AllLen() > 0 {
		combatInvocationsNotify := new(proto.CombatInvocationsNotify)
		combatInvocationsNotify.InvokeList = invokeHandler.entryListForwardAll
		for _, v := range surrPlayerList {
			g.SendMsg(cmd.CombatInvocationsNotify, v.PlayerID, v.ClientSeq, combatInvocationsNotify)
		}
	}
	if invokeHandler.AllExceptCurLen() > 0 {
		combatInvocationsNotify := new(proto.CombatInvocationsNotify)
		combatInvocationsNotify.InvokeList = invokeHandler.entryListForwardAllExceptCur
		for _, v := range surrPlayerList {
			if player.PlayerID == v.PlayerID {
				continue
			}
			g.SendMsg(cmd.CombatInvocationsNotify, v.PlayerID, v.ClientSeq, combatInvocationsNotify)
		}
	}
	if invokeHandler.HostLen() > 0 {
		combatInvocationsNotify := new(proto.CombatInvocationsNotify)
		combatInvocationsNotify.InvokeList = invokeHandler.entryListForwardHost
		g.SendMsg(cmd.CombatInvocationsNotify, world.owner.PlayerID, world.owner.ClientSeq, combatInvocationsNotify)
	}
}

func (g *GameManager) AbilityInvocationsNotify(player *model.Player, payloadMsg pb.Message) {
	//logger.LOG.Debug("user ability invocations, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.AbilityInvocationsNotify)
	world := g.worldManager.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	invokeHandler := NewInvokeHandler[proto.AbilityInvokeEntry]()
	for _, entry := range req.Invokes {
		//logger.LOG.Debug("AT: %v, FT: %v, UID: %v", entry.ArgumentType, entry.ForwardType, player.PlayerID)

		// 处理能力调用
		g.HandleAbilityInvoke(player, entry)

		invokeHandler.addEntry(entry.ForwardType, entry)
	}

	// 只给附近aoi区域的玩家广播消息
	surrPlayerList := make([]*model.Player, 0)
	entityIdList := world.aoiManager.GetEntityIdListByPos(float32(player.Pos.X), float32(player.Pos.Y), float32(player.Pos.Z))
	for _, entityId := range entityIdList {
		entity := scene.GetEntity(entityId)
		if entity == nil {
			continue
		}
		if entity.avatarEntity != nil {
			otherPlayer := g.userManager.GetOnlineUser(entity.avatarEntity.uid)
			surrPlayerList = append(surrPlayerList, otherPlayer)
		}
	}

	// 处理转发
	// PacketAbilityInvocationsNotify
	if invokeHandler.AllLen() > 0 {
		abilityInvocationsNotify := new(proto.AbilityInvocationsNotify)
		abilityInvocationsNotify.Invokes = invokeHandler.entryListForwardAll
		for _, v := range surrPlayerList {
			g.SendMsg(cmd.AbilityInvocationsNotify, v.PlayerID, v.ClientSeq, abilityInvocationsNotify)
		}
	}
	if invokeHandler.AllExceptCurLen() > 0 {
		abilityInvocationsNotify := new(proto.AbilityInvocationsNotify)
		abilityInvocationsNotify.Invokes = invokeHandler.entryListForwardAllExceptCur
		for _, v := range surrPlayerList {
			if player.PlayerID == v.PlayerID {
				continue
			}
			g.SendMsg(cmd.AbilityInvocationsNotify, v.PlayerID, v.ClientSeq, abilityInvocationsNotify)
		}
	}
	if invokeHandler.HostLen() > 0 {
		abilityInvocationsNotify := new(proto.AbilityInvocationsNotify)
		abilityInvocationsNotify.Invokes = invokeHandler.entryListForwardHost
		g.SendMsg(cmd.AbilityInvocationsNotify, world.owner.PlayerID, world.owner.ClientSeq, abilityInvocationsNotify)
	}
}

func (g *GameManager) ClientAbilityInitFinishNotify(player *model.Player, payloadMsg pb.Message) {
	//logger.LOG.Debug("user client ability init finish, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ClientAbilityInitFinishNotify)
	world := g.worldManager.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	invokeHandler := NewInvokeHandler[proto.AbilityInvokeEntry]()
	for _, entry := range req.Invokes {
		//logger.LOG.Debug("AT: %v, FT: %v, UID: %v", entry.ArgumentType, entry.ForwardType, player.PlayerID)

		// 处理能力调用
		g.HandleAbilityInvoke(player, entry)

		invokeHandler.addEntry(entry.ForwardType, entry)
	}

	// 只给附近aoi区域的玩家广播消息
	surrPlayerList := make([]*model.Player, 0)
	entityIdList := world.aoiManager.GetEntityIdListByPos(float32(player.Pos.X), float32(player.Pos.Y), float32(player.Pos.Z))
	for _, entityId := range entityIdList {
		entity := scene.GetEntity(entityId)
		if entity == nil {
			continue
		}
		if entity.avatarEntity != nil {
			otherPlayer := g.userManager.GetOnlineUser(entity.avatarEntity.uid)
			surrPlayerList = append(surrPlayerList, otherPlayer)
		}
	}

	// 处理转发
	// PacketClientAbilityInitFinishNotify
	if invokeHandler.AllLen() > 0 {
		clientAbilityInitFinishNotify := new(proto.ClientAbilityInitFinishNotify)
		clientAbilityInitFinishNotify.Invokes = invokeHandler.entryListForwardAll
		for _, v := range surrPlayerList {
			g.SendMsg(cmd.ClientAbilityInitFinishNotify, v.PlayerID, v.ClientSeq, clientAbilityInitFinishNotify)
		}
	}
	if invokeHandler.AllExceptCurLen() > 0 {
		clientAbilityInitFinishNotify := new(proto.ClientAbilityInitFinishNotify)
		clientAbilityInitFinishNotify.Invokes = invokeHandler.entryListForwardAllExceptCur
		for _, v := range surrPlayerList {
			if player.PlayerID == v.PlayerID {
				continue
			}
			g.SendMsg(cmd.ClientAbilityInitFinishNotify, v.PlayerID, v.ClientSeq, clientAbilityInitFinishNotify)
		}
	}
	if invokeHandler.HostLen() > 0 {
		clientAbilityInitFinishNotify := new(proto.ClientAbilityInitFinishNotify)
		clientAbilityInitFinishNotify.Invokes = invokeHandler.entryListForwardHost
		g.SendMsg(cmd.ClientAbilityInitFinishNotify, world.owner.PlayerID, world.owner.ClientSeq, clientAbilityInitFinishNotify)
	}
}

func (g *GameManager) EvtDoSkillSuccNotify(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user event do skill success, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EvtDoSkillSuccNotify)
	logger.LOG.Debug("EvtDoSkillSuccNotify: %v", req)

	// 处理技能开始时的耐力消耗
	g.HandleSkillStartStamina(player, req.SkillId)
}

func (g *GameManager) ClientAbilityChangeNotify(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user client ability change, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ClientAbilityChangeNotify)
	logger.LOG.Debug("ClientAbilityChangeNotify: %v", req)
}

// 泛型通用转发器

type InvokeType interface {
	proto.AbilityInvokeEntry | proto.CombatInvokeEntry
}

type InvokeHandler[T InvokeType] struct {
	entryListForwardAll          []*T
	entryListForwardAllExceptCur []*T
	entryListForwardHost         []*T
}

func NewInvokeHandler[T InvokeType]() (r *InvokeHandler[T]) {
	r = new(InvokeHandler[T])
	r.InitInvokeHandler()
	return r
}

func (i *InvokeHandler[T]) InitInvokeHandler() {
	i.entryListForwardAll = make([]*T, 0)
	i.entryListForwardAllExceptCur = make([]*T, 0)
	i.entryListForwardHost = make([]*T, 0)
}

func (i *InvokeHandler[T]) addEntry(forward proto.ForwardType, entry *T) {
	switch forward {
	case proto.ForwardType_FORWARD_TYPE_TO_ALL:
		i.entryListForwardAll = append(i.entryListForwardAll, entry)
	case proto.ForwardType_FORWARD_TYPE_TO_ALL_EXCEPT_CUR:
		fallthrough
	case proto.ForwardType_FORWARD_TYPE_TO_ALL_EXIST_EXCEPT_CUR:
		i.entryListForwardAllExceptCur = append(i.entryListForwardAllExceptCur, entry)
	case proto.ForwardType_FORWARD_TYPE_TO_HOST:
		i.entryListForwardHost = append(i.entryListForwardHost, entry)
	default:
		if forward != proto.ForwardType_FORWARD_TYPE_ONLY_SERVER {
			logger.LOG.Error("forward: %v, entry: %v", forward, entry)
		}
	}
}

func (i *InvokeHandler[T]) AllLen() int {
	return len(i.entryListForwardAll)
}

func (i *InvokeHandler[T]) AllExceptCurLen() int {
	return len(i.entryListForwardAllExceptCur)
}

func (i *InvokeHandler[T]) HostLen() int {
	return len(i.entryListForwardHost)
}
