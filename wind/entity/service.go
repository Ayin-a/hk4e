package entity

import "sync"

// 服务列表
type AddressMap struct {
	Map  map[string][]string
	Lock sync.RWMutex
}
