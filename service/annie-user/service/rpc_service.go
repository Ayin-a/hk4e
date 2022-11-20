package service

import (
	"annie-user/dao"
)

type RpcService struct {
	dao     *dao.Dao
	service *Service
}

func NewRpcService(dao *dao.Dao, service *Service) (r *RpcService) {
	r = new(RpcService)
	r.service = service
	r.dao = dao
	return r
}
