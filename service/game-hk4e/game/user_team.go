package game

import (
	"flswld.com/common/utils/endec"
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	gdc "game-hk4e/config"
	"game-hk4e/constant"
	"game-hk4e/model"
	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) ChangeAvatarReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user change avatar, user id: %v", userId)
	req := payloadMsg.(*proto.ChangeAvatarReq)
	targetAvatarGuid := req.Guid

	world := g.worldManager.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)

	oldAvatarId := player.TeamConfig.GetActiveAvatarId()
	oldAvatar := player.AvatarMap[oldAvatarId]
	if oldAvatar.Guid == targetAvatarGuid {
		logger.LOG.Error("can not change to the same avatar, user id: %v, oldAvatarId: %v, oldAvatarGuid: %v", userId, oldAvatarId, oldAvatar.Guid)
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
		logger.LOG.Error("can not find the target avatar in team, user id: %v, target avatar guid: %v", userId, targetAvatarGuid)
		return
	}
	player.TeamConfig.CurrAvatarIndex = uint8(index)

	entity := scene.GetEntity(playerTeamEntity.avatarEntityMap[oldAvatarId])
	if entity == nil {
		return
	}
	entity.moveState = uint16(proto.MotionState_MOTION_STATE_STANDBY)

	// PacketSceneEntityDisappearNotify
	sceneEntityDisappearNotify := new(proto.SceneEntityDisappearNotify)
	sceneEntityDisappearNotify.DisappearType = proto.VisionType_VISION_TYPE_REPLACE
	sceneEntityDisappearNotify.EntityList = []uint32{playerTeamEntity.avatarEntityMap[oldAvatarId]}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(proto.ApiSceneEntityDisappearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityDisappearNotify)
	}

	// PacketSceneEntityAppearNotify
	sceneEntityAppearNotify := new(proto.SceneEntityAppearNotify)
	sceneEntityAppearNotify.AppearType = proto.VisionType_VISION_TYPE_REPLACE
	sceneEntityAppearNotify.Param = playerTeamEntity.avatarEntityMap[oldAvatarId]
	sceneEntityAppearNotify.EntityList = []*proto.SceneEntityInfo{g.PacketSceneEntityInfoAvatar(scene, player, player.TeamConfig.GetActiveAvatarId())}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(proto.ApiSceneEntityAppearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityAppearNotify)
	}

	// PacketChangeAvatarRsp
	changeAvatarRsp := new(proto.ChangeAvatarRsp)
	changeAvatarRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SUCC)
	changeAvatarRsp.CurGuid = targetAvatarGuid
	g.SendMsg(proto.ApiChangeAvatarRsp, userId, player.ClientSeq, changeAvatarRsp)
}

func (g *GameManager) SetUpAvatarTeamReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user change team, user id: %v", userId)
	req := payloadMsg.(*proto.SetUpAvatarTeamReq)

	teamId := req.TeamId
	if teamId <= 0 || teamId >= 5 {
		// PacketSetUpAvatarTeamRsp
		setUpAvatarTeamRsp := new(proto.SetUpAvatarTeamRsp)
		setUpAvatarTeamRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SVR_ERROR)
		g.SendMsg(proto.ApiSetUpAvatarTeamRsp, userId, player.ClientSeq, setUpAvatarTeamRsp)
		return
	}
	avatarGuidList := req.AvatarTeamGuidList
	world := g.worldManager.GetWorldByID(player.WorldId)
	multiTeam := teamId == 4
	selfTeam := teamId == uint32(player.TeamConfig.GetActiveTeamId())
	if (multiTeam && len(avatarGuidList) == 0) || (selfTeam && len(avatarGuidList) == 0) || len(avatarGuidList) > 4 || world.multiplayer {
		// PacketSetUpAvatarTeamRsp
		setUpAvatarTeamRsp := new(proto.SetUpAvatarTeamRsp)
		setUpAvatarTeamRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SVR_ERROR)
		g.SendMsg(proto.ApiSetUpAvatarTeamRsp, userId, player.ClientSeq, setUpAvatarTeamRsp)
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
		// PacketSetUpAvatarTeamRsp
		setUpAvatarTeamRsp := new(proto.SetUpAvatarTeamRsp)
		setUpAvatarTeamRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SVR_ERROR)
		g.SendMsg(proto.ApiSetUpAvatarTeamRsp, userId, player.ClientSeq, setUpAvatarTeamRsp)
		return
	}

	// PacketAvatarTeamUpdateNotify
	avatarTeamUpdateNotify := new(proto.AvatarTeamUpdateNotify)
	avatarTeamUpdateNotify.AvatarTeamMap = make(map[uint32]*proto.AvatarTeam)
	for teamIndex, team := range player.TeamConfig.TeamList {
		avatarTeam := new(proto.AvatarTeam)
		avatarTeam.TeamName = team.Name
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			avatarTeam.AvatarGuidList = append(avatarTeam.AvatarGuidList, player.AvatarMap[avatarId].Guid)
		}
		avatarTeamUpdateNotify.AvatarTeamMap[uint32(teamIndex)+1] = avatarTeam
	}
	g.SendMsg(proto.ApiAvatarTeamUpdateNotify, userId, player.ClientSeq, avatarTeamUpdateNotify)

	if selfTeam {
		player.TeamConfig.CurrAvatarIndex = 0
		player.TeamConfig.UpdateTeam()
		scene := world.GetSceneById(player.SceneId)
		scene.UpdatePlayerTeamEntity(player)

		// PacketSceneTeamUpdateNotify
		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
		g.SendMsg(proto.ApiSceneTeamUpdateNotify, userId, player.ClientSeq, sceneTeamUpdateNotify)

		// PacketSetUpAvatarTeamRsp
		setUpAvatarTeamRsp := new(proto.SetUpAvatarTeamRsp)
		setUpAvatarTeamRsp.TeamId = teamId
		setUpAvatarTeamRsp.CurAvatarGuid = player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid
		team := player.TeamConfig.GetTeamByIndex(uint8(teamId - 1))
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			setUpAvatarTeamRsp.AvatarTeamGuidList = append(setUpAvatarTeamRsp.AvatarTeamGuidList, player.AvatarMap[avatarId].Guid)
		}
		g.SendMsg(proto.ApiSetUpAvatarTeamRsp, userId, player.ClientSeq, setUpAvatarTeamRsp)
	} else {
		// PacketSetUpAvatarTeamRsp
		setUpAvatarTeamRsp := new(proto.SetUpAvatarTeamRsp)
		setUpAvatarTeamRsp.TeamId = teamId
		setUpAvatarTeamRsp.CurAvatarGuid = player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid
		team := player.TeamConfig.GetTeamByIndex(uint8(teamId - 1))
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			setUpAvatarTeamRsp.AvatarTeamGuidList = append(setUpAvatarTeamRsp.AvatarTeamGuidList, player.AvatarMap[avatarId].Guid)
		}
		g.SendMsg(proto.ApiSetUpAvatarTeamRsp, userId, player.ClientSeq, setUpAvatarTeamRsp)
	}
}

