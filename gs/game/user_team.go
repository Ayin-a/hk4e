package game

import (
	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) ChangeAvatarReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change avatar, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChangeAvatarReq)
	targetAvatarGuid := req.Guid

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)

	oldAvatarId := player.TeamConfig.GetActiveAvatarId()
	oldAvatar := player.AvatarMap[oldAvatarId]
	if oldAvatar.Guid == targetAvatarGuid {
		logger.LOG.Error("can not change to the same avatar, uid: %v, oldAvatarId: %v, oldAvatarGuid: %v", player.PlayerID, oldAvatarId, oldAvatar.Guid)
		return
	}
	activeTeam := player.TeamConfig.GetActiveTeam()
	index := -1
	for avatarIndex, avatarId := range activeTeam.AvatarIdList {
		if avatarId == 0 {
			break
		}
		if targetAvatarGuid == player.AvatarMap[avatarId].Guid {
			index = avatarIndex
		}
	}
	if index == -1 {
		logger.LOG.Error("can not find the target avatar in team, uid: %v, target avatar guid: %v", player.PlayerID, targetAvatarGuid)
		return
	}
	player.TeamConfig.CurrAvatarIndex = uint8(index)

	entity := scene.GetEntity(playerTeamEntity.avatarEntityMap[oldAvatarId])
	if entity == nil {
		return
	}
	entity.moveState = uint16(proto.MotionState_MOTION_STATE_STANDBY)

	sceneEntityDisappearNotify := &proto.SceneEntityDisappearNotify{
		DisappearType: proto.VisionType_VISION_TYPE_REPLACE,
		EntityList:    []uint32{playerTeamEntity.avatarEntityMap[oldAvatarId]},
	}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(cmd.SceneEntityDisappearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityDisappearNotify)
	}

	sceneEntityAppearNotify := &proto.SceneEntityAppearNotify{
		AppearType: proto.VisionType_VISION_TYPE_REPLACE,
		Param:      playerTeamEntity.avatarEntityMap[oldAvatarId],
		EntityList: []*proto.SceneEntityInfo{g.PacketSceneEntityInfoAvatar(scene, player, player.TeamConfig.GetActiveAvatarId())},
	}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(cmd.SceneEntityAppearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityAppearNotify)
	}

	changeAvatarRsp := &proto.ChangeAvatarRsp{
		Retcode: int32(proto.Retcode_RETCODE_RET_SUCC),
		CurGuid: targetAvatarGuid,
	}
	g.SendMsg(cmd.ChangeAvatarRsp, player.PlayerID, player.ClientSeq, changeAvatarRsp)
}

func (g *GameManager) SetUpAvatarTeamReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change team, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetUpAvatarTeamReq)

	teamId := req.TeamId
	if teamId <= 0 || teamId >= 5 {
		setUpAvatarTeamRsp := &proto.SetUpAvatarTeamRsp{
			Retcode: int32(proto.Retcode_RETCODE_RET_SVR_ERROR),
		}
		g.SendMsg(cmd.SetUpAvatarTeamRsp, player.PlayerID, player.ClientSeq, setUpAvatarTeamRsp)
		return
	}
	avatarGuidList := req.AvatarTeamGuidList
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	selfTeam := teamId == uint32(player.TeamConfig.GetActiveTeamId())
	if (selfTeam && len(avatarGuidList) == 0) || len(avatarGuidList) > 4 || world.multiplayer {
		setUpAvatarTeamRsp := &proto.SetUpAvatarTeamRsp{
			Retcode: int32(proto.Retcode_RETCODE_RET_SVR_ERROR),
		}
		g.SendMsg(cmd.SetUpAvatarTeamRsp, player.PlayerID, player.ClientSeq, setUpAvatarTeamRsp)
		return
	}
	avatarIdList := make([]uint32, 0)
	for _, avatarGuid := range avatarGuidList {
		for avatarId, avatar := range player.AvatarMap {
			if avatarGuid == avatar.Guid {
				avatarIdList = append(avatarIdList, avatarId)
			}
		}
	}
	player.TeamConfig.ClearTeamAvatar(uint8(teamId - 1))
	for _, avatarId := range avatarIdList {
		player.TeamConfig.AddAvatarToTeam(avatarId, uint8(teamId-1))
	}

	if world.multiplayer {
		setUpAvatarTeamRsp := &proto.SetUpAvatarTeamRsp{
			Retcode: int32(proto.Retcode_RETCODE_RET_SVR_ERROR),
		}
		g.SendMsg(cmd.SetUpAvatarTeamRsp, player.PlayerID, player.ClientSeq, setUpAvatarTeamRsp)
		return
	}

	avatarTeamUpdateNotify := &proto.AvatarTeamUpdateNotify{
		AvatarTeamMap: make(map[uint32]*proto.AvatarTeam),
	}
	for teamIndex, team := range player.TeamConfig.TeamList {
		avatarTeam := &proto.AvatarTeam{
			TeamName:       team.Name,
			AvatarGuidList: make([]uint64, 0),
		}
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			avatarTeam.AvatarGuidList = append(avatarTeam.AvatarGuidList, player.AvatarMap[avatarId].Guid)
		}
		avatarTeamUpdateNotify.AvatarTeamMap[uint32(teamIndex)+1] = avatarTeam
	}
	g.SendMsg(cmd.AvatarTeamUpdateNotify, player.PlayerID, player.ClientSeq, avatarTeamUpdateNotify)

	if selfTeam {
		player.TeamConfig.CurrAvatarIndex = 0
		player.TeamConfig.UpdateTeam()
		scene := world.GetSceneById(player.SceneId)
		scene.UpdatePlayerTeamEntity(player)

		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
		g.SendMsg(cmd.SceneTeamUpdateNotify, player.PlayerID, player.ClientSeq, sceneTeamUpdateNotify)

		setUpAvatarTeamRsp := &proto.SetUpAvatarTeamRsp{
			TeamId:             teamId,
			CurAvatarGuid:      player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid,
			AvatarTeamGuidList: make([]uint64, 0),
		}
		team := player.TeamConfig.GetTeamByIndex(uint8(teamId - 1))
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			setUpAvatarTeamRsp.AvatarTeamGuidList = append(setUpAvatarTeamRsp.AvatarTeamGuidList, player.AvatarMap[avatarId].Guid)
		}
		g.SendMsg(cmd.SetUpAvatarTeamRsp, player.PlayerID, player.ClientSeq, setUpAvatarTeamRsp)
	} else {
		setUpAvatarTeamRsp := &proto.SetUpAvatarTeamRsp{
			TeamId:             teamId,
			CurAvatarGuid:      player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid,
			AvatarTeamGuidList: make([]uint64, 0),
		}
		team := player.TeamConfig.GetTeamByIndex(uint8(teamId - 1))
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			setUpAvatarTeamRsp.AvatarTeamGuidList = append(setUpAvatarTeamRsp.AvatarTeamGuidList, player.AvatarMap[avatarId].Guid)
		}
		g.SendMsg(cmd.SetUpAvatarTeamRsp, player.PlayerID, player.ClientSeq, setUpAvatarTeamRsp)
	}
}

func (g *GameManager) ChooseCurAvatarTeamReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user switch team, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChooseCurAvatarTeamReq)
	teamId := req.TeamId
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world.multiplayer {
		return
	}
	team := player.TeamConfig.GetTeamByIndex(uint8(teamId) - 1)
	if team == nil || len(team.AvatarIdList) == 0 {
		return
	}
	player.TeamConfig.CurrTeamIndex = uint8(teamId) - 1
	player.TeamConfig.CurrAvatarIndex = 0
	player.TeamConfig.UpdateTeam()
	scene := world.GetSceneById(player.SceneId)
	scene.UpdatePlayerTeamEntity(player)

	sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
	g.SendMsg(cmd.SceneTeamUpdateNotify, player.PlayerID, player.ClientSeq, sceneTeamUpdateNotify)

	chooseCurAvatarTeamRsp := &proto.ChooseCurAvatarTeamRsp{
		CurTeamId: teamId,
	}
	g.SendMsg(cmd.ChooseCurAvatarTeamRsp, player.PlayerID, player.ClientSeq, chooseCurAvatarTeamRsp)
}

