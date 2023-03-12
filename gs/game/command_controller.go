package game

import (
	"strconv"
	"strings"

	"hk4e/gdconf"

	"hk4e/gs/model"
)

// HelpCommand 帮助命令
func (c *CommandManager) HelpCommand(cmd *CommandMessage) {
	c.SendMessage(cmd.Executor,
		"========== 帮助 / Help ==========\n\n"+
			"传送：tp [--u <UID>] [--s <场景ID>] {--t <目标UID> | --x <坐标X> | --y <坐标Y> | --z <坐标Z>}\n\n"+
			"给予：give [--u <UID>] [--c <数量>] --i <ID / 物品 / 武器 / 圣遗物 / 角色 / 时装 / 风之翼 / 全部>\n",
	)
}

// TeleportCommand 传送玩家命令
// tp [--u <uid>] [--s <sceneId>] {--t <targetUid> --x <posX> | --y <posY> | --z <posZ>}
func (c *CommandManager) TeleportCommand(cmd *CommandMessage) {
	// 执行者如果不是玩家则必须输入UID
	player, ok := cmd.Executor.(*model.Player)
	if !ok && cmd.Args["u"] == "" {
		c.SendMessage(cmd.Executor, "你不是玩家请指定UID。")
		return
	}

	// 判断是否填写必备参数
	// 目前传送的必备参数是任意包含一个就行
	if cmd.Args["t"] == "" && cmd.Args["x"] == "" && cmd.Args["y"] == "" && cmd.Args["z"] == "" {
		c.SendMessage(cmd.Executor, "参数不足，正确用法：%v [--u <UID>] [--s <场景ID>] {--t <目标UID> | --x <坐标X> | --y <坐标Y> | --z <坐标Z>}", cmd.Name)
		return
	}
	// 输入了目标UID则不能指定坐标或场景ID
	if cmd.Args["t"] != "" && (cmd.Args["x"] != "" || cmd.Args["y"] != "" || cmd.Args["z"] != "" || cmd.Args["s"] != "") {
		c.SendMessage(cmd.Executor, "你已指定目标玩家，无法指定传送位置。")
		return
	}

	// 初始值
	var target *model.Player  // 目标
	targetUid := uint32(0)    // 目标玩家uid
	sceneId := player.SceneId // 场景Id
	pos := &model.Vector{
		X: player.Pos.X,
		Y: player.Pos.Y,
		Z: player.Pos.Z,
	} // 坐标初始值为玩家当前所在位置

	// 选择每个参数
	for k, v := range cmd.Args {
		var err error

		switch k {
		case "u":
			var uid uint64
			if uid, err = strconv.ParseUint(v, 10, 32); err == nil {
				// 判断目标用户是否在线
				if user := USER_MANAGER.GetOnlineUser(uint32(uid)); user != nil {
					player = user
					// 防止覆盖用户指定过的sceneId
					if player.SceneId != sceneId {
						sceneId = player.SceneId
					}
				} else {
					c.SendMessage(cmd.Executor, "玩家不在线，UID：%v。", v)
					return
				}
			}
		case "s":
			var sid uint64
			if sid, err = strconv.ParseUint(v, 10, 32); err == nil {
				sceneId = uint32(sid)
			}
		case "t":
			var uid uint64
			if uid, err = strconv.ParseUint(v, 10, 32); err == nil {
				// 判断目标用户是否在线
				user := USER_MANAGER.GetOnlineUser(uint32(uid))
				if user == nil {
					// 目标玩家属于非本地玩家
					if !USER_MANAGER.GetRemoteUserOnlineState(uint32(uid)) {
						// 全服不存在该在线玩家
						c.SendMessage(cmd.Executor, "目标玩家不在线，UID：%v。", v)
						return
					}
				}
				target = user
				targetUid = uint32(uid)
			}
		case "x":
			// 玩家此时的位置X
			var nowX float64
			// 如果以 ~ 开头则 此时位置加 ~ 后的数
			if strings.HasPrefix(v, "~") {
				v = v[1:]           // 去除 ~
				nowX = player.Pos.X // 先记录
			}
			// 为空代表用户只输入 ~ 获取为玩家当前位置
			if v != "" {
				var x float64
				if x, err = strconv.ParseFloat(v, 64); err == nil {
					pos.X = x + nowX // 如果不以 ~ 开头则加 0
				}
			}
		case "y":
			// 玩家此时的位置Z
			var nowY float64
			// 如果以 ~ 开头则 此时位置加 ~ 后的数
			if strings.HasPrefix(v, "~") {
				v = v[1:]           // 去除 ~
				nowY = player.Pos.Y // 先记录
			}
			// 为空代表用户只输入 ~ 获取为玩家当前位置
			if v != "" {
				var y float64
				if y, err = strconv.ParseFloat(v, 64); err == nil {
					pos.Y = y + nowY
				}
			}
		case "z":
			// 玩家此时的位置Z
			var nowZ float64
			// 如果以 ~ 开头则 此时位置加 ~ 后的数
			if strings.HasPrefix(v, "~") {
				v = v[1:]           // 去除 ~
				nowZ = player.Pos.Z // 先记录
			}
			// 为空代表用户只输入 ~ 获取为玩家当前位置
			if v != "" {
				var z float64
				if z, err = strconv.ParseFloat(v, 64); err == nil {
					pos.Z = z + nowZ
				}
			}
		default:
			c.SendMessage(cmd.Executor, "参数 --%v 冗余。", k)
			return
		}

		// 解析错误的话应该是参数类型问题
		if err != nil {
			c.SendMessage(cmd.Executor, "参数 --%v 有误，类型错误。", k)
			return
		}
	}

	// 玩家是否指定目标UID
	if cmd.Args["t"] != "" {
		// 如果玩家不与目标玩家同一世界或不同服务器
		if target == nil || player.WorldId != target.WorldId {
			// 请求进入目标玩家世界
			GAME_MANAGER.UserApplyEnterWorld(player, targetUid)
			// 发送消息给执行者
			c.SendMessage(cmd.Executor, "已将玩家 UID：%v 请求加入目标玩家 UID：%v 的世界。", player.PlayerID, targetUid)
		} else {
			// 传送玩家至目标玩家的位置
			c.GMTeleportPlayer(player.PlayerID, target.SceneId, target.Pos.X, target.Pos.Y, target.Pos.Z)
			// 发送消息给执行者
			c.SendMessage(cmd.Executor, "已将玩家 UID：%v 传送至 目标玩家 UID：%v。", player.PlayerID, targetUid)
		}
	} else {
		// 传送玩家至指定的位置
		c.GMTeleportPlayer(player.PlayerID, sceneId, pos.X, pos.Y, pos.Z)
		// 发送消息给执行者
		c.SendMessage(cmd.Executor, "已将玩家 UID：%v 传送至 场景：%v, X：%.2f, Y：%.2f, Z：%.2f。", player.PlayerID, sceneId, pos.X, pos.Y, pos.Z)
	}

}

