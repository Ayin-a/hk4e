package rpc

import (
	"flswld.com/gate-hk4e-api/gm"
	"flswld.com/light"
)

type RpcManager struct {
	hk4eGatewayConsumer *light.Consumer
}

func NewRpcManager(hk4eGatewayConsumer *light.Consumer) (r *RpcManager) {
	r = new(RpcManager)
	r.hk4eGatewayConsumer = hk4eGatewayConsumer
	return r
}

func (r *RpcManager) SendKickPlayerToHk4eGateway(userId uint32) {
	info := new(gm.KickPlayerInfo)
	info.UserId = userId
	// 客户端提示信息为服务器断开连接
	info.Reason = uint32(5)
	var result bool
	ok := r.hk4eGatewayConsumer.CallFunction("RpcManager", "KickPlayer", &info, &result)
	if ok == true && result == true {
		return
	}
	return
}
