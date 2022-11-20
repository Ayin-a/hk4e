package rpc

import (
	"flswld.com/gate-hk4e-api/gm"
	"github.com/pkg/errors"
)

// rpc interface

// 改变网关开放状态
func (r *RpcManager) ChangeGateOpenState(isOpen *bool, result *bool) error {
	if isOpen == nil || result == nil {
		return errors.New("param is nil")
	}
	*result = r.forwardManager.ChangeGateOpenState(*isOpen)
	return nil
}

// 剔除玩家下线
func (r *RpcManager) KickPlayer(info *gm.KickPlayerInfo, result *bool) error {
	if info == nil || result == nil {
		return errors.New("param is nil")
	}
	*result = r.forwardManager.KickPlayer(info)
	return nil
}

// 获取网关在线玩家信息
func (r *RpcManager) GetOnlineUser(uid *uint32, list *gm.OnlineUserList) error {
	if uid == nil || list == nil {
		return errors.New("param is nil")
	}
	list = r.forwardManager.GetOnlineUser(*uid)
	return nil
}

// 用户密码改变
func (r *RpcManager) UserPasswordChange(uid *uint32, result *bool) error {
	if uid == nil || result == nil {
		return errors.New("param is nil")
	}
	*result = r.forwardManager.UserPasswordChange(*uid)
	return nil
}

// 封号
func (r *RpcManager) ForbidUser(info *gm.ForbidUserInfo, result *bool) error {
	if info == nil || result == nil {
		return errors.New("param is nil")
	}
	*result = r.forwardManager.ForbidUser(info)
	return nil
}

// 解封
func (r *RpcManager) UnForbidUser(uid *uint32, result *bool) error {
	if uid == nil || result == nil {
		return errors.New("param is nil")
	}
	*result = r.forwardManager.UnForbidUser(*uid)
	return nil
}
