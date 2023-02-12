package service

import (
	"hk4e/dispatch/dao"
)

type Service struct {
	dao *dao.Dao
}

// UserPasswordChange 用户密码改变
func (s *Service) UserPasswordChange(uid uint32) bool {
	// http登录态失效
	_, err := s.dao.UpdateAccountFieldByFieldName("PlayerID", uid, "TokenCreateTime", 0)
	if err != nil {
		return false
	}
	// TODO 游戏内登录态失效
	return true
}

// ForbidUser 封号
func (s *Service) ForbidUser(uid uint32, forbidEndTime uint64) bool {
	// 写入账号封禁信息
	_, err := s.dao.UpdateAccountFieldByFieldName("PlayerID", uid, "Forbid", true)
	if err != nil {
		return false
	}
	_, err = s.dao.UpdateAccountFieldByFieldName("PlayerID", uid, "ForbidEndTime", forbidEndTime)
	if err != nil {
		return false
	}
	// TODO 游戏强制下线
	return true
}

// UnForbidUser 解封
func (s *Service) UnForbidUser(uid uint32) bool {
	// 解除账号封禁
	_, err := s.dao.UpdateAccountFieldByFieldName("PlayerID", uid, "Forbid", false)
	if err != nil {
		return false
	}
	return true
}
