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

const (
	MaxGsId = 1000
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
	serverType        string
	appId             string
	gateServerKcpAddr string
	gateServerKcpPort uint32
	gateServerMqAddr  string
	gateServerMqPort  uint32
	version           string
	lastAliveTime     int64
	gsId              uint32
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
		serverType:    req.ServerType,
		appId:         appId,
		lastAliveTime: time.Now().Unix(),
	}
	if req.ServerType == api.GATE {
		logger.Info("register new gate server, ip: %v, port: %v", req.GateServerAddr.KcpAddr, req.GateServerAddr.KcpPort)
		inst.gateServerKcpAddr = req.GateServerAddr.KcpAddr
		inst.gateServerKcpPort = req.GateServerAddr.KcpPort
		inst.gateServerMqAddr = req.GateServerAddr.MqAddr
		inst.gateServerMqPort = req.GateServerAddr.MqPort
		inst.version = req.Version
	}
	instMap.Store(appId, inst)
	logger.Info("new server appid is: %v", appId)
	rsp := &api.RegisterServerRsp{
		AppId: appId,
	}
	if req.ServerType == api.GS {
		gsId := atomic.AddUint32(&s.gsIdCounter, 1)
		if gsId > MaxGsId {
			return nil, errors.New("above max gs count")
		}
		inst.gsId = gsId
		rsp.GsId = gsId
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
		logger.Error("recv not exist server cancel, server type: %v, appid: %v", req.ServerType, req.AppId)
		return nil, errors.New("server not exist")
	}
	instMap.Delete(req.AppId)
	return &api.NullMsg{}, nil
}

// KeepaliveServer 服务器在线心跳保持
func (s *DiscoveryService) KeepaliveServer(ctx context.Context, req *api.KeepaliveServerReq) (*api.NullMsg, error) {
	logger.Debug("server keepalive, server type: %v, appid: %v", req.ServerType, req.AppId)
	instMap, exist := s.serverInstanceMap[req.ServerType]
	if !exist {
		return nil, errors.New("server type not exist")
	}
	inst, exist := instMap.Load(req.AppId)
	if !exist {
		logger.Error("recv not exist server keepalive, server type: %v, appid: %v", req.ServerType, req.AppId)
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
	logger.Debug("get gate server addr is, ip: %v, port: %v", inst.gateServerKcpAddr, inst.gateServerKcpPort)
	return &api.GateServerAddr{
		KcpAddr: inst.gateServerKcpAddr,
		KcpPort: inst.gateServerKcpPort,
	}, nil
}

// GetAllGateServerInfoList 获取全部网关服务器信息列表
func (s *DiscoveryService) GetAllGateServerInfoList(ctx context.Context, req *api.NullMsg) (*api.GateServerInfoList, error) {
	logger.Debug("get all gate server info list")
	instMap, exist := s.serverInstanceMap[api.GATE]
	if !exist {
		return nil, errors.New("gate server not exist")
	}
	if s.getServerInstanceMapLen(instMap) == 0 {
		return nil, errors.New("no gate server found")
	}
	gateServerInfoList := make([]*api.GateServerInfo, 0)
	instMap.Range(func(key, value any) bool {
		serverInstance := value.(*ServerInstance)
		gateServerInfoList = append(gateServerInfoList, &api.GateServerInfo{
			AppId:  serverInstance.appId,
			MqAddr: serverInstance.gateServerMqAddr,
			MqPort: serverInstance.gateServerMqPort,
		})
		return true
	})
	return &api.GateServerInfoList{
		GateServerInfoList: gateServerInfoList,
	}, nil
}

// GetMainGameServerAppId 获取主游戏服务器的appid
func (s *DiscoveryService) GetMainGameServerAppId(ctx context.Context, req *api.NullMsg) (*api.GetMainGameServerAppIdRsp, error) {
	logger.Debug("get main game server appid")
	instMap, exist := s.serverInstanceMap[api.GS]
	if !exist {
		return nil, errors.New("game server not exist")
	}
	if s.getServerInstanceMapLen(instMap) == 0 {
		return nil, errors.New("no game server found")
	}
	appid := ""
	minGsId := uint32(MaxGsId)
	instMap.Range(func(key, value any) bool {
		serverInstance := value.(*ServerInstance)
		if serverInstance.gsId < minGsId {
			minGsId = serverInstance.gsId
			appid = serverInstance.appId
		}
		return true
	})
	if appid == "" {
		return nil, errors.New("main game server not found")
	}
	return &api.GetMainGameServerAppIdRsp{
		AppId: appid,
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
					logger.Warn("remove dead server, server type: %v, appid: %v, last alive time: %v",
						serverInstance.serverType, serverInstance.appId, serverInstance.lastAliveTime)
					instMap.Delete(key)
				}
				return true
			})
		}
	}
}
