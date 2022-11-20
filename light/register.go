package light

import (
	airClient "flswld.com/air-api/client"
	"flswld.com/common/config"
	"flswld.com/logger"
	"os"
	"strconv"
	"time"
)

// 生成服务注册实例名
func getInstanceName() (string, error) {
	host, err := os.Hostname()
	if err != nil {
		return "", err
	}
	instName := host + "-" + strconv.FormatInt(time.Now().UnixNano(), 10)
	return instName, nil
}

// 注册HTTP服务
func RegisterHttpService(keepalive *bool) string {
	inst := new(airClient.Instance)
	inst.ServiceName = config.CONF.Air.ServiceName
	instName, err := getInstanceName()
	if err != nil {
		logger.LOG.Error("get instance name error: %v", err)
		panic(err)
	}
	inst.InstanceName = instName
	ipAddr := os.Getenv("IP_ADDR")
	if len(ipAddr) == 0 {
		panic("ip addr env is nil")
	}
	addr := "http://" + ipAddr + ":" + strconv.Itoa(config.CONF.HttpPort)
	inst.InstanceAddr = addr

	var response *airClient.ResponseData
	response, err = airClient.RegisterHttpService(*inst)
	if err != nil {
		panic(err)
	}

	if response.Code != 0 {
		panic("response code error")
	}
	go httpServiceKeepalive(*inst, keepalive)
	logger.LOG.Info("register http service success, instance: %v", *inst)
	return instName
}

// HTTP服务心跳保持
func httpServiceKeepalive(inst airClient.Instance, keepalive *bool) {
	ticker := time.NewTicker(time.Second * 15)
	for {
		<-ticker.C

		if !*keepalive {
			return
		}

		var response *airClient.ResponseData
		var err error
		response, err = airClient.KeepaliveHttpService(inst)
		if err != nil {
			logger.LOG.Error("http keepalive error: %v", err)
			continue
		}

		if response.Code != 0 {
			logger.LOG.Error("response code error")
			continue
		}
	}
}

// 取消注册HTTP服务
func CancelHttpService(instanceName string) {
	inst := new(airClient.Instance)
	inst.ServiceName = config.CONF.Air.ServiceName
	inst.InstanceName = instanceName

	var response *airClient.ResponseData
	var err error
	response, err = airClient.CancelHttpService(*inst)
	if err != nil {
		logger.LOG.Error("cancel http service error: %v", err)
		return
	}

	if response.Code != 0 {
		logger.LOG.Error("response code error")
		return
	}
}

// 注册RPC服务
func RegisterRpcService(keepalive *bool) string {
	inst := new(airClient.Instance)
	inst.ServiceName = config.CONF.Air.ServiceName
	instName, err := getInstanceName()
	if err != nil {
		logger.LOG.Error("get instance name error: %v", err)
		panic(err)
	}
	inst.InstanceName = instName
	ipAddr := os.Getenv("IP_ADDR")
	if len(ipAddr) == 0 {
		panic("ip addr env is nil")
	}
	addr := ipAddr + ":" + strconv.Itoa(config.CONF.Light.Port)
	inst.InstanceAddr = addr

	var response *airClient.ResponseData
	response, err = airClient.RegisterRpcService(*inst)
	if err != nil {
		panic(err)
	}

	if response.Code != 0 {
		panic("response code error")
	}
	go rpcServiceKeepalive(*inst, keepalive)
	logger.LOG.Info("register rpc service success, instance: %v", *inst)
	return instName
}

// RPC服务心跳保持
func rpcServiceKeepalive(inst airClient.Instance, keepalive *bool) {
	ticker := time.NewTicker(time.Second * 15)
	for {
		<-ticker.C

		if !*keepalive {
			return
		}

		var response *airClient.ResponseData
		var err error
		response, err = airClient.KeepaliveRpcService(inst)
		if err != nil {
			logger.LOG.Error("rpc keepalive error: %v", err)
			continue
		}

		if response.Code != 0 {
			logger.LOG.Error("response code error")
			continue
		}
	}
}

// 取消注册RPC服务
func CancelRpcService(instanceName string) {
	inst := new(airClient.Instance)
	inst.ServiceName = config.CONF.Air.ServiceName
	inst.InstanceName = instanceName

	var response *airClient.ResponseData
	var err error
	response, err = airClient.CancelRpcService(*inst)
	if err != nil {
		logger.LOG.Error("cancel rpc service error: %v", err)
		return
	}

	if response.Code != 0 {
		logger.LOG.Error("response code error")
		return
	}
}
