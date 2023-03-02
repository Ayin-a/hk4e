package game

import (
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

// GMTeleportPlayer 传送玩家
func (c *CommandManager) GMTeleportPlayer(userId, sceneId uint32, posX, posY, posZ float64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	GAME_MANAGER.TeleportPlayer(player, uint16(proto.EnterReason_ENTER_REASON_GM), sceneId, &model.Vector{
		X: posX,
		Y: posY,
		Z: posZ,
	}, new(model.Vector), 0)
}

// GMAddUserItem 给予玩家物品
func (c *CommandManager) GMAddUserItem(userId, itemId, itemCount uint32) {
	GAME_MANAGER.AddUserItem(userId, []*ChangeItem{
		{
			ItemId:      itemId,
			ChangeCount: itemCount,
		},
	}, true, 0)
}

// GMAddUserWeapon 给予玩家武器
func (c *CommandManager) GMAddUserWeapon(userId, itemId, itemCount uint32) {
	// 武器数量
	for i := uint32(0); i < itemCount; i++ {
		// 给予武器
		GAME_MANAGER.AddUserWeapon(userId, itemId)
	}
}

// GMAddUserReliquary 给予玩家圣遗物
func (c *CommandManager) GMAddUserReliquary(userId, itemId, itemCount uint32) {
	// 圣遗物数量
	for i := uint32(0); i < itemCount; i++ {
		// 给予圣遗物
		GAME_MANAGER.AddUserReliquary(userId, itemId)
	}
}

// GMAddUserAvatar 给予玩家角色
func (c *CommandManager) GMAddUserAvatar(userId, avatarId uint32) {
	// 添加角色
	GAME_MANAGER.AddUserAvatar(userId, avatarId)
	// TODO 设置角色 等以后做到角色升级之类的再说
	// avatar := player.AvatarMap[avatarId]
}

// GMAddUserCostume 给予玩家时装
func (c *CommandManager) GMAddUserCostume(userId, costumeId uint32) {
	// 添加时装
	GAME_MANAGER.AddUserCostume(userId, costumeId)
}

// GMAddUserFlycloak 给予玩家风之翼
func (c *CommandManager) GMAddUserFlycloak(userId, flycloakId uint32) {
	// 添加风之翼
	GAME_MANAGER.AddUserFlycloak(userId, flycloakId)
}

// GMAddUserAllItem 给予玩家所有物品
func (c *CommandManager) GMAddUserAllItem(userId, itemCount uint32) {
	// 猜猜这样做为啥不行?
	// for itemId := range GAME_MANAGER.GetAllItemDataConfig() {
	// 	c.GMAddUserItem(userId, uint32(itemId), itemCount)
	// }
	itemList := make([]*ChangeItem, 0)
	for itemId := range GAME_MANAGER.GetAllItemDataConfig() {
		itemList = append(itemList, &ChangeItem{
			ItemId:      uint32(itemId),
			ChangeCount: itemCount,
		})
	}
	GAME_MANAGER.AddUserItem(userId, itemList, false, 0)
}

// GMAddUserAllWeapon 给予玩家所有武器
func (c *CommandManager) GMAddUserAllWeapon(userId, itemCount uint32) {
	for itemId := range GAME_MANAGER.GetAllWeaponDataConfig() {
		c.GMAddUserWeapon(userId, uint32(itemId), itemCount)
	}
}

// GMAddUserAllReliquary 给予玩家所有圣遗物
func (c *CommandManager) GMAddUserAllReliquary(userId, itemCount uint32) {
	for itemId := range GAME_MANAGER.GetAllReliquaryDataConfig() {
		c.GMAddUserReliquary(userId, uint32(itemId), itemCount)
	}
}

// GMAddUserAllAvatar 给予玩家所有角色
func (c *CommandManager) GMAddUserAllAvatar(userId uint32) {
	for avatarId := range GAME_MANAGER.GetAllAvatarDataConfig() {
		c.GMAddUserAvatar(userId, uint32(avatarId))
	}
}

// GMAddUserAllCostume 给予玩家所有时装
func (c *CommandManager) GMAddUserAllCostume(userId uint32) {
	for costumeId := range gdconf.GetAvatarCostumeDataMap() {
		c.GMAddUserCostume(userId, uint32(costumeId))
	}
}

// GMAddUserAllFlycloak 给予玩家所有风之翼
func (c *CommandManager) GMAddUserAllFlycloak(userId uint32) {
	for flycloakId := range gdconf.GetAvatarFlycloakDataMap() {
		c.GMAddUserFlycloak(userId, uint32(flycloakId))
	}
}

// GMAddUserAllEvery 给予玩家所有内容
func (c *CommandManager) GMAddUserAllEvery(userId uint32, itemCount uint32, weaponCount uint32) {
	// 给予玩家所有物品
	c.GMAddUserAllItem(userId, itemCount)
	// 给予玩家所有武器
	c.GMAddUserAllWeapon(userId, itemCount)
	// 给予玩家所有圣遗物
	c.GMAddUserAllReliquary(userId, itemCount)
	// 给予玩家所有角色
	c.GMAddUserAllAvatar(userId)
	// 给予玩家所有时装
	c.GMAddUserAllCostume(userId)
	// 给予玩家所有风之翼
	c.GMAddUserAllFlycloak(userId)
}
