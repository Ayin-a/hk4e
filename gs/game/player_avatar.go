package game

import (
	"strconv"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// AvatarUpgradeReq 角色升级请求
func (g *Game) AvatarUpgradeReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AvatarUpgradeReq)
	// 是否拥有角色
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}
	// 获取经验书物品配置表
	itemDataConfig := gdconf.GetItemDataById(int32(req.ItemId))
	if itemDataConfig == nil {
		logger.Error("item data config error, itemId: %v", constant.ITEM_ID_SCOIN)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 经验书将给予的经验数
	itemParam, err := strconv.Atoi(itemDataConfig.Use1Param1)
	if err != nil {
		logger.Error("parse item param error: %v", err)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{})
		return
	}
	// 角色获得的经验
	expCount := uint32(itemParam) * req.Count
	// 摩拉数量是否足够
	if g.GetPlayerItemCount(player.PlayerID, constant.ITEM_ID_SCOIN) < expCount/5 {
		logger.Error("item count not enough, itemId: %v", constant.ITEM_ID_SCOIN)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{}, proto.Retcode_RET_SCOIN_NOT_ENOUGH)
		return
	}
	// 获取角色配置表
	avatarDataConfig := gdconf.GetAvatarDataById(int32(avatar.AvatarId))
	if avatarDataConfig == nil {
		logger.Error("avatar config error, avatarId: %v", avatar.AvatarId)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{})
		return
	}
	// 获取角色突破配置表
	avatarPromoteConfig := gdconf.GetAvatarPromoteDataByIdAndLevel(avatarDataConfig.PromoteId, int32(avatar.Promote))
	if avatarPromoteConfig == nil {
		logger.Error("avatar promote config error, promoteLevel: %v", avatar.Promote)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{})
		return
	}
	// 角色等级是否达到限制
	if avatar.Level >= uint8(avatarPromoteConfig.LevelLimit) {
		logger.Error("avatar level ge level limit, level: %v", avatar.Level)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{}, proto.Retcode_RET_AVATAR_BREAK_LEVEL_LESS_THAN)
		return
	}
	// 消耗升级材料以及摩拉
	ok = g.CostUserItem(player.PlayerID, []*ChangeItem{
		{ItemId: req.ItemId, ChangeCount: req.Count},
		{ItemId: constant.ITEM_ID_SCOIN, ChangeCount: expCount / 5},
	})
	if !ok {
		logger.Error("item count not enough, uid: %v", player.PlayerID)
		g.SendError(cmd.AvatarUpgradeRsp, player, &proto.AvatarUpgradeRsp{}, proto.Retcode_RET_ITEM_COUNT_NOT_ENOUGH)
		return
	}
	// 角色升级前的信息
	oldLevel := avatar.Level
	oldFightPropMap := make(map[uint32]float32, len(avatar.FightPropMap))
	for propType, propValue := range avatar.FightPropMap {
		oldFightPropMap[propType] = propValue
	}

	// 角色添加经验
	g.UpgradePlayerAvatar(player, avatar, expCount)

	avatarUpgradeRsp := &proto.AvatarUpgradeRsp{
		CurLevel:        uint32(avatar.Level),
		OldLevel:        uint32(oldLevel),
		OldFightPropMap: oldFightPropMap,
		CurFightPropMap: avatar.FightPropMap,
		AvatarGuid:      req.AvatarGuid,
	}
	g.SendMsg(cmd.AvatarUpgradeRsp, player.PlayerID, player.ClientSeq, avatarUpgradeRsp)
}

