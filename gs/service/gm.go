package service

import (
	"context"

	"hk4e/gs/api"
	"hk4e/gs/game"
)

var _ api.GMNATSRPCServer = (*GMService)(nil)

type GMService struct {
	g *game.Game
}

func (s *GMService) Cmd(ctx context.Context, req *api.CmdRequest) (*api.CmdReply, error) {
	commandTextInput := game.COMMAND_MANAGER.GetCommandTextInput()
	commandTextInput <- &game.CommandMessage{
		FuncName: req.FuncName,
		Param:    req.Param,
	}
	return &api.CmdReply{
		Message: "OK",
	}, nil
}
