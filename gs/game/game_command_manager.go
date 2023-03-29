package game

import (
	"fmt"
	"reflect"
	"strconv"
	"strings"

	"hk4e/gs/model"
	"hk4e/pkg/logger"
)

// GM命令管理器模块

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
	FuncName string            // 函数名
	Param    []string          // 函数参数列表
}

// CommandManager 命令管理器
type CommandManager struct {
	system            *model.Player          // GM指令聊天消息机器人
	commandFuncRouter map[string]CommandFunc // 记录命令处理函数
	commandPermMap    map[string]CommandPerm // 记录命令对应的权限
	commandTextInput  chan *CommandMessage   // 传输要处理的命令文本
	gmCmd             *GMCmd
	gmCmdRefValue     reflect.Value
}

// NewCommandManager 新建命令管理器
func NewCommandManager() *CommandManager {
	r := new(CommandManager)
	// 初始化
	r.commandTextInput = make(chan *CommandMessage, 1000)
	r.InitRouter() // 初始化路由
	r.gmCmd = new(GMCmd)
	r.gmCmdRefValue = reflect.ValueOf(r.gmCmd)
	return r
}

func (c *CommandManager) GetCommandTextInput() chan *CommandMessage {
	return c.commandTextInput
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
		c.RegisterRouter(CommandPermNormal, c.TeleportCommand, "teleport", "tp")
		c.RegisterRouter(CommandPermNormal, c.GiveCommand, "give", "item")
		// c.RegisterRouter(CommandPermNormal, c.GcgCommand, "gcg")
		c.RegisterRouter(CommandPermNormal, c.XLuaDebugCommand, "xluadebug")
	}
	// GM命令
	{
		// 权限等级 1: GM 1级
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

// PlayerInputCommand 玩家输入要处理的命令
func (c *CommandManager) PlayerInputCommand(player *model.Player, targetUid uint32, text string) {
	// 机器人不会读命令所以写到了 PrivateChatReq

	// 确保私聊的目标是处理命令的机器人
	if targetUid != c.system.PlayerID {
		return
	}
	// 输入命令进行处理
	c.InputCommand(player, text)
}

// InputCommand 输入要处理的命令
func (c *CommandManager) InputCommand(executor any, text string) {
	// 留着这个主要还是为了万一以后要对接要别的地方
	logger.Debug("input command, uid: %v text: %v", c.GetExecutorId(executor), text)

	// 输入的命令将在其他协程中处理
	c.commandTextInput <- &CommandMessage{Executor: executor, Text: text}
}

func (c *CommandManager) CallGMCmd(funcName string, paramList []string) bool {
	fn := c.gmCmdRefValue.MethodByName(funcName)
	if !fn.IsValid() {
		return false
	}
	if fn.Type().NumIn() != len(paramList) {
		return false
	}
	in := make([]reflect.Value, fn.Type().NumIn())
	for i := 0; i < fn.Type().NumIn(); i++ {
		kind := fn.Type().In(i).Kind()
		param := paramList[i]
		var value reflect.Value
		switch kind {
		case reflect.Int:
			val, err := strconv.ParseInt(param, 10, 64)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(int(val))
		case reflect.Uint:
			val, err := strconv.ParseUint(param, 10, 64)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(uint(val))
		case reflect.Int8:
			val, err := strconv.ParseInt(param, 10, 8)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(int8(val))
		case reflect.Uint8:
			val, err := strconv.ParseUint(param, 10, 8)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(uint8(val))
		case reflect.Int16:
			val, err := strconv.ParseInt(param, 10, 16)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(int16(val))
		case reflect.Uint16:
			val, err := strconv.ParseUint(param, 10, 16)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(uint16(val))
		case reflect.Int32:
			val, err := strconv.ParseInt(param, 10, 32)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(int32(val))
		case reflect.Uint32:
			val, err := strconv.ParseUint(param, 10, 32)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(uint32(val))
		case reflect.Int64:
			val, err := strconv.ParseInt(param, 10, 64)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(val)
		case reflect.Uint64:
			val, err := strconv.ParseUint(param, 10, 64)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(val)
		case reflect.Float32:
			val, err := strconv.ParseFloat(param, 32)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(float32(val))
		case reflect.Float64:
			val, err := strconv.ParseFloat(param, 64)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(val)
		case reflect.Bool:
			val, err := strconv.ParseBool(param)
			if err != nil {
				return false
			}
			value = reflect.ValueOf(val)
		case reflect.String:
			value = reflect.ValueOf(param)
		default:
			return false
		}
		in[i] = value
	}
	fn.Call(in)
	return true
}

// HandleCommand 处理命令
// 主协程接收到命令消息后执行
func (c *CommandManager) HandleCommand(cmd *CommandMessage) {
	// 直接执行GM函数
	if cmd.FuncName != "" {
		logger.Info("run gm cmd, FuncName: %v, Param: %v", cmd.FuncName, cmd.Param)
		// 反射调用command_gm.go中的函数并反射解析传入参数类型
		c.CallGMCmd(cmd.FuncName, cmd.Param)
		return
	}

	executor := cmd.Executor

	// 分割出命令的每个参数
	// 不区分命令的大小写 统一转为小写
	cmdSplit := strings.Split(strings.ToLower(cmd.Text), " --")

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
			c.SendMessage(executor, "格式错误，用法: %v --[参数名] [参数]。", cmd.Name)
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
		c.SendMessage(executor, "命令不存在，输入 help 查看帮助。")
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
	if ok && player.CmdPerm < uint8(cmdPerm) {
		logger.Debug("exec command permission denied, uid: %v, CmdPerm: %v", player.PlayerID, player.CmdPerm)
		c.SendMessage(player, "权限不足，该命令需要%v级权限。\n你目前的权限等级：%v", cmdPerm, player.CmdPerm)
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
		GAME.SendPrivateChat(c.system, player.PlayerID, fmt.Sprintf(msg, param...))
	// case string:
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
	// case string:
	// GM接口等
	// return 123
	default:
		// 无效的类型报错
		logger.Error("command executor type error, type: %T", executor)
	}
	return 0
}
