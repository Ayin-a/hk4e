package game

import (
	"hk4e/gs/model"
	"strconv"
	"strings"
)

// HelpCommand 帮助命令
func (c *CommandManager) HelpCommand(cmd *CommandMessage) {
	executor := cmd.Executor

	c.SendMessage(executor,
		"========== 帮助 / Help ==========\n\n"+
			"传送：/tp [-u <UID>] [-s <场景ID>] -x <坐标X> -y <坐标Y> -z <坐标Z>\n\n"+
			"给予：/give [-u <UID>] [-c <数量>] -i <物品ID|武器ID|角色ID/item/weapon/avatar/all>\n",
	)
}

// OpCommand 给予权限命令
func (c *CommandManager) OpCommand(cmd *CommandMessage) {
	player, ok := cmd.Executor.(*model.Player)
	if !ok {
		c.SendMessage(cmd.Executor, "只有玩家才能执行此命令。")
		return
	}

	player.IsGM = 1
	c.SendMessage(player, "权限修改完毕，现在你是GM啦 %v", cmd.Args)
}

// TeleportCommand 传送玩家命令
// tp [-u <userId>] [-s <sceneId>] -x <posX> -y <posY> -z <posZ>
func (c *CommandManager) TeleportCommand(cmd *CommandMessage) {
	game := c.gameManager

	// 执行者如果不是玩家则必须输入目标UID
	player, ok := cmd.Executor.(*model.Player)
	if !ok && cmd.Args["u"] == "" {
		c.SendMessage(cmd.Executor, "你不是玩家请指定目标UID。")
		return
	}

	// 判断是否填写必备参数
	if cmd.Args["x"] == "" || cmd.Args["y"] == "" || cmd.Args["z"] == "" {
		c.SendMessage(player, "参数不足，正确用法：/%v [-u <UID>] [-s <场景ID>] -x <坐标X> -y <坐标Y> -z <坐标Z>", cmd.Name)
		return
	}

	// 初始值
	target := player          // 目标
	sceneId := target.SceneId // 场景Id
	pos := &model.Vector{}    // 坐标

	// 选择每个参数
	for k, v := range cmd.Args {
		var err error

		switch k {
		case "u":
			var uid uint64
			if uid, err = strconv.ParseUint(v, 10, 32); err != nil {
				// 判断目标用户是否在线
				if user := game.userManager.GetOnlineUser(uint32(uid)); user != nil {
					target = user
					// 防止覆盖用户指定过的sceneId
					if target.SceneId != sceneId {
						sceneId = target.SceneId
					}
				} else {
					c.SendMessage(player, "目标玩家不在线，UID: %v。", v)
					return
				}
			}
		case "s":
			var sid uint64
			if sid, err = strconv.ParseUint(v, 10, 32); err == nil {
				sceneId = uint32(sid)
			}
		case "x":
			// 玩家此时的位置X
			var nowX float64
			// 如果以 ~ 开头则 此时位置加 ~ 后的数
			if strings.HasPrefix(v, "~") {
				v = v[1:]           // 去除 ~
				nowX = player.Pos.X // 先记录
			}
			var x float64
			if x, err = strconv.ParseFloat(v, 64); err == nil {
				pos.X = x + nowX // 如果不以 ~ 开头则加 0
			}
		case "y":
			// 玩家此时的位置Z
			var nowY float64
			// 如果以 ~ 开头则 此时位置加 ~ 后的数
			if strings.HasPrefix(v, "~") {
				v = v[1:]           // 去除 ~
				nowY = player.Pos.Y // 先记录
			}
			var y float64
			if y, err = strconv.ParseFloat(v, 64); v != "~" && err == nil {
				pos.Y = y + nowY
			}
		case "z":
			// 玩家此时的位置Z
			var nowZ float64
			// 如果以 ~ 开头则 此时位置加 ~ 后的数
			if strings.HasPrefix(v, "~") {
				v = v[1:]           // 去除 ~
				nowZ = player.Pos.Z // 先记录
			}
			var z float64
			if z, err = strconv.ParseFloat(v, 64); v != "~" && err == nil {
				pos.Z = z + nowZ
			}
		default:
			c.SendMessage(player, "参数 -%v 冗余。", k)
			return
		}

		// 解析错误的话应该是参数类型问题
		if err != nil {
			c.SendMessage("参数 -%v 有误，类型错误。", k)
			return
		}
	}

	// 传送玩家
	c.GMTeleportPlayer(target.PlayerID, sceneId, pos.X, pos.Y, pos.Z)

	// 发送消息给执行者
	c.SendMessage(player, "已将玩家 UID：%v 传送至 场景：%v, X：%.2f, Y：%.2f, Z：%.2f。", target.PlayerID, sceneId, pos.X, pos.Y, pos.Z)
}