// AvatarPromoteReq 角色突破请求
func (g *Game) AvatarPromoteReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AvatarPromoteReq)
	// 是否拥有角色
	avatar, ok := player.GameObjectGuidMap[req.Guid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.Guid)
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}
	// 获取角色配置表
	avatarDataConfig := gdconf.GetAvatarDataById(int32(avatar.AvatarId))
	if avatarDataConfig == nil {
		logger.Error("avatar config error, avatarId: %v", avatar.AvatarId)
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{})
		return
	}
	// 获取角色突破配置表
	avatarPromoteConfig := gdconf.GetAvatarPromoteDataByIdAndLevel(avatarDataConfig.PromoteId, int32(avatar.Promote))
	if avatarPromoteConfig == nil {
		logger.Error("avatar promote config error, promoteLevel: %v", avatar.Promote)
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{})
		return
	}
	// 角色等级是否达到限制
	if avatar.Level < uint8(avatarPromoteConfig.LevelLimit) {
		logger.Error("avatar level le level limit, level: %v", avatar.Level)
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_AVATAR_LEVEL_LESS_THAN)
		return
	}
	// 获取角色突破下一级的配置表
	avatarPromoteConfig = gdconf.GetAvatarPromoteDataByIdAndLevel(avatarDataConfig.PromoteId, int32(avatar.Promote+1))
	if avatarPromoteConfig == nil {
		logger.Error("avatar promote config error, next promoteLevel: %v", avatar.Promote+1)
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_AVATAR_ON_MAX_BREAK_LEVEL)
		return
	}
	// 将被消耗的物品列表
	costItemList := make([]*ChangeItem, 0, len(avatarPromoteConfig.CostItemMap)+1)
	// 突破材料是否足够并添加到消耗物品列表
	for itemId, count := range avatarPromoteConfig.CostItemMap {
		costItemList = append(costItemList, &ChangeItem{
			ItemId:      itemId,
			ChangeCount: count,
		})
	}
	// 消耗列表添加摩拉的消耗
	costItemList = append(costItemList, &ChangeItem{
		ItemId:      constant.ITEM_ID_SCOIN,
		ChangeCount: uint32(avatarPromoteConfig.CostCoin),
	})
	// 突破材料以及摩拉是否足够
	for _, item := range costItemList {
		if g.GetPlayerItemCount(player.PlayerID, item.ItemId) < item.ChangeCount {
			logger.Error("item count not enough, itemId: %v", item.ItemId)
			// 摩拉的错误提示与材料不同
			if item.ItemId == constant.ITEM_ID_SCOIN {
				g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_SCOIN_NOT_ENOUGH)
			}
			g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_ITEM_COUNT_NOT_ENOUGH)
			return
		}
	}
	// 冒险等级是否符合要求
	if player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL] < uint32(avatarPromoteConfig.MinPlayerLevel) {
		logger.Error("player level not enough, level: %v", player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL])
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_PLAYER_LEVEL_LESS_THAN)
		return
	}
	// 消耗突破材料和摩拉
	ok = g.CostUserItem(player.PlayerID, costItemList)
	if !ok {
		logger.Error("item count not enough, uid: %v", player.PlayerID)
		g.SendError(cmd.AvatarPromoteRsp, player, &proto.AvatarPromoteRsp{}, proto.Retcode_RET_ITEM_COUNT_NOT_ENOUGH)
		return
	}

	// 角色突破等级+1
	avatar.Promote++
	// 角色更新面板
	g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)
	// 角色属性表更新通知
	g.SendMsg(cmd.AvatarPropNotify, player.PlayerID, player.ClientSeq, g.PacketAvatarPropNotify(avatar))

	avatarPromoteRsp := &proto.AvatarPromoteRsp{
		Guid: req.Guid,
	}
	g.SendMsg(cmd.AvatarPromoteRsp, player.PlayerID, player.ClientSeq, avatarPromoteRsp)
}

