package service

import "air/entity"

// 获取HTTP服务
func (s *Service) FetchHttpService(name string) (r []entity.Instance) {
	s.httpServiceMapLock.RLock()
	instanceMap := s.httpServiceMap[name]
	s.httpServiceMapLock.RUnlock()
	r = make([]entity.Instance, 0)
	if instanceMap == nil {
		return r
	}
	instanceMap.lock.RLock()
	for k, v := range instanceMap.Imap {
		instance := new(entity.Instance)
		instance.ServiceName = name
		instance.InstanceName = k
		instance.InstanceAddr = v.Address
		r = append(r, *instance)
	}
	instanceMap.lock.RUnlock()
	return r
}

// 获取所有HTTP服务
func (s *Service) FetchAllHttpService() (r map[string][]entity.Instance) {
	s.httpServiceMapLock.RLock()
	serviceMap := s.httpServiceMap
	s.httpServiceMapLock.RUnlock()
	r = make(map[string][]entity.Instance)
	for k, v := range serviceMap {
		instanceSlice := make([]entity.Instance, 0)
		v.lock.RLock()
		for kk, vv := range v.Imap {
			instance := new(entity.Instance)
			instance.ServiceName = k
			instance.InstanceName = kk
			instance.InstanceAddr = vv.Address
			instanceSlice = append(instanceSlice, *instance)
		}
		v.lock.RUnlock()
		r[k] = instanceSlice
	}
	return r
}

// 获取RPC服务
func (s *Service) FetchRpcService(name string) (r []entity.Instance) {
	s.rpcServiceMapLock.RLock()
	instanceMap := s.rpcServiceMap[name]
	s.rpcServiceMapLock.RUnlock()
	r = make([]entity.Instance, 0)
	if instanceMap == nil {
		return r
	}
	instanceMap.lock.RLock()
	for k, v := range instanceMap.Imap {
		instance := new(entity.Instance)
		instance.ServiceName = name
		instance.InstanceName = k
		instance.InstanceAddr = v.Address
		r = append(r, *instance)
	}
	instanceMap.lock.RUnlock()
	return r
}

// 获取所有RPC服务
func (s *Service) FetchAllRpcService() (r map[string][]entity.Instance) {
	s.rpcServiceMapLock.RLock()
	serviceMap := s.rpcServiceMap
	s.rpcServiceMapLock.RUnlock()
	r = make(map[string][]entity.Instance)
	for k, v := range serviceMap {
		instanceSlice := make([]entity.Instance, 0)
		v.lock.RLock()
		for kk, vv := range v.Imap {
			instance := new(entity.Instance)
			instance.ServiceName = k
			instance.InstanceName = kk
			instance.InstanceAddr = vv.Address
			instanceSlice = append(instanceSlice, *instance)
		}
		v.lock.RUnlock()
		r[k] = instanceSlice
	}
	return r
}
