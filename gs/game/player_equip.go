package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// SetEquipLockStateReq 设置装备上锁状态请求
func (g *GameManager) SetEquipLockStateReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user set equip lock, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetEquipLockStateReq)

	// 获取目标装备
	equipGameObj, ok := player.GameObjectGuidMap[req.TargetEquipGuid]
	if !ok {
		logger.Error("equip error, equipGuid: %v", req.TargetEquipGuid)
		g.SendError(cmd.SetEquipLockStateRsp, player, &proto.SetEquipLockStateRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	switch equipGameObj.(type) {
	case *model.Weapon:
		weapon := equipGameObj.(*model.Weapon)
		weapon.Lock = req.IsLocked
		// 更新武器的物品数据
		g.SendMsg(cmd.StoreItemChangeNotify, player.PlayerID, player.ClientSeq, g.PacketStoreItemChangeNotifyByWeapon(weapon))
	case *model.Reliquary:
		reliquary := equipGameObj.(*model.Reliquary)
		reliquary.Lock = req.IsLocked
		// TODO 更新圣遗物的物品数据
	default:
		logger.Error("equip type error, equipGuid: %v", req.TargetEquipGuid)
		g.SendError(cmd.SetEquipLockStateRsp, player, &proto.SetEquipLockStateRsp{})
		return
	}

	setEquipLockStateRsp := &proto.SetEquipLockStateRsp{
		TargetEquipGuid: req.TargetEquipGuid,
		IsLocked:        req.IsLocked,
	}
	g.SendMsg(cmd.SetEquipLockStateRsp, player.PlayerID, player.ClientSeq, setEquipLockStateRsp)
}

// WearEquipReq 穿戴装备请求
func (g *GameManager) WearEquipReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user wear equip, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.WearEquipReq)

	avatar, ok := player.AvatarMap[player.GetAvatarIdByGuid(req.AvatarGuid)]
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.WearEquipRsp, player, &proto.WearEquipRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}
	// 获取目标装备
	equipGameObj, ok := player.GameObjectGuidMap[req.EquipGuid]
	if !ok {
		logger.Error("equip error, equipGuid: %v", req.EquipGuid)
		g.SendError(cmd.WearEquipRsp, player, &proto.WearEquipRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	switch equipGameObj.(type) {
	case *model.Weapon:
		weapon := equipGameObj.(*model.Weapon)
		g.WearUserAvatarWeapon(player.PlayerID, avatar.AvatarId, weapon.WeaponId)
	case *model.Reliquary:
		// 暂时不写
	default:
		logger.Error("equip type error, equipGuid: %v", req.EquipGuid)
		g.SendError(cmd.WearEquipRsp, player, &proto.WearEquipRsp{})
		return
	}

	wearEquipRsp := &proto.WearEquipRsp{
		AvatarGuid: req.AvatarGuid,
		EquipGuid:  req.EquipGuid,
	}
	g.SendMsg(cmd.WearEquipRsp, player.PlayerID, player.ClientSeq, wearEquipRsp)
}

// WearUserAvatarWeapon 玩家角色装备武器
func (g *GameManager) WearUserAvatarWeapon(userId uint32, avatarId uint32, weaponId uint64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	avatar := player.AvatarMap[avatarId]
	weapon := player.WeaponMap[weaponId]

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	if weapon.AvatarId != 0 {
		// 武器在别的角色身上
		weakAvatarId := weapon.AvatarId
		weakWeaponId := weaponId
		strongAvatarId := avatarId
		strongWeaponId := avatar.EquipWeapon.WeaponId
		player.TakeOffWeapon(weakAvatarId, weakWeaponId)
		player.TakeOffWeapon(strongAvatarId, strongWeaponId)
		player.WearWeapon(weakAvatarId, strongWeaponId)
		player.WearWeapon(strongAvatarId, weakWeaponId)

		weakAvatar := player.AvatarMap[weakAvatarId]
		weakWeapon := player.WeaponMap[weakAvatar.EquipWeapon.WeaponId]

		weakWorldAvatar := world.GetPlayerWorldAvatar(player, weakAvatarId)
		if weakWorldAvatar != nil {
			weakWorldAvatar.SetWeaponEntityId(scene.CreateEntityWeapon())
			avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotify(weakAvatar, weakWeapon, weakWorldAvatar.GetWeaponEntityId())
			g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
		} else {
			avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotify(weakAvatar, weakWeapon, 0)
			g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
		}
	} else if avatar.EquipWeapon != nil {
		// 角色当前有武器
		player.TakeOffWeapon(avatarId, avatar.EquipWeapon.WeaponId)
		player.WearWeapon(avatarId, weaponId)
	} else {
		// 是新角色还没有武器
		player.WearWeapon(avatarId, weaponId)
	}

	worldAvatar := world.GetPlayerWorldAvatar(player, avatarId)
	if worldAvatar != nil {
		worldAvatar.SetWeaponEntityId(scene.CreateEntityWeapon())
		avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotify(avatar, weapon, worldAvatar.GetWeaponEntityId())
		g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
	} else {
		avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotify(avatar, weapon, 0)
		g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
	}
}

func (g *GameManager) PacketAvatarEquipChangeNotify(avatar *model.Avatar, weapon *model.Weapon, entityId uint32) *proto.AvatarEquipChangeNotify {
	itemDataConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if itemDataConfig == nil {
		logger.Error("item data config error, itemId: %v", weapon.ItemId)
		return new(proto.AvatarEquipChangeNotify)
	}
	avatarEquipChangeNotify := &proto.AvatarEquipChangeNotify{
		AvatarGuid: avatar.Guid,
		ItemId:     weapon.ItemId,
		EquipGuid:  weapon.Guid,
	}
	switch itemDataConfig.Type {
	case int32(constant.ITEM_TYPE_WEAPON):
		avatarEquipChangeNotify.EquipType = uint32(constant.EQUIP_TYPE_WEAPON)
	case int32(constant.ITEM_TYPE_RELIQUARY):
		avatarEquipChangeNotify.EquipType = uint32(itemDataConfig.ReliquaryType)
	}
	avatarEquipChangeNotify.Weapon = &proto.SceneWeaponInfo{
		EntityId:    entityId,
		GadgetId:    uint32(itemDataConfig.GadgetId),
		ItemId:      weapon.ItemId,
		Guid:        weapon.Guid,
		Level:       uint32(weapon.Level),
		AbilityInfo: new(proto.AbilitySyncStateInfo),
	}
	return avatarEquipChangeNotify
}

func (g *GameManager) PacketAvatarEquipTakeOffNotify(avatar *model.Avatar, weapon *model.Weapon) *proto.AvatarEquipChangeNotify {
	avatarEquipChangeNotify := &proto.AvatarEquipChangeNotify{
		AvatarGuid: avatar.Guid,
	}
	itemDataConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if itemDataConfig != nil {
		avatarEquipChangeNotify.EquipType = uint32(itemDataConfig.Type)
	}
	return avatarEquipChangeNotify
}