func (g *GameManager) ChooseCurAvatarTeamReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user switch team, user id: %v", userId)
	req := payloadMsg.(*proto.ChooseCurAvatarTeamReq)
	teamId := req.TeamId
	world := g.worldManager.GetWorldByID(player.WorldId)
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

	// PacketSceneTeamUpdateNotify
	sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
	g.SendMsg(proto.ApiSceneTeamUpdateNotify, userId, player.ClientSeq, sceneTeamUpdateNotify)

	// PacketChooseCurAvatarTeamRsp
	chooseCurAvatarTeamRsp := new(proto.ChooseCurAvatarTeamRsp)
	chooseCurAvatarTeamRsp.CurTeamId = teamId
	g.SendMsg(proto.ApiChooseCurAvatarTeamRsp, userId, player.ClientSeq, chooseCurAvatarTeamRsp)
}

func (g *GameManager) ChangeMpTeamAvatarReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user change mp team, user id: %v", userId)
	req := payloadMsg.(*proto.ChangeMpTeamAvatarReq)
	avatarGuidList := req.AvatarGuidList

	world := g.worldManager.GetWorldByID(player.WorldId)
	if len(avatarGuidList) == 0 || len(avatarGuidList) > 4 || !world.multiplayer {
		// PacketChangeMpTeamAvatarRsp
		changeMpTeamAvatarRsp := new(proto.ChangeMpTeamAvatarRsp)
		changeMpTeamAvatarRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SVR_ERROR)
		g.SendMsg(proto.ApiChangeMpTeamAvatarRsp, userId, player.ClientSeq, changeMpTeamAvatarRsp)
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
	player.TeamConfig.ClearTeamAvatar(3)
	for _, avatarId := range avatarIdList {
		player.TeamConfig.AddAvatarToTeam(avatarId, 3)
	}
	player.TeamConfig.CurrAvatarIndex = 0
	player.TeamConfig.UpdateTeam()
	scene := world.GetSceneById(player.SceneId)
	scene.UpdatePlayerTeamEntity(player)

	for _, worldPlayer := range world.playerMap {
		// PacketSceneTeamUpdateNotify
		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
		g.SendMsg(proto.ApiSceneTeamUpdateNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneTeamUpdateNotify)
	}

	// PacketChangeMpTeamAvatarRsp
	changeMpTeamAvatarRsp := new(proto.ChangeMpTeamAvatarRsp)
	changeMpTeamAvatarRsp.CurAvatarGuid = player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid
	team := player.TeamConfig.GetTeamByIndex(3)
	for _, avatarId := range team.AvatarIdList {
		if avatarId == 0 {
			break
		}
		changeMpTeamAvatarRsp.AvatarGuidList = append(changeMpTeamAvatarRsp.AvatarGuidList, player.AvatarMap[avatarId].Guid)
	}
	g.SendMsg(proto.ApiChangeMpTeamAvatarRsp, userId, player.ClientSeq, changeMpTeamAvatarRsp)
}

func (g *GameManager) PacketSceneTeamUpdateNotify(world *World) *proto.SceneTeamUpdateNotify {
	sceneTeamUpdateNotify := new(proto.SceneTeamUpdateNotify)
	sceneTeamUpdateNotify.IsInMp = world.multiplayer
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
			for _, abilityId := range avatarDataConfig.Abilities {
				embryoId++
				emb := &proto.AbilityEmbryo{
					AbilityId:               uint32(embryoId),
					AbilityNameHash:         uint32(abilityId),
					AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
				}
				acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
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
