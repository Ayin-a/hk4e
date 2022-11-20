package service

import (
	"annie-user/dao"
)

type Service struct {
	dao *dao.Dao
}

func NewService(dao *dao.Dao) (r *Service) {
	r = new(Service)
	r.dao = dao
	return r
}
