package service

import (
	"air/entity"
	"flswld.com/common/utils/object"
	"time"
)

// 注册HTTP服务
func (s *Service) RegisterHttpService(instance entity.Instance) bool {
	nowTime := time.Now().Unix()
	s.httpServiceMapLock.Lock()
	instanceMap := s.httpServiceMap[instance.ServiceName]
	if instanceMap == nil {
		instanceMap = new(InstanceMap)
		instanceMap.Imap = make(map[string]*InstanceData)
	}
	instanceMap.lock.Lock()
	instanceData := instanceMap.Imap[instance.InstanceName]
	if instanceData == nil {
		instanceData = new(InstanceData)
	}
	instanceData.Address = instance.InstanceAddr
	instanceData.LastAliveTime = nowTime
	instanceMap.Imap[instance.InstanceName] = instanceData
	s.httpServiceMap[instance.ServiceName] = instanceMap
	instanceMap.lock.Unlock()
	s.httpServiceMapLock.Unlock()
	changeInst := make(map[string]*InstanceMap)
	instanceMapCopy := new(InstanceMap)
	instanceMap.lock.RLock()
	_ = object.ObjectDeepCopy(instanceMap, instanceMapCopy)
	instanceMap.lock.RUnlock()
	changeInst[instance.ServiceName] = instanceMapCopy
	s.httpSvcChgNtfCh <- changeInst
	return true
}

// 取消注册HTTP服务
func (s *Service) CancelHttpService(instance entity.Instance) bool {
	s.httpServiceMapLock.RLock()
	instanceMap := s.httpServiceMap[instance.ServiceName]
	s.httpServiceMapLock.RUnlock()
	instanceMap.lock.Lock()
	delete(instanceMap.Imap, instance.InstanceName)
	instanceMap.lock.Unlock()
	changeInst := make(map[string]*InstanceMap)
	instanceMapCopy := new(InstanceMap)
	instanceMap.lock.RLock()
	_ = object.ObjectDeepCopy(instanceMap, instanceMapCopy)
	instanceMap.lock.RUnlock()
	changeInst[instance.ServiceName] = instanceMapCopy
	s.httpSvcChgNtfCh <- changeInst
	return true
}

// 注册RPC服务
func (s *Service) RegisterRpcService(instance entity.Instance) bool {
	nowTime := time.Now().Unix()
	s.rpcServiceMapLock.Lock()
	instanceMap := s.rpcServiceMap[instance.ServiceName]
	if instanceMap == nil {
		instanceMap = new(InstanceMap)
		instanceMap.Imap = make(map[string]*InstanceData)
	}
	instanceMap.lock.Lock()
	instanceData := instanceMap.Imap[instance.InstanceName]
	if instanceData == nil {
		instanceData = new(InstanceData)
	}
	instanceData.Address = instance.InstanceAddr
	instanceData.LastAliveTime = nowTime
	instanceMap.Imap[instance.InstanceName] = instanceData
	s.rpcServiceMap[instance.ServiceName] = instanceMap
	instanceMap.lock.Unlock()
	s.rpcServiceMapLock.Unlock()
	changeInst := make(map[string]*InstanceMap)
	instanceMapCopy := new(InstanceMap)
	instanceMap.lock.RLock()
	_ = object.ObjectDeepCopy(instanceMap, instanceMapCopy)
	instanceMap.lock.RUnlock()
	changeInst[instance.ServiceName] = instanceMapCopy
	s.rpcSvcChgNtfCh <- changeInst
	return true
}

// 取消注册RPC服务
func (s *Service) CancelRpcService(instance entity.Instance) bool {
	s.rpcServiceMapLock.RLock()
	instanceMap := s.rpcServiceMap[instance.ServiceName]
	s.rpcServiceMapLock.RUnlock()
	instanceMap.lock.Lock()
	delete(instanceMap.Imap, instance.InstanceName)
	instanceMap.lock.Unlock()
	changeInst := make(map[string]*InstanceMap)
	instanceMapCopy := new(InstanceMap)
	instanceMap.lock.RLock()
	_ = object.ObjectDeepCopy(instanceMap, instanceMapCopy)
	instanceMap.lock.RUnlock()
	changeInst[instance.ServiceName] = instanceMapCopy
	s.rpcSvcChgNtfCh <- changeInst
	return true
}
