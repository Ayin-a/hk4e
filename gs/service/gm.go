package service

import (
	"context"
	"fmt"

	"hk4e/gs/api"
	"hk4e/gs/game"
)

var _ api.GMNATSRPCServer = (*GMService)(nil)

type GMService struct {
	g *game.GameManager
}

func (s *GMService) Cmd(ctx context.Context, req *api.CmdRequest) (*api.CmdReply, error) {
	//TODO implement me
	fmt.Println("Cmd", req.FuncName, req.Param)
	return &api.CmdReply{
		Message: "TODO",
	}, nil
}
