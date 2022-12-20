package game

import (
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
)

// GMTeleportPlayer 传送玩家
func (c *CommandManager) GMTeleportPlayer(userId, sceneId uint32, posX, posY, posZ float64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	GAME_MANAGER.TeleportPlayer(player, uint32(constant.EnterReasonConst.Gm), sceneId, &model.Vector{
		X: posX,
		Y: posY,
		Z: posZ,
	})
}

// GMAddUserItem 给予玩家物品
func (c *CommandManager) GMAddUserItem(userId, itemId, itemCount uint32) {
	GAME_MANAGER.AddUserItem(userId, []*UserItem{
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

// GMAddUserAvatar 给予玩家角色
func (c *CommandManager) GMAddUserAvatar(userId, avatarId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 添加角色
	GAME_MANAGER.AddUserAvatar(userId, avatarId)
	// TODO 设置角色 等以后做到角色升级之类的再说
	// avatar := player.AvatarMap[avatarId]
}

// GMAddUserAllItem 给予玩家所有物品
func (c *CommandManager) GMAddUserAllItem(userId, itemCount uint32) {
	for itemId := range GAME_MANAGER.GetAllItemDataConfig() {
		c.GMAddUserItem(userId, uint32(itemId), itemCount)
	}
}

// GMAddUserAllWeapon 给予玩家所有武器
func (c *CommandManager) GMAddUserAllWeapon(userId, itemCount uint32) {
	for itemId := range GAME_MANAGER.GetAllWeaponDataConfig() {
		c.GMAddUserWeapon(userId, uint32(itemId), itemCount)
	}
}

// GMAddUserAllAvatar 给予玩家所有角色
func (c *CommandManager) GMAddUserAllAvatar(userId uint32) {
	for avatarId := range GAME_MANAGER.GetAllAvatarDataConfig() {
		c.GMAddUserAvatar(userId, uint32(avatarId))
	}
}

// GMAddUserAllEvery 给予玩家所有内容
func (c *CommandManager) GMAddUserAllEvery(userId uint32, itemCount uint32, weaponCount uint32) {
	// 给予玩家所有物品
	c.GMAddUserAllItem(userId, itemCount)
	// 给予玩家所有武器
	c.GMAddUserAllWeapon(userId, itemCount)
	// 给予玩家所有角色
	c.GMAddUserAllAvatar(userId)
}