// GiveCommand 给予物品命令
// give [--u <userId>] [--c <count>] --i <id/item/weapon/reliquary/avatar/costume/flycloak/all>
func (c *CommandManager) GiveCommand(cmd *CommandMessage) {
	// 执行者如果不是玩家则必须输入UID
	player, ok := cmd.Executor.(*model.Player)
	if !ok && cmd.Args["u"] == "" {
		c.SendMessage(cmd.Executor, "你不是玩家请指定UID。")
		return
	}

	// 判断是否填写必备参数
	if cmd.Args["i"] == "" {
		c.SendMessage(cmd.Executor, "参数不足，正确用法：%v [--u <UID>] [--c <数量>] --i <ID / 物品 / 武器 / 圣遗物 / 角色 / 时装 / 风之翼 / 全部>。", cmd.Name)
		return
	}

	// 初始值
	count := uint32(1) // 数量
	id := uint32(0)    // id
	// 给予物品的模式
	// once 单个 / all 所有物品
	// item 物品 / weapon 武器
	mode := "once"

	// 选择每个参数
	for k, v := range cmd.Args {
		var err error

		switch k {
		case "u":
			var uid uint64
			if uid, err = strconv.ParseUint(v, 10, 32); err == nil {
				// 判断目标用户是否在线
				if user := USER_MANAGER.GetOnlineUser(uint32(uid)); user != nil {
					player = user
				} else {
					c.SendMessage(cmd.Executor, "目标玩家不在线，UID：%v。", v)
					return
				}
			}
		case "c":
			var cnt uint64
			if cnt, err = strconv.ParseUint(v, 10, 32); err == nil {
				count = uint32(cnt)
			}
		case "i":
			switch v {
			case "item", "物品", "weapon", "武器", "reliquary", "圣遗物", "avatar", "角色", "costume", "时装", "flycloak", "风之翼", "all", "全部":
				// 将模式修改为参数的值
				mode = v
			default:
				var tempId uint64
				if tempId, err = strconv.ParseUint(v, 10, 32); err != nil {
					c.SendMessage(cmd.Executor, "参数 --%v 有误，允许内容：<ID / 物品 / 武器 / 圣遗物 / 角色 / 时装 / 风之翼 / 内容>。", k)
					return
				}
				id = uint32(tempId)
			}
		default:
			c.SendMessage(cmd.Executor, "参数 --%v 冗余。", k)
			return
		}

		// 解析错误的话应该是参数类型问题
		if err != nil {
			c.SendMessage(cmd.Executor, "参数 --%v 有误，类型错误。", k)
			return
		}
	}

	switch mode {
	case "once":
		// 判断是否为物品
		_, ok := GAME_MANAGER.GetAllItemDataConfig()[int32(id)]
		if ok {
			// 给予玩家物品
			c.GMAddUserItem(player.PlayerID, id, count)
			c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 物品ID：%v 数量：%v。", player.PlayerID, id, count)
			return
		}
		// 判断是否为武器
		_, ok = GAME_MANAGER.GetAllWeaponDataConfig()[int32(id)]
		if ok {
			// 给予玩家武器
			c.GMAddUserWeapon(player.PlayerID, id, count)
			c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 武器 物品ID：%v 数量：%v。", player.PlayerID, id, count)
			return

		}
		// 判断是否为圣遗物
		_, ok = GAME_MANAGER.GetAllReliquaryDataConfig()[int32(id)]
		if ok {
			// 给予玩家圣遗物
			c.GMAddUserReliquary(player.PlayerID, id, count)
			c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 圣遗物 物品ID：%v 数量：%v。", player.PlayerID, id, count)
			return

		}
		// 判断是否为角色
		_, ok = GAME_MANAGER.GetAllAvatarDataConfig()[int32(id)]
		if ok {
			// 给予玩家角色
			c.GMAddUserAvatar(player.PlayerID, id)
			c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 角色ID：%v 数量：%v。", player.PlayerID, id, count)
			return
		}
		// 判断是否为时装
		if gdconf.GetAvatarCostumeDataById(int32(id)) != nil {
			// 给予玩家角色
			c.GMAddUserCostume(player.PlayerID, id)
			c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 时装ID：%v 数量：%v。", player.PlayerID, id, count)
			return
		}
		// 判断是否为风之翼
		if gdconf.GetAvatarFlycloakDataById(int32(id)) != nil {
			// 给予玩家角色
			c.GMAddUserFlycloak(player.PlayerID, id)
			c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 风之翼ID：%v 数量：%v。", player.PlayerID, id, count)
			return
		}
		// 都执行到这里那肯定是都不匹配
		c.SendMessage(cmd.Executor, "ID：%v 不存在。", id)
	case "item", "物品":
		// 给予玩家所有物品
		c.GMAddUserAllItem(player.PlayerID, count)
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有物品 数量：%v。", player.PlayerID, count)
	case "weapon", "武器":
		// 给予玩家所有武器
		c.GMAddUserAllWeapon(player.PlayerID, count)
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有武器 数量：%v。", player.PlayerID, count)
	case "reliquary", "圣遗物":
		// 给予玩家所有圣遗物
		c.GMAddUserAllReliquary(player.PlayerID, count)
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有圣遗物 数量：%v。", player.PlayerID, count)
	case "avatar", "角色":
		// 给予玩家所有角色
		c.GMAddUserAllAvatar(player.PlayerID)
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有角色。", player.PlayerID)
	case "costume", "时装":
		// 给予玩家所有角色
		c.GMAddUserAllCostume(player.PlayerID)
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有时装。", player.PlayerID)
	case "flycloak", "风之翼":
		// 给予玩家所有角色
		c.GMAddUserAllFlycloak(player.PlayerID)
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有风之翼。", player.PlayerID)
	case "all", "全部":
		// 给予玩家所有内容
		c.GMAddUserAllEvery(player.PlayerID, count, count) // TODO 武器额外获取数量
		c.SendMessage(cmd.Executor, "已给予玩家 UID：%v, 所有内容。", player.PlayerID)
	}
}

// GcgCommand Gcg测试命令
func (c *CommandManager) GcgCommand(cmd *CommandMessage) {
	player := cmd.Executor.(*model.Player)
	GAME_MANAGER.GCGStartChallenge(player)
	c.SendMessage(cmd.Executor, "收到命令")
}

// XLuaDebugCommand 主动开启客户端XLUA调试命令
func (c *CommandManager) XLuaDebugCommand(cmd *CommandMessage) {
	player := cmd.Executor.(*model.Player)
	player.XLuaDebug = true
	c.SendMessage(cmd.Executor, "XLua Debug Enable")
}
