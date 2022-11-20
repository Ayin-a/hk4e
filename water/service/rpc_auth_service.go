package service

import (
	providerApiEntity "flswld.com/annie-user-api/entity"
	"flswld.com/common/utils/object"
)

func (s *RpcService) RpcVerifyAccessToken(accessToken string, res *bool) error {
	valid := s.service.VerifyAccessToken(accessToken)
	err := object.ObjectDeepCopy(valid, res)
	if err != nil {
		return err
	}
	return nil
}

func (s *RpcService) RpcQueryUserByAccessToken(accessToken string, res *providerApiEntity.User) error {
	user, err := s.service.QueryUserByAccessToken(accessToken)
	if err != nil {
		return err
	}
	err = object.ObjectDeepCopy(user, res)
	if err != nil {
		return err
	}
	return nil
}