func (g *GameManager) ChangeMpTeamAvatarReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change mp team, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChangeMpTeamAvatarReq)
	currAvatarGuid := req.CurAvatarGuid
	avatarGuidList := req.AvatarGuidList

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if len(avatarGuidList) == 0 || len(avatarGuidList) > 4 || !world.multiplayer {
		changeMpTeamAvatarRsp := &proto.ChangeMpTeamAvatarRsp{
			Retcode: int32(proto.Retcode_RETCODE_RET_SVR_ERROR),
		}
		g.SendMsg(cmd.ChangeMpTeamAvatarRsp, player.PlayerID, player.ClientSeq, changeMpTeamAvatarRsp)
		return
	}

	avatarIdList := make([]uint32, 0)
	for _, avatarGuid := range avatarGuidList {
		avatarId := player.GetAvatarIdByGuid(avatarGuid)
		avatarIdList = append(avatarIdList, avatarId)
	}
	world.SetPlayerLocalTeam(player, avatarIdList)

	currAvatarId := player.GetAvatarIdByGuid(currAvatarGuid)
	localTeam := world.multiplayerTeam.localTeamMap[player.PlayerID]
	avatarIndex := 0
	for index, worldTeamAvatar := range localTeam {
		if worldTeamAvatar.avatarId == 0 {
			continue
		}
		if worldTeamAvatar.avatarId == currAvatarId {
			avatarIndex = index
		}
	}
	world.SetPlayerLocalAvatarIndex(player, avatarIndex)

	world.UpdateMultiplayerTeam()
	scene := world.GetSceneById(player.SceneId)
	scene.UpdatePlayerTeamEntity(player)

	for _, worldPlayer := range world.playerMap {
		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotifyMp(world)
		g.SendMsg(cmd.SceneTeamUpdateNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneTeamUpdateNotify)
	}

	avatarId := world.GetPlayerActiveAvatarId(player)
	avatar := player.AvatarMap[avatarId]

	changeMpTeamAvatarRsp := &proto.ChangeMpTeamAvatarRsp{
		CurAvatarGuid:  avatar.Guid,
		AvatarGuidList: req.AvatarGuidList,
	}
	g.SendMsg(cmd.ChangeMpTeamAvatarRsp, player.PlayerID, player.ClientSeq, changeMpTeamAvatarRsp)
}

