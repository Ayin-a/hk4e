package light

import (
	airClient "flswld.com/air-api/client"
	"flswld.com/common/config"
	"net"
	"net/http"
	"net/rpc"
	"strconv"
)

type Provider struct {
	httpInstanceName string
	rpcInstanceName  string
	listen           net.Listener
	keepalive        bool
}

func NewRpcProvider(service any) (r *Provider) {
	r = new(Provider)

	// 服务注册
	r.keepalive = true
	r.rpcInstanceName = RegisterRpcService(&r.keepalive)

	// 开启本地RPC服务监听
	_ = rpc.Register(service)
	rpc.HandleHTTP()
	addr := ":" + strconv.FormatInt(int64(config.CONF.Light.Port), 10)
	listen, err := net.Listen("tcp", addr)
	if err != nil {
		panic("Listen() fail")
	}
	r.listen = listen
	go r.startRpcListen()

	return r
}

func NewHttpProvider() (r *Provider) {
	r = new(Provider)

	// 服务注册
	airClient.SetAirAddr(config.CONF.Air.Addr, config.CONF.Air.Port)
	r.keepalive = true
	r.httpInstanceName = RegisterHttpService(&r.keepalive)

	return r
}

func (p *Provider) startRpcListen() {
	_ = http.Serve(p.listen, nil)
}

func (p *Provider) CloseRpcProvider() {
	p.keepalive = false
	CancelRpcService(p.rpcInstanceName)
}

func (p *Provider) CloseHttpProvider() {
	p.keepalive = false
	CancelHttpService(p.httpInstanceName)
}
