package service

import (
	"context"
	"sort"
	"strings"
	"sync"
	"sync/atomic"
	"time"

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
	version          string
	lastAliveTime    int64
}

type DiscoveryService struct {
	regionEc2b        *random.Ec2b         // 全局区服密钥信息
	serverInstanceMap map[string]*sync.Map // 全部服务器实例集合 key:服务器类型 value:服务器实例集合 -> key:appid value:服务器实例
	serverAppIdMap    map[string]bool      // 服务器appid集合 key:appid value:是否存在
	gsIdCounter       uint32               // GSID计数器
}

func NewDiscoveryService() *DiscoveryService {
	r := new(DiscoveryService)
	r.regionEc2b = region.NewRegionEc2b()
	logger.Info("region ec2b create ok, seed: %v", r.regionEc2b.Seed())
	r.serverInstanceMap = make(map[string]*sync.Map)
	r.serverInstanceMap[api.GATE] = &sync.Map{}
	r.serverInstanceMap[api.GS] = &sync.Map{}
	r.serverInstanceMap[api.FIGHT] = &sync.Map{}
	r.serverInstanceMap[api.PATHFINDING] = &sync.Map{}
	r.serverAppIdMap = make(map[string]bool)
	r.gsIdCounter = 0
	go r.removeDeadServer()
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
		inst.version = req.Version
	}
	instMap.Store(appId, inst)
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
	_, exist = instMap.Load(req.AppId)
	if !exist {
		return nil, errors.New("server not exist")
	}
	instMap.Delete(req.AppId)
	return &api.NullMsg{}, nil
}

// KeepaliveServer 服务器在线心跳保持
func (s *DiscoveryService) KeepaliveServer(ctx context.Context, req *api.KeepaliveServerReq) (*api.NullMsg, error) {
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	inst, exist := instMap.Load(req.AppId)
	if !exist {
		return nil, errors.New("server not exist")
	}
	serverInstance := inst.(*ServerInstance)
	serverInstance.lastAliveTime = time.Now().Unix()
	return &api.NullMsg{}, nil
}

// GetServerAppId 获取负载最小的服务器的appid
func (s *DiscoveryService) GetServerAppId(ctx context.Context, req *api.GetServerAppIdReq) (*api.GetServerAppIdRsp, error) {
	logger.Debug("get server instance, server type: %v", req.ServerType)
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	if s.getServerInstanceMapLen(instMap) == 0 {
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
func (s *DiscoveryService) GetGateServerAddr(ctx context.Context, req *api.GetGateServerAddrReq) (*api.GateServerAddr, error) {
	logger.Debug("get gate server addr")
	instMap, exist := s.serverInstanceMap[api.GATE]
	if !exist {
		return nil, errors.New("gate server not exist")
	}
	if s.getServerInstanceMapLen(instMap) == 0 {
		return nil, errors.New("no gate server found")
	}
	versionInstMap := sync.Map{}
	instMap.Range(func(key, value any) bool {
		serverInstance := value.(*ServerInstance)
		if serverInstance.version != req.Version {
			return true
		}
		versionInstMap.Store(key, serverInstance)
		return true
	})
	if s.getServerInstanceMapLen(&versionInstMap) == 0 {
		return nil, errors.New("no gate server found")
	}
	inst := s.getRandomServerInstance(&versionInstMap)
	logger.Debug("get gate server addr is, ip: %v, port: %v", inst.gateServerIpAddr, inst.gateServerPort)
	return &api.GateServerAddr{
		IpAddr: inst.gateServerIpAddr,
		Port:   inst.gateServerPort,
	}, nil
}

func (s *DiscoveryService) getRandomServerInstance(instMap *sync.Map) *ServerInstance {
	instList := make(ServerInstanceSortList, 0)
	instMap.Range(func(key, value any) bool {
		instList = append(instList, value.(*ServerInstance))
		return true
	})
	sort.Stable(instList)
	index := random.GetRandomInt32(0, int32(len(instList)-1))
	inst := instList[index]
	return inst
}

func (s *DiscoveryService) getServerInstanceMapLen(instMap *sync.Map) int {
	count := 0
	instMap.Range(func(key, value any) bool {
		count++
		return true
	})
	return count
}

// 定时移除掉线服务器
func (s *DiscoveryService) removeDeadServer() {
	ticker := time.NewTicker(time.Second * 60)
	for {
		<-ticker.C
		nowTime := time.Now().Unix()
		for _, instMap := range s.serverInstanceMap {
			instMap.Range(func(key, value any) bool {
				serverInstance := value.(*ServerInstance)
				if nowTime-serverInstance.lastAliveTime > 60 {
					logger.Warn("remove dead server, server type: %v, appid: %v", serverInstance.serverType, serverInstance.appId)
					instMap.Delete(key)
				}
				return true
			})
		}
	}
}