// AvatarPromoteGetRewardReq 角色突破获取奖励请求
func (g *Game) AvatarPromoteGetRewardReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AvatarPromoteGetRewardReq)
	// 是否拥有角色
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.AvatarPromoteGetRewardRsp, player, &proto.AvatarPromoteGetRewardRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}
	// 获取角色配置表
	avatarDataConfig := gdconf.GetAvatarDataById(int32(avatar.AvatarId))
	if avatarDataConfig == nil {
		logger.Error("avatar config error, avatarId: %v", avatar.AvatarId)
		g.SendError(cmd.AvatarPromoteGetRewardRsp, player, &proto.AvatarPromoteGetRewardRsp{})
		return
	}
	// 角色是否获取过该突破等级的奖励
	if avatar.PromoteRewardMap[req.PromoteLevel] {
		logger.Error("avatar config error, avatarId: %v", avatar.AvatarId)
		g.SendError(cmd.AvatarPromoteGetRewardRsp, player, &proto.AvatarPromoteGetRewardRsp{}, proto.Retcode_RET_REWARD_HAS_TAKEN)
		return
	}
	// 获取奖励配置表
	rewardConfig := gdconf.GetRewardDataById(int32(avatarDataConfig.PromoteRewardMap[req.PromoteLevel]))
	if rewardConfig == nil {
		logger.Error("reward config error, rewardId: %v", avatarDataConfig.PromoteRewardMap[req.PromoteLevel])
		g.SendError(cmd.AvatarPromoteGetRewardRsp, player, &proto.AvatarPromoteGetRewardRsp{})
		return
	}
	// 设置该奖励为已被获取状态
	avatar.PromoteRewardMap[req.PromoteLevel] = true
	// 给予突破奖励
	rewardItemList := make([]*ChangeItem, 0, len(rewardConfig.RewardItemMap))
	for itemId, count := range rewardConfig.RewardItemMap {
		rewardItemList = append(rewardItemList, &ChangeItem{
			ItemId:      itemId,
			ChangeCount: count,
		})
	}
	g.AddUserItem(player.PlayerID, rewardItemList, false, 0)

	avatarPromoteGetRewardRsp := &proto.AvatarPromoteGetRewardRsp{
		RewardId:     uint32(rewardConfig.RewardID),
		AvatarGuid:   req.AvatarGuid,
		PromoteLevel: req.PromoteLevel,
	}
	g.SendMsg(cmd.AvatarPromoteGetRewardRsp, player.PlayerID, player.ClientSeq, avatarPromoteGetRewardRsp)
}

// AvatarWearFlycloakReq 角色装备风之翼请求
func (g *Game) AvatarWearFlycloakReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AvatarWearFlycloakReq)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", player.SceneId)
		g.SendError(cmd.AvatarWearFlycloakRsp, player, &proto.AvatarWearFlycloakRsp{})
		return
	}

	// 确保角色存在
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.AvatarWearFlycloakRsp, player, &proto.AvatarWearFlycloakRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}

	// 确保要更换的风之翼已获得
	exist := false
	for _, v := range player.FlyCloakList {
		if v == req.FlycloakId {
			exist = true
		}
	}
	if !exist {
		logger.Error("flycloak not exist, flycloakId: %v", req.FlycloakId)
		g.SendError(cmd.AvatarWearFlycloakRsp, player, &proto.AvatarWearFlycloakRsp{}, proto.Retcode_RET_NOT_HAS_FLYCLOAK)
		return
	}

	// 设置角色风之翼
	avatar.FlyCloak = req.FlycloakId

	avatarFlycloakChangeNotify := &proto.AvatarFlycloakChangeNotify{
		AvatarGuid: req.AvatarGuid,
		FlycloakId: req.FlycloakId,
	}
	for _, scenePlayer := range scene.GetAllPlayer() {
		g.SendMsg(cmd.AvatarFlycloakChangeNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, avatarFlycloakChangeNotify)
	}

	avatarWearFlycloakRsp := &proto.AvatarWearFlycloakRsp{
		AvatarGuid: req.AvatarGuid,
		FlycloakId: req.FlycloakId,
	}
	g.SendMsg(cmd.AvatarWearFlycloakRsp, player.PlayerID, player.ClientSeq, avatarWearFlycloakRsp)
}

