package service

import (
	"hk4e/dispatch/dao"
)

type Service struct {
	dao *dao.Dao
}

// 用户密码改变
func (f *Service) UserPasswordChange(uid uint32) bool {
	// dispatch登录态失效
	_, err := f.dao.UpdateAccountFieldByFieldName("uid", uid, "token", "")
	if err != nil {
		return false
	}
	// 游戏内登录态失效
	account, err := f.dao.QueryAccountByField("uid", uid)
	if err != nil {
		return false
	}
	if account == nil {
		return false
	}
	//convId, exist := f.getConvIdByUserId(uint32(account.PlayerID))
	//if !exist {
	//	return true
	//}
	//f.kcpEventInput <- &net.KcpEvent{
	//	ConvId:       convId,
	//	EventId:      net.KcpConnForceClose,
	//	EventMessage: uint32(kcp.EnetAccountPasswordChange),
	//}
	return true
}

// 封号
func (f *Service) ForbidUser(info *ForbidUserInfo) bool {
	if info == nil {
		return false
	}
	// 写入账号封禁信息
	_, err := f.dao.UpdateAccountFieldByFieldName("uid", info.UserId, "forbid", true)
	if err != nil {
		return false
	}
	_, err = f.dao.UpdateAccountFieldByFieldName("uid", info.UserId, "forbidEndTime", info.ForbidEndTime)
	if err != nil {
		return false
	}
	// 游戏强制下线
	account, err := f.dao.QueryAccountByField("uid", info.UserId)
	if err != nil {
		return false
	}
	if account == nil {
		return false
	}
	//convId, exist := f.getConvIdByUserId(uint32(account.PlayerID))
	//if !exist {
	//	return true
	//}
	//f.kcpEventInput <- &net.KcpEvent{
	//	ConvId:       convId,
	//	EventId:      net.KcpConnForceClose,
	//	EventMessage: uint32(kcp.EnetServerKillClient),
	//}
	return true
}

// 解封
func (s *Service) UnForbidUser(uid uint32) bool {
	// 解除账号封禁
	_, err := s.dao.UpdateAccountFieldByFieldName("uid", uid, "forbid", false)
	if err != nil {
		return false
	}
	return true
}
