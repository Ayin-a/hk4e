package light

import (
	airClient "flswld.com/air-api/client"
	"flswld.com/common/config"
	"flswld.com/logger"
	"net/rpc"
	"sync"
	"time"
)

type Consumer struct {
	serviceName string
	serviceList *ServiceList
	//httpInstanceName string
	//keepalive        bool
}

type ServiceInstance struct {
	// 服务地址
	serviceAddress string
	// 服务连接
	serviceClient *rpc.Client
}

type ServiceList struct {
	// 服务实列列表
	serviceInstanceList []*ServiceInstance
	// 服务负载均衡索引
	serviceLoadBalanceIndex int
	lock                    sync.RWMutex
}

func NewRpcConsumer(serviceName string) (r *Consumer) {
	r = new(Consumer)
	r.serviceName = serviceName
	r.serviceList = new(ServiceList)

	// 服务注册
	//r.keepalive = true
	//r.httpInstanceName = RegisterHttpService(conf, log, &r.keepalive)

	// 服务发现
	airClient.SetAirAddr(config.CONF.Air.Addr, config.CONF.Air.Port)
	go r.fetchAirService()
	go r.pollAirService()

	return r
}

func (c *Consumer) CloseRpcConsumer() {
	//c.keepalive = false
	//CancelHttpService(c.conf, c.log, c.httpInstanceName)
}

func (c *Consumer) CallFunction(svcName string, funcName string, req any, res any) bool {
	serviceInstance := c.getServiceInstanceLoadBalance()
	if serviceInstance == nil {
		logger.LOG.Error("no rpc provider find, service: %v", c.serviceName)
		return false
	}
	if serviceInstance.serviceClient == nil {
		serviceClient, err := rpc.DialHTTP("tcp", serviceInstance.serviceAddress)
		if err != nil {
			logger.LOG.Error("rpc connect error: %v", err)
			return false
		}
		serviceInstance.serviceClient = serviceClient
	}
	serviceMethod := svcName + "." + funcName
	err := serviceInstance.serviceClient.Call(serviceMethod, req, res)
	if err != nil {
		logger.LOG.Error("rpc call error: %v", err)
		return false
	}
	return true
}

func (c *Consumer) syncServiceList(responseData *airClient.ResponseData) {
	serviceAddressSlice := make([]string, 0)
	for _, v := range responseData.Instance {
		serviceAddressSlice = append(serviceAddressSlice, v.InstanceAddr)
	}

	c.serviceList.lock.RLock()
	oldList := c.serviceList.serviceInstanceList
	c.serviceList.lock.RUnlock()
	// 相同服务列表
	sameList := make([]*ServiceInstance, 0)
	// 新增服务列表
	addList := make([]*ServiceInstance, 0)
	// 删除服务列表
	delList := make([]*ServiceInstance, 0)
	// 找出相同的服务
	for _, v := range serviceAddressSlice {
		for _, vv := range oldList {
			if v == vv.serviceAddress {
				sameList = append(sameList, vv)
			}
		}
	}
	// 找出新增的服务
	for _, v := range serviceAddressSlice {
		hasItem := false
		for _, vv := range sameList {
			if v == vv.serviceAddress {
				hasItem = true
			}
		}
		if !hasItem {
			serviceInstance := new(ServiceInstance)
			serviceInstance.serviceAddress = v
			serviceInstance.serviceClient = nil
			addList = append(addList, serviceInstance)
			logger.LOG.Info("add service: %v, addr: %v", c.serviceName, serviceInstance.serviceAddress)
		}
	}
	// 找出删除的服务
	for _, v := range oldList {
		hasItem := false
		for _, vv := range sameList {
			if v.serviceAddress == vv.serviceAddress {
				hasItem = true
			}
		}
		if !hasItem {
			delList = append(delList, v)
			logger.LOG.Info("delete service: %v, addr: %v", c.serviceName, v.serviceAddress)
		}
	}
	c.serviceList.lock.Lock()
	c.serviceList.serviceInstanceList = make([]*ServiceInstance, len(sameList)+len(addList))
	copy(c.serviceList.serviceInstanceList, sameList)
	copy(c.serviceList.serviceInstanceList[len(sameList):], addList)
	c.serviceList.lock.Unlock()
}

// 从注册中心获取服务实例
func (c *Consumer) fetchAirService() {
	ticker := time.NewTicker(time.Second * 600)
	for {
		var responseData *airClient.ResponseData
		var err error
		responseData, err = airClient.FetchRpcService(c.serviceName)
		if err != nil {
			logger.LOG.Error("fetch all rpc service error: %v", err)
			return
		}
		if responseData.Code != 0 {
			logger.LOG.Error("response code error")
			return
		}
		if len(responseData.Instance) == 0 {
			logger.LOG.Error("no %v service instance find", c.serviceName)
			return
		}
		c.syncServiceList(responseData)
		<-ticker.C
	}
}

// 从注册中心长轮询监听服务实例变化
func (c *Consumer) pollAirService() {
	lastTime := int64(0)
	for {
		nowTime := time.Now().UnixNano()
		if time.Duration(nowTime-lastTime) < time.Second {
			time.Sleep(time.Millisecond * 100)
			continue
		}
		lastTime = time.Now().UnixNano()
		var responseData *airClient.ResponseData
		var err error
		responseData, err = airClient.PollRpcService(c.serviceName)
		if err != nil {
			logger.LOG.Error("poll all rpc service error: %v", err)
			continue
		}
		if responseData.Code != 0 {
			logger.LOG.Error("response code error")
			continue
		}
		if len(responseData.Instance) == 0 {
			logger.LOG.Error("no %v service instance find", c.serviceName)
		}
		c.syncServiceList(responseData)
	}
}

// 负载均衡的方式获取服务实例
func (c *Consumer) getServiceInstanceLoadBalance() (r *ServiceInstance) {
	c.serviceList.lock.RLock()
	index := c.serviceList.serviceLoadBalanceIndex
	length := len(c.serviceList.serviceInstanceList)
	c.serviceList.lock.RUnlock()

	if length == 0 {
		return nil
	}

	// 下一个待轮询的服务已下线
	if index >= length {
		logger.LOG.Error("serviceLoadBalanceIndex out of range, len is: %d, but value is: %d", length, index)
		index = 0
	}

	c.serviceList.lock.RLock()
	r = c.serviceList.serviceInstanceList[index]
	c.serviceList.lock.RUnlock()

	c.serviceList.lock.Lock()
	// 轮询
	if c.serviceList.serviceLoadBalanceIndex < length-1 {
		c.serviceList.serviceLoadBalanceIndex += 1
	} else {
		c.serviceList.serviceLoadBalanceIndex = 0
	}
	c.serviceList.lock.Unlock()

	return r
}