func (g *GameManager) PacketSceneTeamUpdateNotify(world *World) *proto.SceneTeamUpdateNotify {
	sceneTeamUpdateNotify := &proto.SceneTeamUpdateNotify{
		IsInMp: world.multiplayer,
	}
	empty := new(proto.AbilitySyncStateInfo)
	for _, worldPlayer := range world.playerMap {
		worldPlayerScene := world.GetSceneById(worldPlayer.SceneId)
		worldPlayerTeamEntity := worldPlayerScene.GetPlayerTeamEntity(worldPlayer.PlayerID)
		team := worldPlayer.TeamConfig.GetActiveTeam()
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			worldPlayerAvatar := worldPlayer.AvatarMap[avatarId]
			equipIdList := make([]uint32, 0)
			weapon := worldPlayerAvatar.EquipWeapon
			equipIdList = append(equipIdList, weapon.ItemId)
			for _, reliquary := range worldPlayerAvatar.EquipReliquaryList {
				equipIdList = append(equipIdList, reliquary.ItemId)
			}
			sceneTeamAvatar := &proto.SceneTeamAvatar{
				PlayerUid:           worldPlayer.PlayerID,
				AvatarGuid:          worldPlayerAvatar.Guid,
				SceneId:             worldPlayer.SceneId,
				EntityId:            worldPlayerTeamEntity.avatarEntityMap[avatarId],
				SceneEntityInfo:     g.PacketSceneEntityInfoAvatar(worldPlayerScene, worldPlayer, avatarId),
				WeaponGuid:          worldPlayerAvatar.EquipWeapon.Guid,
				WeaponEntityId:      worldPlayerTeamEntity.weaponEntityMap[worldPlayerAvatar.EquipWeapon.WeaponId],
				IsPlayerCurAvatar:   worldPlayer.TeamConfig.GetActiveAvatarId() == avatarId,
				IsOnScene:           worldPlayer.TeamConfig.GetActiveAvatarId() == avatarId,
				AvatarAbilityInfo:   empty,
				WeaponAbilityInfo:   empty,
				AbilityControlBlock: new(proto.AbilityControlBlock),
			}
			if world.multiplayer {
				sceneTeamAvatar.AvatarInfo = g.PacketAvatarInfo(worldPlayerAvatar)
				sceneTeamAvatar.SceneAvatarInfo = g.PacketSceneAvatarInfo(worldPlayerScene, worldPlayer, avatarId)
			}
			// add AbilityControlBlock
			avatarDataConfig := gdc.CONF.AvatarDataMap[int32(avatarId)]
			acb := sceneTeamAvatar.AbilityControlBlock
			embryoId := 0
			// add avatar abilities
			if avatarDataConfig != nil {
				for _, abilityId := range avatarDataConfig.Abilities {
					embryoId++
					emb := &proto.AbilityEmbryo{
						AbilityId:               uint32(embryoId),
						AbilityNameHash:         uint32(abilityId),
						AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
					}
					acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
				}
			}
			// add default abilities
			for _, abilityId := range constant.GameConstantConst.DEFAULT_ABILITY_HASHES {
				embryoId++
				emb := &proto.AbilityEmbryo{
					AbilityId:               uint32(embryoId),
					AbilityNameHash:         uint32(abilityId),
					AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
				}
				acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
			}
			// add team resonances
			for id := range worldPlayer.TeamConfig.TeamResonancesConfig {
				embryoId++
				emb := &proto.AbilityEmbryo{
					AbilityId:               uint32(embryoId),
					AbilityNameHash:         uint32(id),
					AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
				}
				acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
			}
			// add skill depot abilities
			skillDepot := gdc.CONF.AvatarSkillDepotDataMap[int32(worldPlayerAvatar.SkillDepotId)]
			if skillDepot != nil && len(skillDepot.Abilities) != 0 {
				for _, id := range skillDepot.Abilities {
					embryoId++
					emb := &proto.AbilityEmbryo{
						AbilityId:               uint32(embryoId),
						AbilityNameHash:         uint32(id),
						AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
					}
					acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
				}
			}
			// add equip abilities
			for skill := range worldPlayerAvatar.ExtraAbilityEmbryos {
				embryoId++
				emb := &proto.AbilityEmbryo{
					AbilityId:               uint32(embryoId),
					AbilityNameHash:         uint32(endec.Hk4eAbilityHashCode(skill)),
					AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
				}
				acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
			}
			sceneTeamUpdateNotify.SceneTeamAvatarList = append(sceneTeamUpdateNotify.SceneTeamAvatarList, sceneTeamAvatar)
		}
	}
	return sceneTeamUpdateNotify
}

