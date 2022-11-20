package service

import (
	dbEntity "annie-user/entity/db"
	"flswld.com/common/utils/endec"
	"flswld.com/logger"
)

func (s *Service) RegisterUser(user *dbEntity.User) bool {
	user.Password = endec.Md5Str(user.Password)
	user.IsAdmin = false
	err := s.dao.InsertUser(user)
	if err != nil {
		logger.LOG.Error("insert user to db error: %v", err)
		return false
	}
	return true
}

func (s *Service) UpdateUser(user *dbEntity.User) bool {
	err := s.dao.UpdateUser(user)
	if err != nil {
		logger.LOG.Error("update user from db error: %v", err)
		return false
	}
	return true
}

func (s *Service) QueryUserByUsername(username string) *dbEntity.User {
	userList, err := s.dao.QueryUser(&dbEntity.User{Username: username})
	if err != nil {
		logger.LOG.Error("query user from db error: %v", err)
		return nil
	}
	if len(userList) == 0 {
		return nil
	} else if len(userList) == 1 {
		return &(userList[0])
	} else {
		logger.LOG.Error("find not only one user")
		return nil
	}
}