// AvatarChangeCostumeReq 角色更换时装请求
func (g *Game) AvatarChangeCostumeReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AvatarChangeCostumeReq)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", player.SceneId)
		g.SendError(cmd.AvatarChangeCostumeRsp, player, &proto.AvatarChangeCostumeRsp{})
		return
	}

	// 确保角色存在
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.AvatarChangeCostumeRsp, player, &proto.AvatarChangeCostumeRsp{}, proto.Retcode_RET_COSTUME_AVATAR_ERROR)
		return
	}

	// 确保要更换的时装已获得
	exist := false
	for _, v := range player.CostumeList {
		if v == req.CostumeId {
			exist = true
		}
	}
	if req.CostumeId == 0 {
		exist = true
	}
	if !exist {
		logger.Error("costume not exist, costumeId: %v", req.CostumeId)
		g.SendError(cmd.AvatarChangeCostumeRsp, player, &proto.AvatarChangeCostumeRsp{}, proto.Retcode_RET_NOT_HAS_COSTUME)
		return
	}

	// 设置角色时装
	avatar.Costume = req.CostumeId

	// 角色更换时装通知
	avatarChangeCostumeNotify := new(proto.AvatarChangeCostumeNotify)
	// 要更换时装的角色实体不存在代表更换的是仓库内的角色
	if scene.GetWorld().GetPlayerWorldAvatarEntityId(player, avatar.AvatarId) == 0 {
		avatarChangeCostumeNotify.EntityInfo = &proto.SceneEntityInfo{
			Entity: &proto.SceneEntityInfo_Avatar{
				Avatar: g.PacketSceneAvatarInfo(scene, player, avatar.AvatarId),
			},
		}
	} else {
		avatarChangeCostumeNotify.EntityInfo = g.PacketSceneEntityInfoAvatar(scene, player, avatar.AvatarId)
	}
	for _, scenePlayer := range scene.GetAllPlayer() {
		g.SendMsg(cmd.AvatarChangeCostumeNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, avatarChangeCostumeNotify)
	}

	avatarChangeCostumeRsp := &proto.AvatarChangeCostumeRsp{
		AvatarGuid: req.AvatarGuid,
		CostumeId:  req.CostumeId,
	}
	g.SendMsg(cmd.AvatarChangeCostumeRsp, player.PlayerID, player.ClientSeq, avatarChangeCostumeRsp)
}

func (g *Game) PacketAvatarInfo(avatar *model.Avatar) *proto.AvatarInfo {
	pbAvatar := &proto.AvatarInfo{
		IsFocus:  false,
		AvatarId: avatar.AvatarId,
		Guid:     avatar.Guid,
		PropMap: map[uint32]*proto.PropValue{
			uint32(constant.PLAYER_PROP_LEVEL): {
				Type:  uint32(constant.PLAYER_PROP_LEVEL),
				Val:   int64(avatar.Level),
				Value: &proto.PropValue_Ival{Ival: int64(avatar.Level)},
			},
			uint32(constant.PLAYER_PROP_EXP): {
				Type:  uint32(constant.PLAYER_PROP_EXP),
				Val:   int64(avatar.Exp),
				Value: &proto.PropValue_Ival{Ival: int64(avatar.Exp)},
			},
			uint32(constant.PLAYER_PROP_BREAK_LEVEL): {
				Type:  uint32(constant.PLAYER_PROP_BREAK_LEVEL),
				Val:   int64(avatar.Promote),
				Value: &proto.PropValue_Ival{Ival: int64(avatar.Promote)},
			},
			uint32(constant.PLAYER_PROP_SATIATION_VAL): {
				Type:  uint32(constant.PLAYER_PROP_SATIATION_VAL),
				Val:   int64(avatar.Satiation),
				Value: &proto.PropValue_Ival{Ival: int64(avatar.Satiation)},
			},
			uint32(constant.PLAYER_PROP_SATIATION_PENALTY_TIME): {
				Type:  uint32(constant.PLAYER_PROP_SATIATION_PENALTY_TIME),
				Val:   int64(avatar.SatiationPenalty),
				Value: &proto.PropValue_Ival{Ival: int64(avatar.SatiationPenalty)},
			},
		},
		LifeState:     uint32(avatar.LifeState),
		EquipGuidList: object.ConvMapToList(avatar.EquipGuidMap),
		FightPropMap:  avatar.FightPropMap,
		SkillDepotId:  avatar.SkillDepotId,
		FetterInfo: &proto.AvatarFetterInfo{
			ExpLevel:                uint32(avatar.FetterLevel),
			ExpNumber:               avatar.FetterExp,
			FetterList:              nil,
			RewardedFetterLevelList: []uint32{10},
		},
		SkillLevelMap:            avatar.SkillLevelMap,
		AvatarType:               1,
		WearingFlycloakId:        avatar.FlyCloak,
		CostumeId:                avatar.Costume,
		BornTime:                 uint32(avatar.BornTime),
		PendingPromoteRewardList: make([]uint32, 0, len(avatar.PromoteRewardMap)),
	}
	for _, v := range avatar.FetterList {
		pbAvatar.FetterInfo.FetterList = append(pbAvatar.FetterInfo.FetterList, &proto.FetterData{
			FetterId:    v,
			FetterState: constant.FETTER_STATE_FINISH,
		})
	}
	// 解锁全部资料
	for _, v := range gdconf.GetFetterIdListByAvatarId(int32(avatar.AvatarId)) {
		pbAvatar.FetterInfo.FetterList = append(pbAvatar.FetterInfo.FetterList, &proto.FetterData{
			FetterId:    uint32(v),
			FetterState: constant.FETTER_STATE_FINISH,
		})
	}
	// 突破等级奖励
	for promoteLevel, isTaken := range avatar.PromoteRewardMap {
		if !isTaken {
			pbAvatar.PendingPromoteRewardList = append(pbAvatar.PendingPromoteRewardList, promoteLevel)
		}
	}
	return pbAvatar
}

