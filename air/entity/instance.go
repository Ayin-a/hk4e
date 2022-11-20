package entity

// 服务实例实体类
type Instance struct {
	ServiceName  string `json:"service_name"`
	InstanceName string `json:"instance_name"`
	InstanceAddr string `json:"instance_addr"`
}
