package service

import (
	"context"
	"strings"

	"hk4e/common/config"
	"hk4e/common/region"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"

	"github.com/pkg/errors"
)

var _ api.DiscoveryNATSRPCServer = (*DiscoveryService)(nil)

type ServerInstance struct {
	serverType string
	appId      string
}

type DiscoveryService struct {
	regionEc2b *random.Ec2b
	// TODO 加锁
	serverInstanceMap map[string]map[string]*ServerInstance
	serverAppIdMap    map[string]bool
}

func NewDiscoveryService() *DiscoveryService {
	r := new(DiscoveryService)
	_, _, r.regionEc2b = region.InitRegion(config.CONF.Hk4e.KcpAddr, config.CONF.Hk4e.KcpPort, nil)
	logger.Info("region ec2b create ok, seed: %v", r.regionEc2b.Seed())
	r.serverInstanceMap = map[string]map[string]*ServerInstance{
		api.GATE:        make(map[string]*ServerInstance),
		api.GS:          make(map[string]*ServerInstance),
		api.FIGHT:       make(map[string]*ServerInstance),
		api.PATHFINDING: make(map[string]*ServerInstance),
	}
	r.serverAppIdMap = make(map[string]bool)
	return r
}

func (s *DiscoveryService) RegisterServer(ctx context.Context, req *api.RegisterServerReq) (*api.RegisterServerRsp, error) {
	logger.Info("register new server, server type: %v", req.ServerType)
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	var appId string
	for {
		appId = strings.ToLower(random.GetRandomStr(8))
		_, exist := s.serverAppIdMap[appId]
		if !exist {
			s.serverAppIdMap[appId] = true
			break
		}
	}
	instMap[appId] = &ServerInstance{
		serverType: req.ServerType,
		appId:      appId,
	}
	logger.Info("new server appid is: %v", appId)
	return &api.RegisterServerRsp{
		AppId: appId,
	}, nil
}

func (s *DiscoveryService) GetServerAppId(ctx context.Context, req *api.GetServerAppIdReq) (*api.GetServerAppIdRsp, error) {
	logger.Info("get server instance, server type: %v", req.ServerType)
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	if len(instMap) == 0 {
		return nil, errors.New("no server found")
	}
	var inst *ServerInstance = nil
	for _, v := range instMap {
		inst = v
		break
	}
	logger.Info("get server appid is: %v", inst.appId)
	return &api.GetServerAppIdRsp{
		AppId: inst.appId,
	}, nil
}

func (s *DiscoveryService) GetRegionEc2B(ctx context.Context, req *api.NullMsg) (*api.RegionEc2B, error) {
	logger.Info("get region ec2b ok")
	return &api.RegionEc2B{
		Data: s.regionEc2b.Bytes(),
	}, nil
}
