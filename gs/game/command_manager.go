package game

import (
	"fmt"
	"strings"

	"hk4e/gs/model"
	"hk4e/pkg/logger"
)

// 命令管理器

// CommandPerm 命令权限等级
// 0 为普通玩家 数越大权限越大
type CommandPerm uint8

const (
	CommandPermNormal = CommandPerm(iota) // 普通玩家
	CommandPermGM                         // 管理员
)

// CommandFunc 命令执行函数
type CommandFunc func(*CommandMessage)

// CommandMessage 命令消息
// 给下层执行命令时提供数据
type CommandMessage struct {
	// executor 玩家为 model.Player 类型
	// GM等为 string 类型
	Executor any               // 执行者
	Text     string            // 命令原始文本
	Name     string            // 命令前缀
	Args     map[string]string // 命令参数
}

// CommandManager 命令管理器
type CommandManager struct {
	system            *model.Player          // GM指令聊天消息机器人
	commandFuncRouter map[string]CommandFunc // 记录命令处理函数
	commandPermMap    map[string]CommandPerm // 记录命令对应的权限
	commandTextInput  chan *CommandMessage   // 传输要处理的命令文本
}

// NewCommandManager 新建命令管理器
func NewCommandManager() *CommandManager {
	r := new(CommandManager)
	// 初始化
	r.commandTextInput = make(chan *CommandMessage, 1000)
	r.InitRouter() // 初始化路由
	return r
}

// SetSystem 设置GM指令聊天消息机器人
func (c *CommandManager) SetSystem(system *model.Player) {
	c.system = system
}

// InitRouter 初始化命令路由
func (c *CommandManager) InitRouter() {
	c.commandFuncRouter = make(map[string]CommandFunc)
	c.commandPermMap = make(map[string]CommandPerm)
	{
		// 权限等级 0: 普通玩家
		c.RegisterRouter(CommandPermNormal, c.HelpCommand, "help")
		c.RegisterRouter(CommandPermNormal, c.OpCommand, "op")
		c.RegisterRouter(CommandPermNormal, c.TeleportCommand, "teleport", "tp")
		c.RegisterRouter(CommandPermNormal, c.GiveCommand, "give", "item")
		// c.RegisterRouter(CommandPermNormal, c.GcgCommand, "gcg")
	}
	// GM命令
	{
		// 权限等级 1: GM 1级
		c.RegisterRouter(CommandPermGM, c.ReloadConfigCommand, "reloadconfig")
	}
}

// RegisterRouter 注册命令路由
func (c *CommandManager) RegisterRouter(cmdPerm CommandPerm, cmdFunc CommandFunc, cmdName ...string) {
	// 支持一个命令拥有多个别名
	for _, s := range cmdName {
		// 命令名统一转为小写
		s = strings.ToLower(s)
		// 如果命令已注册则报错 后者覆盖前者
		if c.IsCommand(s) {
			logger.Error("register command repeat, name: %v", s)
		}
		// 记录命令
		c.commandFuncRouter[s] = cmdFunc
		c.commandPermMap[s] = cmdPerm
	}
}

// IsCommand 命令是否已被注册
func (c *CommandManager) IsCommand(cmdName string) bool {
	_, cmdFuncOK := c.commandFuncRouter[cmdName]
	_, cmdPermOK := c.commandPermMap[cmdName]
	// 判断命令函数和命令权限是否已注册
	if cmdFuncOK && cmdPermOK {
		return true
	}
	return false
}

// InputCommand 输入要处理的命令
func (c *CommandManager) InputCommand(executor any, text string) {
	// 机器人不会读命令所以写到了 PrivateChatReq

	// 确保消息文本为 / 开头
	// 如果不为这个开头那接下来就毫无意义
	if strings.HasPrefix(text, "/") {
		logger.Debug("input command, uid: %v text: %v", c.GetExecutorId(executor), text)

		// 输入的命令将在其他协程中处理
		c.commandTextInput <- &CommandMessage{Executor: executor, Text: text}
	}
}

// HandleCommand 处理命令
// 主协程接收到命令消息后执行
func (c *CommandManager) HandleCommand(cmd *CommandMessage) {
	executor := cmd.Executor

	// 将开头的 / 去掉 并 分割出命令的每个参数
	// 不区分命令的大小写 统一转为小写
	cmdSplit := strings.Split(strings.ToLower(cmd.Text[1:]), " -")

	// 分割出来啥也没有可能是个空的字符串
	// 此时将会返回的命令名和命令参数都为空
	if len(cmdSplit) == 0 {
		return
	}

	// 命令参数 初始化
	cmd.Args = make(map[string]string, len(cmdSplit)-1)

	// 首个参数必是命令名
	cmd.Name = cmdSplit[0]
	// 命令名后当然是命令的参数喽
	argSplit := cmdSplit[1:]

	// 我们要将命令的参数转换为键值对
	// 每个参数之间会有个空格分割
	for _, s := range argSplit {
		cmdArg := strings.Split(s, " ")

		// 分割出来的参数只有一个那肯定不是键值对
		if len(cmdArg) < 2 {
			c.SendMessage(executor, "格式错误，用法: /%v -[参数名] [参数]。", cmd.Name)
			return
		}

		argKey := cmdArg[0]   // 参数的键
		argValue := cmdArg[1] // 参数的值

		// 记录命令的参数
		cmd.Args[argKey] = argValue
	}

	// 执行命令
	c.ExecCommand(cmd)
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

// ExecCommand 执行命令
func (c *CommandManager) ExecCommand(cmd *CommandMessage) {
	executor := cmd.Executor

	// 判断命令是否注册
	cmdFunc, ok := c.commandFuncRouter[cmd.Name]
	if !ok {
		// 玩家可能会执行一些没有的命令仅做调试输出
		c.SendMessage(executor, "命令不存在，输入 /help 查看帮助。")
		return
	}
	// 判断命令权限是否注册
	cmdPerm, ok := c.commandPermMap[cmd.Name]
	if !ok {
		// 一般命令权限都会注册 没注册则报error错误
		logger.Error("command exec permission not exist, name: %v", cmd.Name)
		return
	}

	// 判断玩家的权限是否符合要求
	player, ok := executor.(*model.Player)
	if ok && player.IsGM < uint8(cmdPerm) {
		logger.Debug("exec command permission denied, uid: %v, isGM: %v", player.PlayerID, player.IsGM)
		c.SendMessage(player, "权限不足，该命令需要%v级权限。\n你目前的权限等级：%v", cmdPerm, player.IsGM)
		return
	}

	cmdFunc(cmd) // 执行命令
}

// SendMessage 发送消息
func (c *CommandManager) SendMessage(executor any, msg string, param ...any) {
	// 根据相应的类型发送消息
	switch executor.(type) {
	case *model.Player:
		// 玩家类型
		player := executor.(*model.Player)
		GAME_MANAGER.SendPrivateChat(c.system, player.PlayerID, fmt.Sprintf(msg, param...))
	case string:
		// GM接口等
		// str := executor.(string)
	default:
		// 无效的类型报错
		logger.Error("command executor type error, type: %T", executor)
	}
}

// GetExecutorId 获取执行者Id
func (c *CommandManager) GetExecutorId(executor any) uint32 {
	// 根据相应的类型获取Id
	switch executor.(type) {
	case *model.Player:
		// 玩家类型
		player := executor.(*model.Player)
		return player.PlayerID
	case string:
		// GM接口等
		// return 123
	default:
		// 无效的类型报错
		logger.Error("command executor type error, type: %T", executor)
	}
	return 0
}
