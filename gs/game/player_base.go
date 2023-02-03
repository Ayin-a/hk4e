package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// AddUserPlayerExp 基于玩家冒险阅历
func (g *GameManager) AddUserPlayerExp(userId uint32, expCount uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 玩家增加冒险阅历
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_EXP] += expCount
	// 玩家升级
	for {
		playerLevel := player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]
		// 读取玩家等级配置表
		playerLevelConfig, ok := gdconf.CONF.PlayerLevelDataMap[int32(playerLevel)]
		if !ok {
			// 获取不到代表已经到达最大等级
			break
		}
		// 玩家冒险阅历不足则跳出循环
		if player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_EXP] < uint32(playerLevelConfig.Exp) {
			break
		}
		// 玩家增加冒险等阶
		player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]++
		player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_EXP] -= uint32(playerLevelConfig.Exp)

		// 更新玩家属性
		playerPropNotify := &proto.PlayerPropNotify{
			PropMap: make(map[uint32]*proto.PropValue),
		}
		playerPropNotify.PropMap[uint32(constant.PlayerPropertyConst.PROP_PLAYER_LEVEL)] = &proto.PropValue{
			Type: uint32(constant.PlayerPropertyConst.PROP_PLAYER_LEVEL),
			Val:  int64(player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]),
			Value: &proto.PropValue_Ival{
				Ival: int64(player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]),
			},
		}
		playerPropNotify.PropMap[uint32(constant.PlayerPropertyConst.PROP_PLAYER_EXP)] = &proto.PropValue{
			Type: uint32(constant.PlayerPropertyConst.PROP_PLAYER_EXP),
			Val:  int64(player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_EXP]),
			Value: &proto.PropValue_Ival{
				Ival: int64(player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_EXP]),
			},
		}
		g.SendMsg(cmd.PlayerPropNotify, userId, player.ClientSeq, playerPropNotify)
	}
}
