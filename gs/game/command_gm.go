package game

import (
	"encoding/base64"

	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// GM函数模块
// GM函数只支持基本类型的简单参数传入

type GMCmd struct {
}

// 玩家通用GM指令

// GMTeleportPlayer 传送玩家
func (g *GMCmd) GMTeleportPlayer(userId, sceneId, dungeonId uint32, posX, posY, posZ float64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	GAME_MANAGER.TeleportPlayer(player, uint16(proto.EnterReason_ENTER_REASON_GM), sceneId, &model.Vector{
		X: posX,
		Y: posY,
		Z: posZ,
	}, new(model.Vector), dungeonId)
}

// GMAddUserItem 给予玩家物品
func (g *GMCmd) GMAddUserItem(userId, itemId, itemCount uint32) {
	GAME_MANAGER.AddUserItem(userId, []*ChangeItem{
		{
			ItemId:      itemId,
			ChangeCount: itemCount,
		},
	}, true, 0)
}

// GMAddUserWeapon 给予玩家武器
func (g *GMCmd) GMAddUserWeapon(userId, itemId, itemCount uint32) {
	// 武器数量
	for i := uint32(0); i < itemCount; i++ {
		// 给予武器
		GAME_MANAGER.AddUserWeapon(userId, itemId)
	}
}

// GMAddUserReliquary 给予玩家圣遗物
func (g *GMCmd) GMAddUserReliquary(userId, itemId, itemCount uint32) {
	// 圣遗物数量
	for i := uint32(0); i < itemCount; i++ {
		// 给予圣遗物
		GAME_MANAGER.AddUserReliquary(userId, itemId)
	}
}

// GMAddUserAvatar 给予玩家角色
func (g *GMCmd) GMAddUserAvatar(userId, avatarId uint32) {
	// 添加角色
	GAME_MANAGER.AddUserAvatar(userId, avatarId)
	// TODO 设置角色 等以后做到角色升级之类的再说
	// avatar := player.AvatarMap[avatarId]
}

// GMAddUserCostume 给予玩家时装
func (g *GMCmd) GMAddUserCostume(userId, costumeId uint32) {
	// 添加时装
	GAME_MANAGER.AddUserCostume(userId, costumeId)
}

// GMAddUserFlycloak 给予玩家风之翼
func (g *GMCmd) GMAddUserFlycloak(userId, flycloakId uint32) {
	// 添加风之翼
	GAME_MANAGER.AddUserFlycloak(userId, flycloakId)
}

// GMAddUserAllItem 给予玩家所有物品
func (g *GMCmd) GMAddUserAllItem(userId, itemCount uint32) {
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
func (g *GMCmd) GMAddUserAllWeapon(userId, itemCount uint32) {
	for itemId := range GAME_MANAGER.GetAllWeaponDataConfig() {
		g.GMAddUserWeapon(userId, uint32(itemId), itemCount)
	}
}

// GMAddUserAllReliquary 给予玩家所有圣遗物
func (g *GMCmd) GMAddUserAllReliquary(userId, itemCount uint32) {
	for itemId := range GAME_MANAGER.GetAllReliquaryDataConfig() {
		g.GMAddUserReliquary(userId, uint32(itemId), itemCount)
	}
}

// GMAddUserAllAvatar 给予玩家所有角色
func (g *GMCmd) GMAddUserAllAvatar(userId uint32) {
	for avatarId := range GAME_MANAGER.GetAllAvatarDataConfig() {
		g.GMAddUserAvatar(userId, uint32(avatarId))
	}
}

// GMAddUserAllCostume 给予玩家所有时装
func (g *GMCmd) GMAddUserAllCostume(userId uint32) {
	for costumeId := range gdconf.GetAvatarCostumeDataMap() {
		g.GMAddUserCostume(userId, uint32(costumeId))
	}
}

// GMAddUserAllFlycloak 给予玩家所有风之翼
func (g *GMCmd) GMAddUserAllFlycloak(userId uint32) {
	for flycloakId := range gdconf.GetAvatarFlycloakDataMap() {
		g.GMAddUserFlycloak(userId, uint32(flycloakId))
	}
}

// GMAddUserAllEvery 给予玩家所有内容
func (g *GMCmd) GMAddUserAllEvery(userId, itemCount uint32) {
	// 给予玩家所有物品
	g.GMAddUserAllItem(userId, itemCount)
	// 给予玩家所有武器
	g.GMAddUserAllWeapon(userId, itemCount)
	// 给予玩家所有圣遗物
	g.GMAddUserAllReliquary(userId, itemCount)
	// 给予玩家所有角色
	g.GMAddUserAllAvatar(userId)
	// 给予玩家所有时装
	g.GMAddUserAllCostume(userId)
	// 给予玩家所有风之翼
	g.GMAddUserAllFlycloak(userId)
}

// GMAddQuest 添加任务
func (g *GMCmd) GMAddQuest(userId uint32, questId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	dbQuest := player.GetDbQuest()
	dbQuest.AddQuest(questId)
	ntf := &proto.QuestListUpdateNotify{
		QuestList: make([]*proto.Quest, 0),
	}
	ntf.QuestList = append(ntf.QuestList, GAME_MANAGER.PacketQuest(player, questId))
	GAME_MANAGER.SendMsg(cmd.QuestListUpdateNotify, player.PlayerID, player.ClientSeq, ntf)
}

// GMForceFinishAllQuest 强制完成当前所有任务
func (g *GMCmd) GMForceFinishAllQuest(userId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	dbQuest := player.GetDbQuest()
	ntf := &proto.QuestListUpdateNotify{
		QuestList: make([]*proto.Quest, 0),
	}
	for _, quest := range dbQuest.GetQuestMap() {
		dbQuest.ForceFinishQuest(quest.QuestId)
		pbQuest := GAME_MANAGER.PacketQuest(player, quest.QuestId)
		if pbQuest == nil {
			continue
		}
		ntf.QuestList = append(ntf.QuestList, pbQuest)
	}
	GAME_MANAGER.SendMsg(cmd.QuestListUpdateNotify, player.PlayerID, player.ClientSeq, ntf)
	GAME_MANAGER.AcceptQuest(player, true)
}

// GMUnlockAllPoint 解锁场景全部传送点
func (g *GMCmd) GMUnlockAllPoint(userId uint32, sceneId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	dbWorld := player.GetDbWorld()
	dbScene := dbWorld.GetSceneById(sceneId)
	if dbScene == nil {
		logger.Error("db scene is nil, uid: %v", sceneId)
		return
	}
	scenePointMapConfig := gdconf.GetScenePointMapBySceneId(int32(sceneId))
	for _, pointData := range scenePointMapConfig {
		dbScene.UnlockPoint(uint32(pointData.Id))
	}
	GAME_MANAGER.SendMsg(cmd.ScenePointUnlockNotify, player.PlayerID, player.ClientSeq, &proto.ScenePointUnlockNotify{
		SceneId:         sceneId,
		PointList:       dbScene.GetUnlockPointList(),
		UnhidePointList: nil,
	})
}

// GMCreateGadget 在玩家附近创建物件实体
func (g *GMCmd) GMCreateGadget(userId uint32, posX, posY, posZ float64, gadgetId, itemId, count uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	GAME_MANAGER.CreateDropGadget(player, &model.Vector{
		X: posX,
		Y: posY,
		Z: posZ,
	}, gadgetId, itemId, count)
}

// 系统级GM指令

func (g *GMCmd) ChangePlayerCmdPerm(userId uint32, cmdPerm uint8) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	player.CmdPerm = cmdPerm
}

func (g *GMCmd) ReloadGameDataConfig() {
	LOCAL_EVENT_MANAGER.GetLocalEventChan() <- &LocalEvent{
		EventId: ReloadGameDataConfig,
	}
}

func (g *GMCmd) XLuaDebug(userId uint32, luacBase64 string) {
	logger.Debug("xlua debug, uid: %v, luac: %v", userId, luacBase64)
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 只有在线玩家主动开启之后才能发送
	if !player.XLuaDebug {
		logger.Error("player xlua debug not enable, uid: %v", userId)
		return
	}
	luac, err := base64.StdEncoding.DecodeString(luacBase64)
	if err != nil {
		logger.Error("decode luac error: %v", err)
		return
	}
	GAME_MANAGER.SendMsg(cmd.WindSeedClientNotify, player.PlayerID, 0, &proto.WindSeedClientNotify{
		Notify: &proto.WindSeedClientNotify_AreaNotify_{
			AreaNotify: &proto.WindSeedClientNotify_AreaNotify{
				AreaCode: luac,
				AreaId:   1,
				AreaType: 1,
			},
		},
	})
}

func (g *GMCmd) PlayAudio() {
	PlayAudio()
}

func (g *GMCmd) UpdateFrame(rgb bool) {
	UpdateFrame(rgb)
}
