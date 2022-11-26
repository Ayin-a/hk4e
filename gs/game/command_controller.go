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
		"===== 帮助 / Help =====\n"+
			"传送: /tp {-u [UID]} {-s [场景ID]} -x [坐标X] -y [坐标Y] -z [坐标Z]\n",
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
	c.SendMessage(player, "权限修改完毕, 现在你是GM啦 %v", cmd.Args)
}

// TeleportCommand 传送玩家命令
// tp {-u [userId]} {-s [sceneId]} -x [posX] -y [posY] -z [posZ]
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
		c.SendMessage(player, "参数不足, 正确用法: /%v {-u [UID]} {-s [场景ID]} -x [坐标X] -y [坐标Y] -z [坐标Z]。", cmd.Name)
		return
	}

	// 初始值
	target := player
	sceneId := target.SceneId
	pos := &model.Vector{}

	// 选择每个参数
	for k, v := range cmd.Args {
		var err error

		switch k {
		case "u":
			var t uint64
			if t, err = strconv.ParseUint(v, 10, 32); err != nil {
				// 判断目标用户是否在线
				if user := game.userManager.GetOnlineUser(uint32(t)); user != nil {
					target = user
					sceneId = target.SceneId
				} else {
					c.SendMessage(player, "目标玩家不在线, UID: %v。", v)
					return
				}
			}
		case "s":
			var s uint64
			if s, err = strconv.ParseUint(v, 10, 32); err == nil {
				sceneId = uint32(s)
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
			c.SendMessage("参数 -%v 有误, 类型错误。", k)
			return
		}
	}

	// 传送玩家
	game.TeleportPlayer(target, sceneId, pos)

	// 发送消息给执行者
	c.SendMessage(player, "已将玩家 UID: %v 传送至 场景: %v X: %v Y: %v Z:%v。", target.PlayerID, sceneId, pos.X, pos.Y, pos.Z)
}