// PacketAvatarPropNotify 角色属性表更新通知
func (g *Game) PacketAvatarPropNotify(avatar *model.Avatar) *proto.AvatarPropNotify {
	avatarPropNotify := &proto.AvatarPropNotify{
		PropMap:    make(map[uint32]int64, 5),
		AvatarGuid: avatar.Guid,
	}
	// 角色等级
	avatarPropNotify.PropMap[uint32(constant.PLAYER_PROP_LEVEL)] = int64(avatar.Level)
	// 角色经验
	avatarPropNotify.PropMap[uint32(constant.PLAYER_PROP_EXP)] = int64(avatar.Exp)
	// 角色突破等级
	avatarPropNotify.PropMap[uint32(constant.PLAYER_PROP_BREAK_LEVEL)] = int64(avatar.Promote)
	// 角色饱食度
	avatarPropNotify.PropMap[uint32(constant.PLAYER_PROP_SATIATION_VAL)] = int64(avatar.Satiation)
	// 角色饱食度溢出
	avatarPropNotify.PropMap[uint32(constant.PLAYER_PROP_SATIATION_PENALTY_TIME)] = int64(avatar.SatiationPenalty)

	return avatarPropNotify
}

func (g *Game) GetAllAvatarDataConfig() map[int32]*gdconf.AvatarData {
	allAvatarDataConfig := make(map[int32]*gdconf.AvatarData)
	for avatarId, avatarData := range gdconf.GetAvatarDataMap() {
		if avatarId <= 10000001 || avatarId >= 11000000 {
			// 跳过无效角色
			continue
		}
		if avatarId == 10000005 || avatarId == 10000007 {
			// 跳过主角
			continue
		}
		allAvatarDataConfig[avatarId] = avatarData
	}
	return allAvatarDataConfig
}

func (g *Game) AddUserAvatar(userId uint32, avatarId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 判断玩家是否已有该角色
	dbAvatar := player.GetDbAvatar()
	_, ok := dbAvatar.AvatarMap[avatarId]
	if ok {
		// TODO 如果已有转换命座材料
		return
	}
	dbAvatar.AddAvatar(player, avatarId)

	// 添加初始武器
	avatarDataConfig := gdconf.GetAvatarDataById(int32(avatarId))
	if avatarDataConfig == nil {
		logger.Error("config is nil, itemId: %v", avatarId)
		return
	}
	weaponId := g.AddUserWeapon(player.PlayerID, uint32(avatarDataConfig.InitialWeapon))

	// 角色装上初始武器
	g.WearUserAvatarWeapon(player.PlayerID, avatarId, weaponId)

	g.UpdateUserAvatarFightProp(player.PlayerID, avatarId)

	avatarAddNotify := &proto.AvatarAddNotify{
		Avatar:   g.PacketAvatarInfo(dbAvatar.AvatarMap[avatarId]),
		IsInTeam: false,
	}
	g.SendMsg(cmd.AvatarAddNotify, userId, player.ClientSeq, avatarAddNotify)
}

