package service

import (
	"air/entity"
	"flswld.com/logger"
	"sync/atomic"
	"time"
)

func (s *Service) watchServiceChange() {
	s.watcher.receiverNotifierIdCounter = 0
	s.watcher.httpRecvrNtfrMap = make(map[string]map[uint64]*ReceiverNotifier)
	s.watcher.httpAllSvcRecvrNtfrMap = make(map[uint64]*AllServiceReceiverNotifier)
	s.watcher.rpcRecvrNtfrMap = make(map[string]map[uint64]*ReceiverNotifier)
	s.watcher.rpcAllSvcRecvrNtfrMap = make(map[uint64]*AllServiceReceiverNotifier)
	go func() {
		for {
			imap := <-s.httpSvcChgNtfCh
			for svcName, instMap := range imap {
				// 给某个服务的接收者通知器发送消息
				s.watcher.httpRecvrNtfrMapLock.RLock()
				recvrNtfrMap := s.watcher.httpRecvrNtfrMap[svcName]
				instList := make([]entity.Instance, 0)
				for instName, instData := range instMap.Imap {
					inst := new(entity.Instance)
					inst.ServiceName = svcName
					inst.InstanceName = instName
					inst.InstanceAddr = instData.Address
					instList = append(instList, *inst)
				}
				if recvrNtfrMap == nil || len(recvrNtfrMap) == 0 {
					s.watcher.httpRecvrNtfrMapLock.RUnlock()
					continue
				}
				for _, recvrNtfr := range recvrNtfrMap {
					if time.Now().UnixNano()-recvrNtfr.CreateTime < int64(time.Second*30) {
						logger.LOG.Debug("send http service change notify to receiver: %d", recvrNtfr.Id)
						recvrNtfr.NotifyChannel <- instList
					}
					close(recvrNtfr.NotifyChannel)
				}
				s.watcher.httpRecvrNtfrMapLock.RUnlock()
			}

			// 给全体服务的接收者通知器发送消息
			s.watcher.httpAllSvcRecvrNtfrMapLock.RLock()
			if len(s.watcher.httpAllSvcRecvrNtfrMap) == 0 {
				s.watcher.httpAllSvcRecvrNtfrMapLock.RUnlock()
				continue
			}
			svcMap := s.FetchAllHttpService()
			for _, recvrNtfr := range s.watcher.httpAllSvcRecvrNtfrMap {
				if time.Now().UnixNano()-recvrNtfr.CreateTime < int64(time.Second*30) {
					logger.LOG.Debug("send all http service change notify to receiver: %d", recvrNtfr.Id)
					recvrNtfr.NotifyChannel <- svcMap
				}
				close(recvrNtfr.NotifyChannel)
			}
			s.watcher.httpAllSvcRecvrNtfrMapLock.RUnlock()
		}
	}()
	go func() {
		for {
			imap := <-s.rpcSvcChgNtfCh
			for svcName, instMap := range imap {
				// 给某个服务的接收者通知器发送消息
				s.watcher.rpcRecvrNtfrMapLock.RLock()
				recvrNtfrMap := s.watcher.rpcRecvrNtfrMap[svcName]
				instList := make([]entity.Instance, 0)
				for instName, instData := range instMap.Imap {
					inst := new(entity.Instance)
					inst.ServiceName = svcName
					inst.InstanceName = instName
					inst.InstanceAddr = instData.Address
					instList = append(instList, *inst)
				}
				if recvrNtfrMap == nil || len(recvrNtfrMap) == 0 {
					s.watcher.rpcRecvrNtfrMapLock.RUnlock()
					continue
				}
				for _, recvrNtfr := range recvrNtfrMap {
					if time.Now().UnixNano()-recvrNtfr.CreateTime < int64(time.Second*30) {
						logger.LOG.Debug("send rpc service change notify to receiver: %d", recvrNtfr.Id)
						recvrNtfr.NotifyChannel <- instList
					}
					close(recvrNtfr.NotifyChannel)
				}
				s.watcher.rpcRecvrNtfrMapLock.RUnlock()
			}

			// 给全体服务的接收者通知器发送消息
			s.watcher.rpcAllSvcRecvrNtfrMapLock.RLock()
			if len(s.watcher.rpcAllSvcRecvrNtfrMap) == 0 {
				s.watcher.rpcAllSvcRecvrNtfrMapLock.RUnlock()
				continue
			}
			svcMap := s.FetchAllRpcService()
			for _, recvrNtfr := range s.watcher.rpcAllSvcRecvrNtfrMap {
				if time.Now().UnixNano()-recvrNtfr.CreateTime < int64(time.Second*30) {
					logger.LOG.Debug("send all rpc service change notify to receiver: %d", recvrNtfr.Id)
					recvrNtfr.NotifyChannel <- svcMap
				}
				close(recvrNtfr.NotifyChannel)
			}
			s.watcher.rpcAllSvcRecvrNtfrMapLock.RUnlock()
		}
	}()
}

