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
		// 更新圣遗物的物品数据
		g.SendMsg(cmd.StoreItemChangeNotify, player.PlayerID, player.ClientSeq, g.PacketStoreItemChangeNotifyByReliquary(reliquary))
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

// TakeoffEquipReq 装备卸下请求
func (g *GameManager) TakeoffEquipReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user take off equip, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.TakeoffEquipReq)

	// 获取目标角色
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.TakeoffEquipRsp, player, &proto.TakeoffEquipRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}
	// 确保角色已装备指定位置的圣遗物
	reliquary, ok := avatar.EquipReliquaryMap[uint8(req.Slot)]
	if !ok {
		logger.Error("avatar not wear reliquary, slot: %v", req.Slot)
		g.SendError(cmd.TakeoffEquipRsp, player, &proto.TakeoffEquipRsp{})
		return
	}
	// 卸下圣遗物
	dbAvatar := player.GetDbAvatar()
	dbAvatar.TakeOffReliquary(avatar.AvatarId, reliquary)
	// 角色更新面板
	g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)
	// 更新玩家装备
	avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotifyByReliquary(avatar, uint8(req.Slot))
	g.SendMsg(cmd.AvatarEquipChangeNotify, player.PlayerID, player.ClientSeq, avatarEquipChangeNotify)

	takeoffEquipRsp := &proto.TakeoffEquipRsp{
		AvatarGuid: req.AvatarGuid,
		Slot:       req.Slot,
	}
	g.SendMsg(cmd.TakeoffEquipRsp, player.PlayerID, player.ClientSeq, takeoffEquipRsp)
}

// WearEquipReq 穿戴装备请求
func (g *GameManager) WearEquipReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user wear equip, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.WearEquipReq)

	// 获取目标角色
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.WearEquipRsp, player, &proto.WearEquipRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}
	// 获取角色配置表
	avatarConfig := gdconf.GetAvatarDataById(int32(avatar.AvatarId))
	if avatarConfig == nil {
		logger.Error("avatar config error, avatarId: %v", avatar.AvatarId)
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
		// 获取武器配置表
		weaponConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
		if weaponConfig == nil {
			logger.Error("weapon config error, itemId: %v", weapon.ItemId)
			return
		}
		// 校验装备的武器类型是否匹配
		if weaponConfig.EquipType != avatarConfig.WeaponType {
			logger.Error("weapon type error, weaponType: %v", weaponConfig.EquipType)
			g.SendError(cmd.WearEquipRsp, player, &proto.WearEquipRsp{})
			return
		}
		g.WearUserAvatarWeapon(player.PlayerID, avatar.AvatarId, weapon.WeaponId)
	case *model.Reliquary:
		reliquary := equipGameObj.(*model.Reliquary)
		g.WearUserAvatarReliquary(player.PlayerID, avatar.AvatarId, reliquary.ReliquaryId)
	default:
		logger.Error("equip type error, equipGuid: %v", req.EquipGuid)
		g.SendError(cmd.WearEquipRsp, player, &proto.WearEquipRsp{})
		return
	}
	// 角色更新面板
	g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)

	wearEquipRsp := &proto.WearEquipRsp{
		AvatarGuid: req.AvatarGuid,
		EquipGuid:  req.EquipGuid,
	}
	g.SendMsg(cmd.WearEquipRsp, player.PlayerID, player.ClientSeq, wearEquipRsp)
}

// WearUserAvatarReliquary 玩家角色装备圣遗物
func (g *GameManager) WearUserAvatarReliquary(userId uint32, avatarId uint32, reliquaryId uint64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	dbAvatar := player.GetDbAvatar()
	avatar, ok := dbAvatar.AvatarMap[avatarId]
	if !ok {
		logger.Error("avatar error, avatarId: %v", avatarId)
		return
	}
	dbReliquary := player.GetDbReliquary()
	reliquary, ok := dbReliquary.ReliquaryMap[reliquaryId]
	if !ok {
		logger.Error("reliquary error, reliquaryId: %v", reliquaryId)
		return
	}
	// 获取圣遗物配置表
	reliquaryConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
	if reliquaryConfig == nil {
		logger.Error("reliquary config error, itemId: %v", reliquary.ItemId)
		return
	}
	// 角色已装备的圣遗物
	avatarCurReliquary := avatar.EquipReliquaryMap[uint8(reliquaryConfig.ReliquaryType)]
	if reliquary.AvatarId != 0 {
		// 圣遗物在别的角色身上
		targetReliquaryAvatar, ok := dbAvatar.AvatarMap[reliquary.AvatarId]
		if !ok {
			logger.Error("avatar error, avatarId: %v", reliquary.AvatarId)
			return
		}
		// 确保目前角色已装备圣遗物
		if avatarCurReliquary != nil {
			// 卸下角色已装备的圣遗物
			dbAvatar.TakeOffReliquary(avatarId, avatarCurReliquary)
			// 将目标圣遗物的角色装备当前角色曾装备的圣遗物
			dbAvatar.WearReliquary(targetReliquaryAvatar.AvatarId, avatarCurReliquary)
		}
		// 将目标圣遗物的角色卸下圣遗物
		dbAvatar.TakeOffReliquary(targetReliquaryAvatar.AvatarId, reliquary)

		// 更新目标圣遗物角色的装备
		avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotifyByReliquary(targetReliquaryAvatar, uint8(reliquaryConfig.ReliquaryType))
		g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
	} else if avatarCurReliquary != nil {
		// 角色当前有圣遗物则卸下
		dbAvatar.TakeOffReliquary(avatarId, avatarCurReliquary)
	}
	// 角色装备圣遗物
	dbAvatar.WearReliquary(avatarId, reliquary)

	// 更新角色装备
	avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotifyByReliquary(avatar, uint8(reliquaryConfig.ReliquaryType))
	g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
}

