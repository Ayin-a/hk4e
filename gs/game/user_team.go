package game

import (
	"hk4e/common/constant"
	gdc "hk4e/gs/config"
	"hk4e/gs/model"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) ChangeAvatarReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user change avatar, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChangeAvatarReq)
	targetAvatarGuid := req.Guid
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	targetAvatarId := player.GetAvatarIdByGuid(targetAvatarGuid)
	oldAvatarId := world.GetPlayerActiveAvatarId(player)
	if targetAvatarId == oldAvatarId {
		logger.Error("can not change to the same avatar, uid: %v, oldAvatarId: %v, targetAvatarId: %v", player.PlayerID, oldAvatarId, targetAvatarId)
		return
	}
	newAvatarIndex := world.GetPlayerAvatarIndexByAvatarId(player, targetAvatarId)
	if newAvatarIndex == -1 {
		logger.Error("can not find the target avatar in team, uid: %v, targetAvatarId: %v", player.PlayerID, targetAvatarId)
		return
	}
	if !world.multiplayer {
		player.TeamConfig.CurrAvatarIndex = uint8(newAvatarIndex)
	}
	world.SetPlayerAvatarIndex(player, newAvatarIndex)
	oldAvatarEntityId := world.GetPlayerWorldAvatarEntityId(player, oldAvatarId)
	oldAvatarEntity := scene.GetEntity(oldAvatarEntityId)
	if oldAvatarEntity == nil {
		logger.Error("can not find old avatar entity, entity id: %v", oldAvatarEntityId)
		return
	}
	oldAvatarEntity.moveState = uint16(proto.MotionState_MOTION_STATE_STANDBY)

	sceneEntityDisappearNotify := &proto.SceneEntityDisappearNotify{
		DisappearType: proto.VisionType_VISION_TYPE_REPLACE,
		EntityList:    []uint32{oldAvatarEntity.id},
	}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(cmd.SceneEntityDisappearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityDisappearNotify)
	}

	newAvatarId := world.GetPlayerActiveAvatarId(player)
	newAvatarEntity := g.PacketSceneEntityInfoAvatar(scene, player, newAvatarId)
	sceneEntityAppearNotify := &proto.SceneEntityAppearNotify{
		AppearType: proto.VisionType_VISION_TYPE_REPLACE,
		Param:      oldAvatarEntity.id,
		EntityList: []*proto.SceneEntityInfo{newAvatarEntity},
	}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(cmd.SceneEntityAppearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityAppearNotify)
	}

	changeAvatarRsp := &proto.ChangeAvatarRsp{
		CurGuid: targetAvatarGuid,
	}
	g.SendMsg(cmd.ChangeAvatarRsp, player.PlayerID, player.ClientSeq, changeAvatarRsp)
}

func (g *GameManager) SetUpAvatarTeamReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user change team avatar, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetUpAvatarTeamReq)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world.multiplayer {
		g.CommonRetError(cmd.SetUpAvatarTeamRsp, player, &proto.SetUpAvatarTeamRsp{})
		return
	}
	teamId := req.TeamId
	if teamId <= 0 || teamId >= 5 {
		g.CommonRetError(cmd.SetUpAvatarTeamRsp, player, &proto.SetUpAvatarTeamRsp{})
		return
	}
	avatarGuidList := req.AvatarTeamGuidList
	selfTeam := teamId == uint32(player.TeamConfig.GetActiveTeamId())
	if (selfTeam && len(avatarGuidList) == 0) || len(avatarGuidList) > 4 {
		g.CommonRetError(cmd.SetUpAvatarTeamRsp, player, &proto.SetUpAvatarTeamRsp{})
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
	player.TeamConfig.GetTeamByIndex(uint8(teamId - 1)).SetAvatarIdList(avatarIdList)

	avatarTeamUpdateNotify := &proto.AvatarTeamUpdateNotify{
		AvatarTeamMap: make(map[uint32]*proto.AvatarTeam),
	}
	for teamIndex, team := range player.TeamConfig.TeamList {
		avatarTeam := &proto.AvatarTeam{
			TeamName:       team.Name,
			AvatarGuidList: make([]uint64, 0),
		}
		for _, avatarId := range team.GetAvatarIdList() {
			avatarTeam.AvatarGuidList = append(avatarTeam.AvatarGuidList, player.AvatarMap[avatarId].Guid)
		}
		avatarTeamUpdateNotify.AvatarTeamMap[uint32(teamIndex)+1] = avatarTeam
	}
	g.SendMsg(cmd.AvatarTeamUpdateNotify, player.PlayerID, player.ClientSeq, avatarTeamUpdateNotify)

	if selfTeam {
		// player.TeamConfig.UpdateTeam()
		world.SetPlayerLocalTeam(player, avatarIdList)
		world.UpdateMultiplayerTeam()
		world.InitPlayerWorldAvatar(player)

		currAvatarGuid := req.CurAvatarGuid
		currAvatarId := player.GetAvatarIdByGuid(currAvatarGuid)
		currAvatarIndex := world.GetPlayerAvatarIndexByAvatarId(player, currAvatarId)
		player.TeamConfig.CurrAvatarIndex = uint8(currAvatarIndex)
		world.SetPlayerAvatarIndex(player, currAvatarIndex)

		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
		g.SendMsg(cmd.SceneTeamUpdateNotify, player.PlayerID, player.ClientSeq, sceneTeamUpdateNotify)
	}

	setUpAvatarTeamRsp := &proto.SetUpAvatarTeamRsp{
		TeamId:             req.TeamId,
		CurAvatarGuid:      req.CurAvatarGuid,
		AvatarTeamGuidList: req.AvatarTeamGuidList,
	}
	g.SendMsg(cmd.SetUpAvatarTeamRsp, player.PlayerID, player.ClientSeq, setUpAvatarTeamRsp)
}

func (g *GameManager) ChooseCurAvatarTeamReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user switch team, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChooseCurAvatarTeamReq)
	teamId := req.TeamId
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world.multiplayer {
		g.CommonRetError(cmd.ChooseCurAvatarTeamRsp, player, &proto.ChooseCurAvatarTeamRsp{})
		return
	}
	team := player.TeamConfig.GetTeamByIndex(uint8(teamId) - 1)
	if team == nil || len(team.GetAvatarIdList()) == 0 {
		return
	}
	player.TeamConfig.CurrTeamIndex = uint8(teamId) - 1
	player.TeamConfig.CurrAvatarIndex = 0
	// player.TeamConfig.UpdateTeam()
	world.SetPlayerAvatarIndex(player, 0)
	world.SetPlayerLocalTeam(player, team.GetAvatarIdList())
	world.UpdateMultiplayerTeam()
	world.InitPlayerWorldAvatar(player)

	sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
	g.SendMsg(cmd.SceneTeamUpdateNotify, player.PlayerID, player.ClientSeq, sceneTeamUpdateNotify)

	chooseCurAvatarTeamRsp := &proto.ChooseCurAvatarTeamRsp{
		CurTeamId: teamId,
	}
	g.SendMsg(cmd.ChooseCurAvatarTeamRsp, player.PlayerID, player.ClientSeq, chooseCurAvatarTeamRsp)
}

func (g *GameManager) ChangeMpTeamAvatarReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user change mp team avatar, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChangeMpTeamAvatarReq)
	avatarGuidList := req.AvatarGuidList
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if !world.multiplayer || len(avatarGuidList) == 0 || len(avatarGuidList) > 4 {
		g.CommonRetError(cmd.ChangeMpTeamAvatarRsp, player, &proto.ChangeMpTeamAvatarRsp{})
		return
	}
	avatarIdList := make([]uint32, 0)
	for _, avatarGuid := range avatarGuidList {
		avatarId := player.GetAvatarIdByGuid(avatarGuid)
		avatarIdList = append(avatarIdList, avatarId)
	}
	world.SetPlayerLocalTeam(player, avatarIdList)
	world.UpdateMultiplayerTeam()
	world.InitPlayerWorldAvatar(player)

	currAvatarGuid := req.CurAvatarGuid
	currAvatarId := player.GetAvatarIdByGuid(currAvatarGuid)
	newAvatarIndex := world.GetPlayerAvatarIndexByAvatarId(player, currAvatarId)
	world.SetPlayerAvatarIndex(player, newAvatarIndex)

	for _, worldPlayer := range world.playerMap {
		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
		g.SendMsg(cmd.SceneTeamUpdateNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneTeamUpdateNotify)
	}

	changeMpTeamAvatarRsp := &proto.ChangeMpTeamAvatarRsp{
		CurAvatarGuid:  req.CurAvatarGuid,
		AvatarGuidList: req.AvatarGuidList,
	}
	g.SendMsg(cmd.ChangeMpTeamAvatarRsp, player.PlayerID, player.ClientSeq, changeMpTeamAvatarRsp)
}