// GiveCommand 给予物品命令
// give [-u <userId>] [-c <count>] -i <itemId|AvatarId/all>
func (c *CommandManager) GiveCommand(cmd *CommandMessage) {
	game := c.gameManager

	// 执行者如果不是玩家则必须输入目标UID
	player, ok := cmd.Executor.(*model.Player)
	if !ok && cmd.Args["u"] == "" {
		c.SendMessage(cmd.Executor, "你不是玩家请指定目标UID。")
		return
	}

	// 判断是否填写必备参数
	if cmd.Args["i"] == "" {
		c.SendMessage(player, "参数不足，正确用法：/%v [-u <UID>] [-c <数量>] -i <物品ID|武器ID|角色ID/item/weapon/avatar/all>。", cmd.Name)
		return
	}

	// 初始值
	target := player    // 目标
	count := uint32(1)  // 数量
	itemId := uint32(0) // 物品Id
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
			if uid, err = strconv.ParseUint(v, 10, 32); err != nil {
				// 判断目标用户是否在线
				if user := game.userManager.GetOnlineUser(uint32(uid)); user != nil {
					target = user
				} else {
					c.SendMessage(player, "目标玩家不在线，UID: %v。", v)
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
			case "all", "item", "avatar", "weapon":
				// 将模式修改为参数的值
				mode = v
			default:
				var id uint64
				if id, err = strconv.ParseUint(v, 10, 32); err != nil {
					c.SendMessage(player, "参数 -%v 有误，允许内容: <item | weapon | avatar | all>。", k)
					return
				}
				itemId = uint32(id)
			}
		default:
			c.SendMessage(player, "参数 -%v 冗余。", k)
			return
		}

		// 解析错误的话应该是参数类型问题
		if err != nil {
			c.SendMessage("参数 -%v 有误，类型错误。", k)
			return
		}
	}

	switch mode {
	case "once":
		// 判断是否为物品
		_, ok := game.GetAllItemDataConfig()[int32(itemId)]
		if ok {
			// 给予玩家物品
			c.GMAddUserItem(target.PlayerID, itemId, count)
			c.SendMessage(player, "已给予玩家 UID：%v, 物品ID: %v*数量: %v。", target.PlayerID, itemId, count)
			return
		}
		// 判断是否为武器
		_, ok = game.GetAllWeaponDataConfig()[int32(itemId)]
		if ok {
			// 给予玩家武器
			c.GMAddUserWeapon(target.PlayerID, itemId, count)
			c.SendMessage(player, "已给予玩家 UID：%v, 武器ID：%v*数量：%v。", target.PlayerID, itemId, count)
			return

		}
		// 判断是否为角色
		_, ok = game.GetAllAvatarDataConfig()[int32(itemId)]
		if ok {
			// 给予玩家武器
			c.GMAddUserAvatar(target.PlayerID, itemId)
			c.SendMessage(player, "已给予玩家 UID：%v, 角色ID：%v*数量：%v。", target.PlayerID, itemId, count)
			return
		}
		// 都执行到这里那肯定是都不匹配
		c.SendMessage(player, "物品ID：%v 不存在。", itemId)
	case "item":
		// 给予玩家所有物品
		c.GMAddUserAllItem(target.PlayerID, count)
		c.SendMessage(player, "已给予玩家 UID：%v, 所有物品*%v。", target.PlayerID, count)
	case "weapon":
		// 给予玩家所有武器
		c.GMAddUserAllWeapon(target.PlayerID, count)
		c.SendMessage(player, "已给予玩家 UID：%v, 所有武器*%v。", target.PlayerID, count)
	case "avatar":
		// 给予玩家所有角色
		c.GMAddUserAllAvatar(target.PlayerID)
		c.SendMessage(player, "已给予玩家 UID：%v, 所有角色。", target.PlayerID)
	case "all":
		// 给予玩家所有内容
		c.GMAddUserAllEvery(target.PlayerID, count, count) // TODO 武器额外获取数量
		c.SendMessage(player, "已给予玩家 UID：%v, 所有内容。", target.PlayerID)
	}
}
