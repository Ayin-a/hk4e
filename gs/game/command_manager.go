package game

import (
	"hk4e/gs/model"
	"hk4e/logger"
	"hk4e/protocol/proto"
	"strings"
)

type CommandFunc func(string, []string)

type Command struct {
	Name string   // 命令前缀
	Args []string // 命令参数
}

type CommandManager struct {
	system            *model.Player          // 机器人 目前负责收发命令 以及 大世界
	commandFuncRouter map[string]CommandFunc // 记录命令处理函数
	commandTextInput  chan string            // 传输要处理的命令文本

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
	r.commandTextInput = make(chan string, 1000)
	r.InitRouter() // 初始化路由

	// 处理传入的命令
	go r.HandleCommand()

	r.gameManager = g
	return r
}

// InitRouter 初始化命令路由
func (c *CommandManager) InitRouter() {
	c.commandFuncRouter = make(map[string]CommandFunc)
	c.RegisterRouter("awa", c.FuncAwA)
}

// RegisterRouter 注册命令路由
func (c *CommandManager) RegisterRouter(cmdName string, cmdFunc CommandFunc) {
	c.commandFuncRouter[cmdName] = cmdFunc
}

func (c *CommandManager) FuncAwA(cmd string, args []string) {
	logger.LOG.Info("awa命令执行啦, name: %v, args: %v", cmd, args)
}

// InputCommand 输入要处理的命令
func (c *CommandManager) InputCommand(text string) {
	// 机器人不会读命令所以写到了 PrivateChatReq

	// 输入的命令将在其他协程中处理
	c.commandTextInput <- text
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

// HandleCommand 处理命令
func (c *CommandManager) HandleCommand() {
	// 处理传入 commandTextInput 的所有命令文本
	// 为了避免主协程阻塞搞了个channel

	for {
		// 取出要处理的命令文本
		text := <-c.commandTextInput

		// 读取并创建命令
		cmd := c.NewCommand(text)
		if cmd == nil {
			logger.LOG.Error("handle command is nil, text: %v", text)
			continue
		}

		// 执行命令
		c.ExecCommand(cmd)
	}
}

// NewCommand 创建命令结构
func (c *CommandManager) NewCommand(text string) *Command {
	// 命令必须以 / 为开头
	if !strings.HasPrefix(text, "/") {
		return nil
	}
	// 将开头的 / 去掉
	text = text[1:]

	// 分割出命令的每个参数
	cmdSplit := strings.Split(text, " ")

	// 分割出来啥也没有可能是个空的字符串
	// 处理个寂寞直接return
	if len(cmdSplit) == 0 {
		return nil
	}

	// 首个参数必是命令名
	cmdName := cmdSplit[0]
	// 命令名后当然是命令的参数喽
	cmdArgs := cmdSplit[1:]

	return &Command{cmdName, cmdArgs}
}

// ExecCommand 执行命令
func (c *CommandManager) ExecCommand(cmd *Command) {
	// 理论上执行前已经校验过不会出现nil 但以免万一
	if cmd == nil {
		logger.LOG.Error("exec command is nil")
		return
	}

	// 判断命令名是否注册
	cmdFunc, ok := c.commandFuncRouter[cmd.Name]
	if !ok {
		logger.LOG.Error("exec command not exist, name: %v", cmd.Name)
		return
	}

	logger.LOG.Debug("command start, name: %v args: %v", cmd.Name, cmd.Args)
	cmdFunc(cmd.Name, cmd.Args) // 执行命令
	logger.LOG.Debug("command done, name: %v args: %v", cmd.Name, cmd.Args)
}