func (g *GameManager) PacketSceneTeamUpdateNotify(world *World) *proto.SceneTeamUpdateNotify {
	sceneTeamUpdateNotify := &proto.SceneTeamUpdateNotify{
		IsInMp: world.multiplayer,
	}
	empty := new(proto.AbilitySyncStateInfo)
	for _, worldAvatar := range world.GetWorldAvatarList() {
		worldPlayer := USER_MANAGER.GetOnlineUser(worldAvatar.uid)
		if worldPlayer == nil {
			logger.Error("player is nil, uid: %v", worldAvatar.uid)
			continue
		}
		worldPlayerScene := world.GetSceneById(worldPlayer.SceneId)
		worldPlayerAvatar := worldPlayer.AvatarMap[worldAvatar.avatarId]
		equipIdList := make([]uint32, 0)
		weapon := worldPlayerAvatar.EquipWeapon
		equipIdList = append(equipIdList, weapon.ItemId)
		for _, reliquary := range worldPlayerAvatar.EquipReliquaryList {
			equipIdList = append(equipIdList, reliquary.ItemId)
		}
		sceneTeamAvatar := &proto.SceneTeamAvatar{
			PlayerUid:         worldPlayer.PlayerID,
			AvatarGuid:        worldPlayerAvatar.Guid,
			SceneId:           worldPlayer.SceneId,
			EntityId:          world.GetPlayerWorldAvatarEntityId(worldPlayer, worldAvatar.avatarId),
			SceneEntityInfo:   g.PacketSceneEntityInfoAvatar(worldPlayerScene, worldPlayer, worldAvatar.avatarId),
			WeaponGuid:        worldPlayerAvatar.EquipWeapon.Guid,
			WeaponEntityId:    world.GetPlayerWorldAvatarWeaponEntityId(worldPlayer, worldAvatar.avatarId),
			IsPlayerCurAvatar: world.GetPlayerActiveAvatarId(worldPlayer) == worldAvatar.avatarId,
			IsOnScene:         world.GetPlayerActiveAvatarId(worldPlayer) == worldAvatar.avatarId,
			AvatarAbilityInfo: &proto.AbilitySyncStateInfo{
				IsInited:           len(worldAvatar.abilityList) != 0,
				DynamicValueMap:    nil,
				AppliedAbilities:   worldAvatar.abilityList,
				AppliedModifiers:   worldAvatar.modifierList,
				MixinRecoverInfos:  nil,
				SgvDynamicValueMap: nil,
			},
			WeaponAbilityInfo:   empty,
			AbilityControlBlock: new(proto.AbilityControlBlock),
		}
		if world.multiplayer {
			sceneTeamAvatar.AvatarInfo = g.PacketAvatarInfo(worldPlayerAvatar)
			sceneTeamAvatar.SceneAvatarInfo = g.PacketSceneAvatarInfo(worldPlayerScene, worldPlayer, worldAvatar.avatarId)
		}
		// add AbilityControlBlock
		avatarDataConfig := gdc.CONF.AvatarDataMap[int32(worldAvatar.avatarId)]
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
		// // add team resonances
		// for id := range worldPlayer.TeamConfig.TeamResonancesConfig {
		//	embryoId++
		//	emb := &proto.AbilityEmbryo{
		//		AbilityId:               uint32(embryoId),
		//		AbilityNameHash:         uint32(id),
		//		AbilityOverrideNameHash: uint32(constant.GameConstantConst.DEFAULT_ABILITY_NAME),
		//	}
		//	acb.AbilityEmbryoList = append(acb.AbilityEmbryoList, emb)
		// }
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