// 注册HTTP服务变化通知接收者
func (s *Service) RegistryHttpNotifyReceiver(serviceName string) *ReceiverNotifier {
	recvrNtfr := new(ReceiverNotifier)
	recvrNtfr.Id = atomic.AddUint64(&s.watcher.receiverNotifierIdCounter, 1)
	recvrNtfr.CreateTime = time.Now().UnixNano()
	recvrNtfr.NotifyChannel = make(chan []entity.Instance, 0)
	s.watcher.httpRecvrNtfrMapLock.Lock()
	if s.watcher.httpRecvrNtfrMap[serviceName] == nil {
		s.watcher.httpRecvrNtfrMap[serviceName] = make(map[uint64]*ReceiverNotifier)
	}
	s.watcher.httpRecvrNtfrMap[serviceName][recvrNtfr.Id] = recvrNtfr
	s.watcher.httpRecvrNtfrMapLock.Unlock()
	return recvrNtfr
}

// 取消HTTP服务变化通知接收者
func (s *Service) CancelHttpNotifyReceiver(serviceName string, id uint64) {
	s.watcher.httpRecvrNtfrMapLock.Lock()
	delete(s.watcher.httpRecvrNtfrMap[serviceName], id)
	s.watcher.httpRecvrNtfrMapLock.Unlock()
}

// 注册全体HTTP服务变化通知接收者
func (s *Service) RegistryAllHttpNotifyReceiver() *AllServiceReceiverNotifier {
	recvrNtfr := new(AllServiceReceiverNotifier)
	recvrNtfr.Id = atomic.AddUint64(&s.watcher.receiverNotifierIdCounter, 1)
	recvrNtfr.CreateTime = time.Now().UnixNano()
	recvrNtfr.NotifyChannel = make(chan map[string][]entity.Instance, 0)
	s.watcher.httpAllSvcRecvrNtfrMapLock.Lock()
	s.watcher.httpAllSvcRecvrNtfrMap[recvrNtfr.Id] = recvrNtfr
	s.watcher.httpAllSvcRecvrNtfrMapLock.Unlock()
	return recvrNtfr
}

// 取消全体HTTP服务变化通知接收者
func (s *Service) CancelAllHttpNotifyReceiver(id uint64) {
	s.watcher.httpAllSvcRecvrNtfrMapLock.Lock()
	delete(s.watcher.httpAllSvcRecvrNtfrMap, id)
	s.watcher.httpAllSvcRecvrNtfrMapLock.Unlock()
}

// 注册RPC服务变化通知接收者
func (s *Service) RegistryRpcNotifyReceiver(serviceName string) *ReceiverNotifier {
	recvrNtfr := new(ReceiverNotifier)
	recvrNtfr.Id = atomic.AddUint64(&s.watcher.receiverNotifierIdCounter, 1)
	recvrNtfr.CreateTime = time.Now().UnixNano()
	recvrNtfr.NotifyChannel = make(chan []entity.Instance, 0)
	s.watcher.rpcRecvrNtfrMapLock.Lock()
	if s.watcher.rpcRecvrNtfrMap[serviceName] == nil {
		s.watcher.rpcRecvrNtfrMap[serviceName] = make(map[uint64]*ReceiverNotifier)
	}
	s.watcher.rpcRecvrNtfrMap[serviceName][recvrNtfr.Id] = recvrNtfr
	s.watcher.rpcRecvrNtfrMapLock.Unlock()
	return recvrNtfr
}

// 取消RPC服务变化通知接收者
func (s *Service) CancelRpcNotifyReceiver(serviceName string, id uint64) {
	s.watcher.rpcRecvrNtfrMapLock.Lock()
	delete(s.watcher.rpcRecvrNtfrMap[serviceName], id)
	s.watcher.rpcRecvrNtfrMapLock.Unlock()
}

// 注册全体RPC服务变化通知接收者
func (s *Service) RegistryAllRpcNotifyReceiver() *AllServiceReceiverNotifier {
	recvrNtfr := new(AllServiceReceiverNotifier)
	recvrNtfr.Id = atomic.AddUint64(&s.watcher.receiverNotifierIdCounter, 1)
	recvrNtfr.CreateTime = time.Now().UnixNano()
	recvrNtfr.NotifyChannel = make(chan map[string][]entity.Instance, 0)
	s.watcher.rpcAllSvcRecvrNtfrMapLock.Lock()
	s.watcher.rpcAllSvcRecvrNtfrMap[recvrNtfr.Id] = recvrNtfr
	s.watcher.rpcAllSvcRecvrNtfrMapLock.Unlock()
	return recvrNtfr
}

// 取消全体RPC服务变化通知接收者
func (s *Service) CancelAllRpcNotifyReceiver(id uint64) {
	s.watcher.rpcAllSvcRecvrNtfrMapLock.Lock()
	delete(s.watcher.rpcAllSvcRecvrNtfrMap, id)
	s.watcher.rpcAllSvcRecvrNtfrMapLock.Unlock()
}
