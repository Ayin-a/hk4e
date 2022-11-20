package service

import (
	dbEntity "annie-user/entity/db"
	"errors"
	rpcEntity "flswld.com/annie-user-api/entity"
	"flswld.com/common/utils/object"
	"flswld.com/logger"
)

func (s *RpcService) RpcQueryUser(user *rpcEntity.User, res *[]rpcEntity.User) error {
	dbUser := new(dbEntity.User)
	dbUser.Uid = user.Uid
	dbUser.Username = user.Username
	dbUser.Password = user.Password
	dbUser.IsAdmin = user.IsAdmin
	userList, err := s.dao.QueryUser(dbUser)
	if err != nil {
		logger.LOG.Error("QueryUser error: %v", err)
		return errors.New("query user error")
	}
	err = object.ObjectDeepCopy(userList, res)
	if err != nil {
		logger.LOG.Error("ObjectDeepCopy error: %v", err)
		return errors.New("query user error")
	}
	return nil
}
