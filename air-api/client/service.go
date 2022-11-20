package client

// 服务实例
type Instance struct {
	ServiceName  string `json:"service_name"`
	InstanceName string `json:"instance_name"`
	InstanceAddr string `json:"instance_addr"`
}

// 注册中心响应实体类
type ResponseData struct {
	Code     int                   `json:"code"`
	Service  map[string][]Instance `json:"service"`
	Instance []Instance            `json:"instance"`
}