func (g *GameManager) PacketSceneTeamUpdateNotifyMp(world *World) *proto.SceneTeamUpdateNotify {
	sceneTeamUpdateNotify := &proto.SceneTeamUpdateNotify{
		IsInMp: world.multiplayer,
	}
	empty := new(proto.AbilitySyncStateInfo)
	for _, worldTeamAvatar := range world.multiplayerTeam.worldTeam {
		if worldTeamAvatar.avatarId == 0 {
			continue
		}
		worldPlayer := USER_MANAGER.GetOnlineUser(worldTeamAvatar.uid)
		worldPlayerScene := world.GetSceneById(worldPlayer.SceneId)
		worldPlayerTeamEntity := worldPlayerScene.GetPlayerTeamEntity(worldPlayer.PlayerID)
		worldPlayerAvatar := worldPlayer.AvatarMap[worldTeamAvatar.avatarId]
		equipIdList := make([]uint32, 0)
		weapon := worldPlayerAvatar.EquipWeapon
		equipIdList = append(equipIdList, weapon.ItemId)
		for _, reliquary := range worldPlayerAvatar.EquipReliquaryList {
			equipIdList = append(equipIdList, reliquary.ItemId)
		}
		sceneTeamAvatar := &proto.SceneTeamAvatar{
			PlayerUid:           worldPlayer.PlayerID,
			AvatarGuid:          worldPlayerAvatar.Guid,
			SceneId:             worldPlayer.SceneId,
			EntityId:            worldPlayerTeamEntity.avatarEntityMap[worldTeamAvatar.avatarId],
			SceneEntityInfo:     g.PacketSceneEntityInfoAvatar(worldPlayerScene, worldPlayer, worldTeamAvatar.avatarId),
			WeaponGuid:          worldPlayerAvatar.EquipWeapon.Guid,
			WeaponEntityId:      worldPlayerTeamEntity.weaponEntityMap[worldPlayerAvatar.EquipWeapon.WeaponId],
			IsPlayerCurAvatar:   world.GetPlayerActiveAvatarId(worldPlayer) == worldTeamAvatar.avatarId,
			IsOnScene:           world.GetPlayerActiveAvatarId(worldPlayer) == worldTeamAvatar.avatarId,
			AvatarAbilityInfo:   empty,
			WeaponAbilityInfo:   empty,
			AbilityControlBlock: new(proto.AbilityControlBlock),
		}
		if world.multiplayer {
			sceneTeamAvatar.AvatarInfo = g.PacketAvatarInfo(worldPlayerAvatar)
			sceneTeamAvatar.SceneAvatarInfo = g.PacketSceneAvatarInfo(worldPlayerScene, worldPlayer, worldTeamAvatar.avatarId)
		}
		// add AbilityControlBlock
		avatarDataConfig := gdc.CONF.AvatarDataMap[int32(worldTeamAvatar.avatarId)]
		acb := sceneTeamAvatar.AbilityControlBlock
		embryoId := 0
		// add avatar abilities
		if avatarDataConfig != nil {
			for _, abilityId := range avatarDataConfig.Abilities {
				embryoId++
				emb := &proto.AbilityEmbryo{
					AbilityId:               uint32(embryoId),
					AbilityNameHash:         uint32(abilityId),
					AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
				}
				acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
			}
		}
		// add default abilities
		for _, abilityId := range constant.GameConstantConst.DEFAULT_ABILITY_HASHES {
			embryoId++
			emb := &proto.AbilityEmbryo{
				AbilityId:               uint32(embryoId),
				AbilityNameHash:         uint32(abilityId),
				AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
			}
			acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
		}
		// add team resonances
		for id := range worldPlayer.TeamConfig.TeamResonancesConfig {
			embryoId++
			emb := &proto.AbilityEmbryo{
				AbilityId:               uint32(embryoId),
				AbilityNameHash:         uint32(id),
				AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
			}
			acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
		}
		// add skill depot abilities
		skillDepot := gdc.CONF.AvatarSkillDepotDataMap[int32(worldPlayerAvatar.SkillDepotId)]
		if skillDepot != nil && len(skillDepot.Abilities) != 0 {
			for _, id := range skillDepot.Abilities {
				embryoId++
				emb := &proto.AbilityEmbryo{
					AbilityId:               uint32(embryoId),
					AbilityNameHash:         uint32(id),
					AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
				}
				acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
			}
		}
		// add equip abilities
		for skill := range worldPlayerAvatar.ExtraAbilityEmbryos {
			embryoId++
			emb := &proto.AbilityEmbryo{
				AbilityId:               uint32(embryoId),
				AbilityNameHash:         uint32(endec.Hk4eAbilityHashCode(skill)),
				AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
			}
			acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
		}
		sceneTeamUpdateNotify.SceneTeamAvatarList = append(sceneTeamUpdateNotify.SceneTeamAvatarList, sceneTeamAvatar)
	}
	return sceneTeamUpdateNotify
}
