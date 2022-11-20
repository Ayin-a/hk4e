package service

import (
	providerApiEntity "flswld.com/annie-user-api/entity"
	uuid "github.com/satori/go.uuid"
	"water/entity"
)

func (s *Service) GetMemoryToken(login *entity.Login) (auth bool, token string) {
	user := new(providerApiEntity.User)
	// 用户服务
	_ = s.rpcUserConsumer.CallFunction("Service", "LoadUserByUserName", login.Username, user)
	if user.Uid != 0 {
		if login.Password == user.Password {
			auth = true
			token = uuid.NewV4().String()
			s.userTokenMap[token] = user.Uid
		} else {
			auth = false
		}
	} else {
		auth = false
	}
	return auth, token
}

func (s *Service) CheckMemoryToken(token string) (valid bool, uid uint64) {
	uid = s.userTokenMap[token]
	if uid != 0 {
		return true, uid
	} else {
		return false, 0
	}
}
