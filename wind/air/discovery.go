package air

import (
	airClient "flswld.com/air-api/client"
	"flswld.com/common/config"
	"flswld.com/logger"
	"strings"
	"time"
	"wind/entity"
)

type Air struct {
	serviceAddressMap *entity.AddressMap
}

func NewAir(addressMap *entity.AddressMap) (r *Air) {
	r = new(Air)
	r.serviceAddressMap = addressMap
	airClient.SetAirAddr(config.CONF.Air.Addr, config.CONF.Air.Port)
	go r.fetchHttpService()
	go r.pollHttpService()
	return r
}

func (a *Air) syncServiceMap(responseData *airClient.ResponseData) {
	a.serviceAddressMap.Lock.Lock()
	for _, v := range config.CONF.Routes {
		instanceSlice := responseData.Service[v.ServiceName]
		serviceAddress := make([]string, 0)
		for _, vv := range instanceSlice {
			if strings.Contains(vv.InstanceAddr, "http://") {
				serviceAddress = append(serviceAddress, vv.InstanceAddr)
			}
		}
		a.serviceAddressMap.Map[v.ServiceName] = serviceAddress
	}
	a.serviceAddressMap.Lock.Unlock()
}

// 从注册中心获取所有服务
func (a *Air) fetchHttpService() {
	ticker := time.NewTicker(time.Second * 600)
	for {
		var responseData *airClient.ResponseData
		var err error
		responseData, err = airClient.FetchAllHttpService()
		if err != nil {
			logger.LOG.Error("fetch all http service error: %v", err)
			return
		}
		a.syncServiceMap(responseData)
		a.serviceAddressMap.Lock.RLock()
		logger.LOG.Debug("fetch tick finished, serviceAddressMap: %v", a.serviceAddressMap.Map)
		a.serviceAddressMap.Lock.RUnlock()
		<-ticker.C
	}
}

// 从注册中心长轮询监听所有服务变化
func (a *Air) pollHttpService() {
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
		responseData, err = airClient.PollAllHttpService()
		if err != nil {
			logger.LOG.Error("poll all http service error: %v", err)
			continue
		}
		a.syncServiceMap(responseData)
		a.serviceAddressMap.Lock.RLock()
		logger.LOG.Debug("poll finished, serviceAddressMap: %v", a.serviceAddressMap.Map)
		a.serviceAddressMap.Lock.RUnlock()
	}
}
