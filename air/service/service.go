package service

import (
	"air/entity"
	"sync"
)

// 实例数据
type InstanceData struct {
	// 实例地址
	Address string
	// 最后心跳时间
	LastAliveTime int64
}

// 服务实例集合
type InstanceMap struct {
	// key:实例名 value:实例数据
	Imap map[string]*InstanceData
	lock sync.RWMutex
}

type ReceiverNotifier struct {
	Id            uint64
	CreateTime    int64
	NotifyChannel chan []entity.Instance
}

type AllServiceReceiverNotifier struct {
	Id            uint64
	CreateTime    int64
	NotifyChannel chan map[string][]entity.Instance
}

type Watcher struct {
	receiverNotifierIdCounter uint64
	// key1:服务名 key2:接收者通知器id value:接收者通知器
	httpRecvrNtfrMap     map[string]map[uint64]*ReceiverNotifier
	httpRecvrNtfrMapLock sync.RWMutex
	// key:接收者通知器id value:接收者通知器
	httpAllSvcRecvrNtfrMap     map[uint64]*AllServiceReceiverNotifier
	httpAllSvcRecvrNtfrMapLock sync.RWMutex
	// key1:服务名 key2:接收者通知器id value:接收者通知器
	rpcRecvrNtfrMap     map[string]map[uint64]*ReceiverNotifier
	rpcRecvrNtfrMapLock sync.RWMutex
	// key:接收者通知器id value:接收者通知器
	rpcAllSvcRecvrNtfrMap     map[uint64]*AllServiceReceiverNotifier
	rpcAllSvcRecvrNtfrMapLock sync.RWMutex
}

// 注册服务
type Service struct {
	// key:服务名 value:服务实例集合
	httpServiceMap     map[string]*InstanceMap
	httpServiceMapLock sync.RWMutex
	httpSvcChgNtfCh    chan map[string]*InstanceMap
	// key:服务名 value:服务实例集合
	rpcServiceMap     map[string]*InstanceMap
	rpcServiceMapLock sync.RWMutex
	rpcSvcChgNtfCh    chan map[string]*InstanceMap
	watcher           *Watcher
}

// 构造函数
func NewService() (r *Service) {
	r = new(Service)
	r.httpServiceMap = make(map[string]*InstanceMap)
	r.rpcServiceMap = make(map[string]*InstanceMap)
	r.httpSvcChgNtfCh = make(chan map[string]*InstanceMap, 0)
	r.rpcSvcChgNtfCh = make(chan map[string]*InstanceMap, 0)
	r.watcher = new(Watcher)
	go r.removeDeadService()
	go r.watchServiceChange()
	return r
}
