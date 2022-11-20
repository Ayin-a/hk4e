package service

import (
	"water/dao"
)

type RpcService struct {
	dao     *dao.Dao
	service *Service
}

// 构造函数
func NewRpcService(dao *dao.Dao, service *Service) (r *RpcService) {
	r = new(RpcService)
	r.service = service
	r.dao = dao
	return r
}
