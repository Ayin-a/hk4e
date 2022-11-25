package game

import (
	"fmt"
	"strings"

	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

// CommandPerm 命令权限等级
// 0 为普通玩家 数越大权限越大
type CommandPerm uint8

// CommandFunc 命令执行函数
type CommandFunc func(*Command)

// Command 命令结构体
// 给下层执行命令时提供数据
type Command struct {
	Executor *model.Player // 执行者
	Text     string        // 命令原始文本
	Name     string        // 命令前缀
	Args     []string      // 命令参数
}

// CommandManager 命令管理器
type CommandManager struct {
	system            *model.Player          // 机器人 目前负责收发消息 以及 大世界
	commandFuncRouter map[string]CommandFunc // 记录命令处理函数
	commandPermMap    map[string]CommandPerm // 记录命令对应的权限
	commandTextInput  chan *Command          // 传输要处理的命令文本

	gameManager *GameManager
}

// NewCommandManager 新建命令管理器
func NewCommandManager(g *GameManager) *CommandManager {
	r := new(CommandManager)

	// 创建一个公共的开放世界的AI
	g.OnRegOk(false, &proto.SetPlayerBornDataReq{AvatarId: 10000007, NickName: "System"}, 1, 0)
	r.system = g.userManager.GetOnlineUser(1)
	// 开放大世界
	r.system.SceneLoadState = model.SceneEnterDone
	r.system.DbState = model.DbNormal
	g.worldManager.InitBigWorld(r.system)

	// 初始化
	r.commandTextInput = make(chan *Command, 1000)
	r.InitRouter() // 初始化路由

	r.gameManager = g
	return r
}

// InitRouter 初始化命令路由
func (c *CommandManager) InitRouter() {
	c.commandFuncRouter = make(map[string]CommandFunc)
	c.commandPermMap = make(map[string]CommandPerm)
	{
		// 权限等级 0: 普通玩家
		c.RegisterRouter("help", 0, c.HelpCommand)
		c.RegisterRouter("op", 0, c.OpCommand)
	}
	// GM命令
	{
		// 权限等级 1: GM 1级
		c.RegisterRouter("nmsl", 1, c.HelpCommand)
	}
}

// RegisterRouter 注册命令路由
func (c *CommandManager) RegisterRouter(cmdName string, cmdPerm CommandPerm, cmdFunc CommandFunc) {
	// 命令名统一转为小写
	cmdName = strings.ToLower(cmdName)
	// 记录命令
	c.commandFuncRouter[cmdName] = cmdFunc
	c.commandPermMap[cmdName] = cmdPerm
}

// InputCommand 输入要处理的命令
func (c *CommandManager) InputCommand(executor *model.Player, text string) {
	// 机器人不会读命令所以写到了 PrivateChatReq

	// 确保消息文本为 / 开头
	// 如果不为这个开头那接下来就毫无意义
	if strings.HasPrefix(text, "/") {

		// 输入的命令将在其他协程中处理
		c.commandTextInput <- c.NewCommand(executor, text)
	}
}

// GetFriendList 获取包含系统的玩家好友列表
func (c *CommandManager) GetFriendList(friendList map[uint32]bool) map[uint32]bool {
	// 可能还有更好的方法实现这功能
	// 但我想不出来awa

	// 临时好友列表
	tempFriendList := make(map[uint32]bool, len(friendList))
	// 复制玩家的好友列表
	for userId, b := range friendList {
		tempFriendList[userId] = b
	}
	// 添加系统
	tempFriendList[c.system.PlayerID] = true

	return tempFriendList
}

// NewCommand 创建命令结构
func (c *CommandManager) NewCommand(executor *model.Player, text string) *Command {
	// 将开头的 / 去掉 并 分割出命令的每个参数
	// 不区分命令的大小写 统一转为小写
	cmdSplit := strings.Split(strings.ToLower(text[1:]), " ")

	var cmdName string   // 命令名
	var cmdArgs []string // 命令参数

	// 分割出来啥也没有可能是个空的字符串
	// 此时将会返回的命令名和命令参数都为空
	if len(cmdSplit) != 0 {
		// 首个参数必是命令名
		cmdName = cmdSplit[0]
		// 命令名后当然是命令的参数喽
		cmdArgs = cmdSplit[1:]
	}

	return &Command{executor, text, cmdName, cmdArgs}
}

// ExecCommand 执行命令
func (c *CommandManager) ExecCommand(cmd *Command) {
	player := cmd.Executor

	// 判断命令是否注册
	cmdFunc, ok := c.commandFuncRouter[cmd.Name]
	if !ok {
		// 玩家可能会执行一些没有的命令仅做调试输出
		logger.LOG.Debug("exec command not exist, name: %v", cmd.Name)
		c.gameManager.SendPrivateChat(c.system, player, "命令不存在，输入 /help 查看帮助。")
		return
	}
	// 判断命令权限是否注册
	cmdPerm, ok := c.commandPermMap[cmd.Name]
	if !ok {
		// 一般命令权限都会注册 没注册则报error错误
		logger.LOG.Error("exec command permission not exist, name: %v", cmd.Name)
		return
	}

	// 判断玩家的权限是否符合要求
	if player.IsGM < uint8(cmdPerm) {
		logger.LOG.Debug("exec command permission denied, uid: %v, isGM: %v", player.PlayerID, player.IsGM)
		c.gameManager.SendPrivateChat(c.system, player, fmt.Sprintf("权限不足，该命令需要%v级权限。\n你目前的权限等级：%v", cmdPerm, player.IsGM))
		return
	}

	logger.LOG.Debug("command start, uid: %v, text: %v, name: %v, args: %v", cmd.Executor.PlayerID, cmd.Text, cmd.Name, cmd.Args)
	cmdFunc(cmd) // 执行命令
	logger.LOG.Debug("command done, uid: %v, text: %v, name: %v, args: %v", cmd.Executor.PlayerID, cmd.Text, cmd.Name, cmd.Args)
}
