package service

import (
	"flswld.com/light"
	"water/dao"
)

type Service struct {
	dao             *dao.Dao
	rpcUserConsumer *light.Consumer
	// token map
	// map[token]uid
	userTokenMap map[string]uint64
}

// 构造函数
func NewService(dao *dao.Dao, rpcUserConsumer *light.Consumer) (r *Service) {
	r = new(Service)
	r.rpcUserConsumer = rpcUserConsumer
	r.userTokenMap = make(map[string]uint64)
	r.dao = dao
	return r
}
