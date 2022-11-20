package service

import (
	"air/entity"
	"flswld.com/logger"
	"time"
)

// HTTP心跳
func (s *Service) HttpKeepalive(instance entity.Instance) {
	nowTime := time.Now().Unix()
	s.httpServiceMapLock.RLock()
	instanceMap := s.httpServiceMap[instance.ServiceName]
	s.httpServiceMapLock.RUnlock()
	if instanceMap != nil {
		instanceMap.lock.Lock()
		instanceData := instanceMap.Imap[instance.InstanceName]
		if instanceData != nil {
			instanceData.LastAliveTime = nowTime
		} else {
			logger.LOG.Error("recv not exist instance http keepalive, instance name: %v", instance.InstanceName)
		}
		instanceMap.lock.Unlock()
	} else {
		logger.LOG.Error("recv not exist service http keepalive, service name: %v", instance.ServiceName)
	}
}

// RPC心跳
func (s *Service) RpcKeepalive(instance entity.Instance) {
	nowTime := time.Now().Unix()
	s.rpcServiceMapLock.RLock()
	instanceMap := s.rpcServiceMap[instance.ServiceName]
	s.rpcServiceMapLock.RUnlock()
	if instanceMap != nil {
		instanceMap.lock.Lock()
		instanceData := instanceMap.Imap[instance.InstanceName]
		if instanceData != nil {
			instanceData.LastAliveTime = nowTime
		} else {
			logger.LOG.Error("recv not exist instance rpc keepalive, instance name: %v", instance.InstanceName)
		}
		instanceMap.lock.Unlock()
	} else {
		logger.LOG.Error("recv not exist service rpc keepalive, service name: %v", instance.ServiceName)
	}
}

// 定时移除掉线服务
func (s *Service) removeDeadService() {
	ticker := time.NewTicker(time.Second * 60)
	for {
		<-ticker.C
		nowTime := time.Now().Unix()

		httpSvcChgFlagMap := make(map[string]bool)
		httpSvcChgMap := make(map[string]*InstanceMap)
		httpSvcDelMap := make(map[string]*InstanceMap)
		s.httpServiceMapLock.RLock()
		for svcName, svcInstMap := range s.httpServiceMap {
			svcInstMap.lock.Lock()
			for instName, instData := range svcInstMap.Imap {
				if nowTime-instData.LastAliveTime > 60 {
					httpSvcChgFlagMap[svcName] = true
					if httpSvcDelMap[svcName] == nil {
						httpSvcDelMap[svcName] = new(InstanceMap)
						httpSvcDelMap[svcName].Imap = make(map[string]*InstanceData)
					}
					httpSvcDelMap[svcName].Imap[instName] = instData
					delete(svcInstMap.Imap, instName)
				} else {
					if httpSvcChgMap[svcName] == nil {
						httpSvcChgMap[svcName] = new(InstanceMap)
						httpSvcChgMap[svcName].Imap = make(map[string]*InstanceData)
					}
					httpSvcChgMap[svcName].Imap[instName] = instData
				}
			}
			svcInstMap.lock.Unlock()
		}
		s.httpServiceMapLock.RUnlock()
		for svcName, instMap := range httpSvcDelMap {
			for instName, instData := range instMap.Imap {
				logger.LOG.Info("remove timeout http service, service name: %v, instance name: %v, instance data: %v", svcName, instName, instData)
			}
		}
		for svcName, _ := range httpSvcChgMap {
			if !httpSvcChgFlagMap[svcName] {
				delete(httpSvcChgMap, svcName)
			}
		}
		if len(httpSvcChgMap) != 0 {
			s.httpSvcChgNtfCh <- httpSvcChgMap
		}

		rpcSvcChgFlagMap := make(map[string]bool)
		rpcSvcChgMap := make(map[string]*InstanceMap)
		rpcSvcDelMap := make(map[string]*InstanceMap)
		s.rpcServiceMapLock.RLock()
		for svcName, svcInstMap := range s.rpcServiceMap {
			svcInstMap.lock.Lock()
			for instName, instData := range svcInstMap.Imap {
				if nowTime-instData.LastAliveTime > 60 {
					rpcSvcChgFlagMap[svcName] = true
					if rpcSvcDelMap[svcName] == nil {
						rpcSvcDelMap[svcName] = new(InstanceMap)
						rpcSvcDelMap[svcName].Imap = make(map[string]*InstanceData)
					}
					rpcSvcDelMap[svcName].Imap[instName] = instData
					delete(svcInstMap.Imap, instName)
				} else {
					if rpcSvcChgMap[svcName] == nil {
						rpcSvcChgMap[svcName] = new(InstanceMap)
						rpcSvcChgMap[svcName].Imap = make(map[string]*InstanceData)
					}
					rpcSvcChgMap[svcName].Imap[instName] = instData
				}
			}
			svcInstMap.lock.Unlock()
		}
		s.rpcServiceMapLock.RUnlock()
		for svcName, instMap := range rpcSvcDelMap {
			for instName, instData := range instMap.Imap {
				logger.LOG.Info("remove timeout rpc service, service name: %v, instance name: %v, instance data: %v", svcName, instName, instData)
			}
		}
		for svcName, _ := range rpcSvcChgMap {
			if !rpcSvcChgFlagMap[svcName] {
				delete(rpcSvcChgMap, svcName)
			}
		}
		if len(rpcSvcChgMap) != 0 {
			s.rpcSvcChgNtfCh <- rpcSvcChgMap
		}
	}
}