// WearUserAvatarWeapon 玩家角色装备武器
func (g *GameManager) WearUserAvatarWeapon(userId uint32, avatarId uint32, weaponId uint64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	dbAvatar := player.GetDbAvatar()
	avatar, ok := dbAvatar.AvatarMap[avatarId]
	if !ok {
		logger.Error("avatar error, avatarId: %v", avatarId)
		return
	}
	dbWeapon := player.GetDbWeapon()
	weapon, ok := dbWeapon.WeaponMap[weaponId]
	if !ok {
		logger.Error("weapon error, weaponId: %v", weaponId)
		return
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		logger.Error("world is nil, worldId: %v", player.WorldId)
		return
	}
	// 角色已装备的武器
	avatarCurWeapon := avatar.EquipWeapon
	// 武器需要确保双方都装备才能替换不然会出问题
	if avatarCurWeapon != nil {
		if weapon.AvatarId != 0 {
			// 武器在别的角色身上
			targetWeaponAvatar, ok := dbAvatar.AvatarMap[weapon.AvatarId]
			if !ok {
				logger.Error("avatar error, avatarId: %v", weapon.AvatarId)
				return
			}
			// 卸下角色已装备的武器
			dbAvatar.TakeOffWeapon(avatarId, avatarCurWeapon)

			// 将目标武器的角色卸下武器
			dbAvatar.TakeOffWeapon(targetWeaponAvatar.AvatarId, weapon)
			// 将目标武器的角色装备当前角色曾装备的武器
			dbAvatar.WearWeapon(targetWeaponAvatar.AvatarId, avatarCurWeapon)

			// 更新目标武器角色的装备
			weaponEntityId := uint32(0)
			worldAvatar := world.GetPlayerWorldAvatar(player, targetWeaponAvatar.AvatarId)
			if worldAvatar != nil {
				weaponEntityId = worldAvatar.GetWeaponEntityId()
			}
			avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotifyByWeapon(targetWeaponAvatar, targetWeaponAvatar.EquipWeapon, weaponEntityId)
			g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
		} else {
			// 角色当前有武器则卸下
			dbAvatar.TakeOffWeapon(avatarId, avatarCurWeapon)
		}
	}
	// 角色装备武器
	dbAvatar.WearWeapon(avatarId, weapon)

	// 更新角色装备
	weaponEntityId := uint32(0)
	worldAvatar := world.GetPlayerWorldAvatar(player, avatarId)
	if worldAvatar != nil {
		weaponEntityId = worldAvatar.GetWeaponEntityId()
	}
	avatarEquipChangeNotify := g.PacketAvatarEquipChangeNotifyByWeapon(avatar, weapon, weaponEntityId)
	g.SendMsg(cmd.AvatarEquipChangeNotify, userId, player.ClientSeq, avatarEquipChangeNotify)
}

func (g *GameManager) PacketAvatarEquipChangeNotifyByReliquary(avatar *model.Avatar, slot uint8) *proto.AvatarEquipChangeNotify {
	// 获取角色对应位置的圣遗物
	reliquary, ok := avatar.EquipReliquaryMap[slot]
	if !ok {
		// 没有则代表卸下
		avatarEquipChangeNotify := &proto.AvatarEquipChangeNotify{
			AvatarGuid: avatar.Guid,
			EquipType:  uint32(slot),
		}
		return avatarEquipChangeNotify
	}
	reliquaryConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
	if reliquaryConfig == nil {
		logger.Error("reliquary config error, itemId: %v", reliquary.ItemId)
		return new(proto.AvatarEquipChangeNotify)
	}
	avatarEquipChangeNotify := &proto.AvatarEquipChangeNotify{
		AvatarGuid: avatar.Guid,
		ItemId:     reliquary.ItemId,
		EquipGuid:  reliquary.Guid,
		EquipType:  uint32(reliquaryConfig.ReliquaryType),
		Reliquary: &proto.SceneReliquaryInfo{
			ItemId:       reliquary.ItemId,
			Guid:         reliquary.Guid,
			Level:        uint32(reliquary.Level),
			PromoteLevel: uint32(reliquary.Promote),
		},
	}
	return avatarEquipChangeNotify
}

func (g *GameManager) PacketAvatarEquipChangeNotifyByWeapon(avatar *model.Avatar, weapon *model.Weapon, entityId uint32) *proto.AvatarEquipChangeNotify {
	weaponConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if weaponConfig == nil {
		logger.Error("weapon config error, itemId: %v", weapon.ItemId)
		return new(proto.AvatarEquipChangeNotify)
	}
	affixMap := make(map[uint32]uint32)
	for _, affixId := range weapon.AffixIdList {
		affixMap[affixId] = uint32(weapon.Refinement)
	}
	avatarEquipChangeNotify := &proto.AvatarEquipChangeNotify{
		AvatarGuid: avatar.Guid,
		ItemId:     weapon.ItemId,
		EquipGuid:  weapon.Guid,
		EquipType:  constant.EQUIP_TYPE_WEAPON,
		Weapon: &proto.SceneWeaponInfo{
			EntityId:     entityId,
			GadgetId:     uint32(weaponConfig.GadgetId),
			ItemId:       weapon.ItemId,
			Guid:         weapon.Guid,
			Level:        uint32(weapon.Level),
			PromoteLevel: uint32(weapon.Promote),
			AbilityInfo:  new(proto.AbilitySyncStateInfo),
			AffixMap:     affixMap,
		},
	}
	return avatarEquipChangeNotify
}