// AddUserFlycloak 给予玩家风之翼
func (g *Game) AddUserFlycloak(userId uint32, flyCloakId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 验证玩家是否已拥有该风之翼
	for _, flycloak := range player.FlyCloakList {
		if flycloak == flyCloakId {
			logger.Error("player has flycloak, flycloakId: %v", flyCloakId)
			return
		}
	}
	player.FlyCloakList = append(player.FlyCloakList, flyCloakId)

	avatarGainFlycloakNotify := &proto.AvatarGainFlycloakNotify{
		FlycloakId: flyCloakId,
	}
	g.SendMsg(cmd.AvatarGainFlycloakNotify, userId, player.ClientSeq, avatarGainFlycloakNotify)
}

// AddUserCostume 给予玩家时装
func (g *Game) AddUserCostume(userId uint32, costumeId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 验证玩家是否已拥有该时装
	for _, costume := range player.CostumeList {
		if costume == costumeId {
			logger.Error("player has costume, costumeId: %v", costumeId)
			return
		}
	}
	player.CostumeList = append(player.CostumeList, costumeId)

	avatarGainCostumeNotify := &proto.AvatarGainCostumeNotify{
		CostumeId: costumeId,
	}
	g.SendMsg(cmd.AvatarGainCostumeNotify, userId, player.ClientSeq, avatarGainCostumeNotify)
}

// UpgradePlayerAvatar 玩家角色升级
func (g *Game) UpgradePlayerAvatar(player *model.Player, avatar *model.Avatar, expCount uint32) {
	// 获取角色配置表
	avatarDataConfig := gdconf.GetAvatarDataById(int32(avatar.AvatarId))
	if avatarDataConfig == nil {
		logger.Error("avatar config error, avatarId: %v", avatar.AvatarId)
		return
	}
	// 获取角色突破配置表
	avatarPromoteConfig := gdconf.GetAvatarPromoteDataByIdAndLevel(avatarDataConfig.PromoteId, int32(avatar.Promote))
	if avatarPromoteConfig == nil {
		logger.Error("avatar promote config error, promoteLevel: %v", avatar.Promote)
		return
	}
	// 角色增加经验
	avatar.Exp += expCount
	// 角色升级
	for {
		// 获取角色等级配置表
		avatarLevelConfig := gdconf.GetAvatarLevelDataByLevel(int32(avatar.Level))
		if avatarLevelConfig == nil {
			// 获取不到代表已经到达最大等级
			break
		}
		// 角色当前等级未突破则跳出循环
		if avatar.Level >= uint8(avatarPromoteConfig.LevelLimit) {
			// 角色未突破溢出的经验处理
			avatar.Exp = 0
			break
		}
		// 角色经验小于升级所需的经验则跳出循环
		if avatar.Exp < uint32(avatarLevelConfig.Exp) {
			break
		}
		// 角色等级提升
		avatar.Exp -= uint32(avatarLevelConfig.Exp)
		avatar.Level++
	}
	// 角色更新面板
	g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)
	// 角色属性表更新通知
	g.SendMsg(cmd.AvatarPropNotify, player.PlayerID, player.ClientSeq, g.PacketAvatarPropNotify(avatar))
}

func (g *Game) UpdateUserAvatarFightProp(userId uint32, avatarId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	dbAvatar := player.GetDbAvatar()
	avatar, ok := dbAvatar.AvatarMap[avatarId]
	if !ok {
		logger.Error("avatar is nil, avatarId: %v", avatar)
		return
	}
	// 角色初始化面板
	dbAvatar.InitAvatarFightProp(avatar)

	avatarFightPropNotify := &proto.AvatarFightPropNotify{
		AvatarGuid:   avatar.Guid,
		FightPropMap: avatar.FightPropMap,
	}
	g.SendMsg(cmd.AvatarFightPropNotify, userId, player.ClientSeq, avatarFightPropNotify)
}
