package proxy

import (
	"flswld.com/common/config"
	"flswld.com/logger"
	"fmt"
	"net/http"
	"net/http/httputil"
	"net/url"
	"strconv"
	"strings"
	"sync"
	"wind/entity"
)

type Proxy struct {
	service Service
}

// 服务
type Service struct {
	// 服务地址列表map
	serviceAddrMap *entity.AddressMap
	// 服务负载均衡索引map
	serviceLoadBalanceIndexMap     map[string]int
	serviceLoadBalanceIndexMapLock sync.Mutex
}

func NewProxy(addressMap *entity.AddressMap) (r *Proxy) {
	r = new(Proxy)
	r.service.serviceAddrMap = addressMap
	go r.startServer()
	return r
}

// 路由转发处理
func (p *Proxy) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	logger.LOG.Debug("[proxy:ServeHTTP] Request: %v", *r)
	urlParamDiv := strings.Index(r.RequestURI, "?")
	var reqUrl string
	if urlParamDiv != -1 {
		reqUrl = (r.RequestURI)[:urlParamDiv]
	} else {
		reqUrl = r.RequestURI
	}
	var svcNameStr = ""
	var stripPrefix = 0
	// 匹配服务
	for _, v := range config.CONF.Routes {
		if strings.Contains(reqUrl, v.ServicePredicates) {
			svcNameStr = v.ServiceName
			stripPrefix = v.StripPrefix
			break
		}
	}
	// 匹配服务失败
	if len(svcNameStr) == 0 {
		logger.LOG.Info("[proxy:ServeHTTP] 404 Not Found")
		_, _ = fmt.Fprintf(w, "404 Not Found")
		return
	}
	path := reqUrl
	// 去除路径前缀
	for i := 0; i < stripPrefix; i++ {
		path = path[strings.Index(path, "/")+1:]
		path = path[strings.Index(path, "/"):]
	}
	r.URL.Path = path
	var remote *url.URL
	p.service.serviceAddrMap.Lock.RLock()
	serviceAddr := p.service.serviceAddrMap.Map[svcNameStr]
	p.service.serviceAddrMap.Lock.RUnlock()
	// 服务不可用
	if len(serviceAddr) == 0 {
		logger.LOG.Info("[proxy:ServeHTTP] 503 Service Unavailable")
		_, _ = fmt.Fprintf(w, "503 Service Unavailable")
		return
	}
	p.service.serviceLoadBalanceIndexMapLock.Lock()
	serviceLoadBalanceIndex := p.service.serviceLoadBalanceIndexMap[svcNameStr]
	p.service.serviceLoadBalanceIndexMapLock.Unlock()
	// 下一个待轮询的服务已下线
	if int(serviceLoadBalanceIndex) >= len(serviceAddr) {
		logger.LOG.Info("[proxy:ServeHTTP] serviceLoadBalanceIndex out of range, len is: %d, but value is: %d", len(serviceAddr), serviceLoadBalanceIndex)
		serviceLoadBalanceIndex = 0
	}
	logger.LOG.Debug("[proxy:ServeHTTP] serviceLoadBalanceIndex: %d", serviceLoadBalanceIndex)
	remote, _ = url.Parse(string(serviceAddr[serviceLoadBalanceIndex]))
	logger.LOG.Debug("[proxy:ServeHTTP] remote: %v", remote)
	// 轮询
	p.service.serviceLoadBalanceIndexMapLock.Lock()
	if int(p.service.serviceLoadBalanceIndexMap[svcNameStr]) < len(serviceAddr)-1 {
		p.service.serviceLoadBalanceIndexMap[svcNameStr] += 1
	} else {
		p.service.serviceLoadBalanceIndexMap[svcNameStr] = 0
	}
	p.service.serviceLoadBalanceIndexMapLock.Unlock()
	proxy := httputil.NewSingleHostReverseProxy(remote)
	//p.log.Debug("Response: %v", w)
	proxy.ServeHTTP(w, r)
}

// 启动http路由转发
func (p *Proxy) startServer() {
	// 初始化服务负载均衡索引map
	p.service.serviceLoadBalanceIndexMap = make(map[string]int)
	for _, v := range config.CONF.Routes {
		p.service.serviceLoadBalanceIndexMap[v.ServiceName] = 0
	}
	port := strconv.FormatInt(int64(config.CONF.HttpPort), 10)
	logger.LOG.Info("[proxy:startServer] start listen port: %s", port)
	portStr := ":" + port
	// 启动
	err := http.ListenAndServe(portStr, p)
	if err != nil {
		logger.LOG.Error("[proxy:startServer] ListenAndServe fail ! err: %v", err)
		panic(err)
	}
}
