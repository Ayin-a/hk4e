package service

import (
	"context"
	"sort"
	"strings"
	"sync/atomic"

	"hk4e/common/region"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"

	"github.com/pkg/errors"
)

var _ api.DiscoveryNATSRPCServer = (*DiscoveryService)(nil)

type ServerInstanceSortList []*ServerInstance

func (s ServerInstanceSortList) Len() int {
	return len(s)
}

func (s ServerInstanceSortList) Less(i, j int) bool {
	return s[i].appId < s[j].appId
}

func (s ServerInstanceSortList) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

type ServerInstance struct {
	serverType       string
	appId            string
	gateServerIpAddr string
	gateServerPort   uint32
}

type DiscoveryService struct {
	regionEc2b *random.Ec2b
	// TODO 加锁
	serverInstanceMap map[string]map[string]*ServerInstance
	serverAppIdMap    map[string]bool
	gsIdCounter       uint32
}

func NewDiscoveryService() *DiscoveryService {
	r := new(DiscoveryService)
	r.regionEc2b = region.NewRegionEc2b()
	logger.Info("region ec2b create ok, seed: %v", r.regionEc2b.Seed())
	r.serverInstanceMap = map[string]map[string]*ServerInstance{
		api.GATE:        make(map[string]*ServerInstance),
		api.GS:          make(map[string]*ServerInstance),
		api.FIGHT:       make(map[string]*ServerInstance),
		api.PATHFINDING: make(map[string]*ServerInstance),
	}
	r.serverAppIdMap = make(map[string]bool)
	r.gsIdCounter = 0
	return r
}

// RegisterServer 服务器启动注册获取appid
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
	inst := &ServerInstance{
		serverType: req.ServerType,
		appId:      appId,
	}
	if req.ServerType == api.GATE {
		logger.Info("register new gate server, ip: %v, port: %v", req.GateServerAddr.IpAddr, req.GateServerAddr.Port)
		inst.gateServerIpAddr = req.GateServerAddr.IpAddr
		inst.gateServerPort = req.GateServerAddr.Port
	}
	instMap[appId] = inst
	logger.Info("new server appid is: %v", appId)
	rsp := &api.RegisterServerRsp{
		AppId: appId,
	}
	if req.ServerType == api.GS {
		rsp.GsId = atomic.AddUint32(&s.gsIdCounter, 1)
	}
	return rsp, nil
}

// CancelServer 服务器关闭取消注册
func (s *DiscoveryService) CancelServer(ctx context.Context, req *api.CancelServerReq) (*api.NullMsg, error) {
	logger.Info("server cancel, server type: %v, appid: %v", req.ServerType, req.AppId)
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	_, exist = instMap[req.AppId]
	if !exist {
		return nil, errors.New("server not exist")
	}
	delete(instMap, req.AppId)
	return &api.NullMsg{}, nil
}

// KeepaliveServer 服务器在线心跳保持
func (s *DiscoveryService) KeepaliveServer(ctx context.Context, req *api.KeepaliveServerReq) (*api.NullMsg, error) {
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	inst, exist := instMap[req.AppId]
	if !exist {
		return nil, errors.New("server not exist")
	}
	// TODO
	_ = inst
	return &api.NullMsg{}, nil
}

// GetServerAppId 获取负载最小的服务器的appid
func (s *DiscoveryService) GetServerAppId(ctx context.Context, req *api.GetServerAppIdReq) (*api.GetServerAppIdRsp, error) {
	logger.Debug("get server instance, server type: %v", req.ServerType)
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	if len(instMap) == 0 {
		return nil, errors.New("no server found")
	}
	inst := s.getRandomServerInstance(instMap)
	logger.Debug("get server appid is: %v", inst.appId)
	return &api.GetServerAppIdRsp{
		AppId: inst.appId,
	}, nil
}

// GetRegionEc2B 获取区服密钥信息
func (s *DiscoveryService) GetRegionEc2B(ctx context.Context, req *api.NullMsg) (*api.RegionEc2B, error) {
	logger.Info("get region ec2b ok")
	return &api.RegionEc2B{
		Data: s.regionEc2b.Bytes(),
	}, nil
}

// GetGateServerAddr 获取负载最小的网关服务器的地址和端口
func (s *DiscoveryService) GetGateServerAddr(ctx context.Context, req *api.NullMsg) (*api.GateServerAddr, error) {
	logger.Debug("get gate server addr")
	instMap, exist := s.serverInstanceMap[api.GATE]
	if !exist {
		return nil, errors.New("gate server not exist")
	}
	if len(instMap) == 0 {
		return nil, errors.New("no gate server found")
	}
	inst := s.getRandomServerInstance(instMap)
	logger.Debug("get gate server addr is, ip: %v, port: %v", inst.gateServerIpAddr, inst.gateServerPort)
	return &api.GateServerAddr{
		IpAddr: inst.gateServerIpAddr,
		Port:   inst.gateServerPort,
	}, nil
}

func (s *DiscoveryService) getRandomServerInstance(instMap map[string]*ServerInstance) *ServerInstance {
	instList := make(ServerInstanceSortList, 0)
	for _, v := range instMap {
		instList = append(instList, v)
	}
	sort.Stable(instList)
	index := random.GetRandomInt32(0, int32(len(instList)-1))
	inst := instList[index]
	return inst
}
