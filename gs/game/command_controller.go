package game

import "fmt"

// HelpCommand 帮助命令
func (c *CommandManager) HelpCommand(cmd *Command) {
	c.gameManager.SendPrivateChat(c.system, cmd.Executor,
		"===== 帮助 / Help =====\n"+
			"以后再写awa\n",
	)
}

// OpCommand 帮助命令
func (c *CommandManager) OpCommand(cmd *Command) {
	cmd.Executor.IsGM = 1
	c.gameManager.SendPrivateChat(c.system, cmd.Executor, fmt.Sprintf("权限修改完毕, 现在你是GM啦 %v", cmd.Args))
}
