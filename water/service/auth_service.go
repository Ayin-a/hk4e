package service

import (
	"errors"
	providerApiEntity "flswld.com/annie-user-api/entity"
	"flswld.com/common/utils/endec"
	uuid "github.com/satori/go.uuid"
	"strconv"
	"time"
	"water/entity"
)

func (s *Service) generateAccessToken(user *providerApiEntity.User) (*entity.AccessToken, error) {
	accessToken, err := s.dao.InsertAccessToken(&entity.AccessToken{
		Uid:         user.Uid,
		Username:    user.Username,
		AccessToken: uuid.NewV4().String(),
		CreateTime:  strconv.FormatInt(time.Now().Unix(), 10),
	})
	return accessToken, err
}

func (s *Service) generateRefreshToken(user *providerApiEntity.User) (*entity.RefreshToken, error) {
	refreshToken, err := s.dao.InsertRefreshToken(&entity.RefreshToken{
		Uid:          user.Uid,
		Username:     user.Username,
		RefreshToken: uuid.NewV4().String(),
		CreateTime:   strconv.FormatInt(time.Now().Unix(), 10),
	})
	return refreshToken, err
}

func (s *Service) LoginAuth(user *providerApiEntity.User) (string, string, error) {
	userList := make([]providerApiEntity.User, 0)
	// 用户服务
	ok := s.rpcUserConsumer.CallFunction("RpcService", "RpcQueryUser", &providerApiEntity.User{Username: user.Username}, &userList)
	if !ok || len(userList) != 1 {
		return "", "", errors.New("query username error")
	}
	if userList[0].Password != endec.Md5Str(user.Password) {
		return "", "", errors.New("password error")
	}
	accessToken, err := s.generateAccessToken(&providerApiEntity.User{Uid: userList[0].Uid, Username: userList[0].Username})
	if err != nil {
		return "", "", errors.New("generate access token error")
	}
	refreshToken, err := s.generateRefreshToken(&providerApiEntity.User{Uid: userList[0].Uid, Username: userList[0].Username})
	if err != nil {
		return "", "", errors.New("generate refresh token error")
	}
	return accessToken.AccessToken, refreshToken.RefreshToken, nil
}

func (s *Service) VerifyAccessToken(accessToken string) bool {
	tokenList, err := s.dao.QueryAccessToken(&entity.AccessToken{AccessToken: accessToken})
	if err != nil || len(tokenList) == 0 {
		return false
	}
	createTime, err := strconv.ParseInt(tokenList[0].CreateTime, 10, 64)
	if err != nil || (time.Now().Unix()-createTime) > 1800 {
		return false
	}
	return true
}

func (s *Service) QueryUserByAccessToken(accessToken string) (*providerApiEntity.User, error) {
	tokenList, err := s.dao.QueryAccessToken(&entity.AccessToken{AccessToken: accessToken})
	if err != nil || len(tokenList) != 1 {
		return nil, errors.New("query access token error")
	}
	userList := make([]providerApiEntity.User, 0)
	// 用户服务
	ok := s.rpcUserConsumer.CallFunction("RpcService", "RpcQueryUser", &providerApiEntity.User{Uid: tokenList[0].Uid}, &userList)
	if !ok || len(userList) != 1 {
		return nil, errors.New("query user error")
	}
	return &(userList[0]), nil
}

func (s *Service) RefreshToken(refreshToken string) (string, error) {
	tokenList, err := s.dao.QueryRefreshToken(&entity.RefreshToken{RefreshToken: refreshToken})
	if err != nil || len(tokenList) == 0 {
		return "", errors.New("query refresh token error")
	}
	createTime, err := strconv.ParseInt(tokenList[0].CreateTime, 10, 64)
	if err != nil || (time.Now().Unix()-createTime) > 24*3600 {
		return "", errors.New("refresh token overtime")
	}
	accessToken, err := s.generateAccessToken(&providerApiEntity.User{Uid: tokenList[0].Uid, Username: tokenList[0].Username})
	if err != nil {
		return "", errors.New("generate access token error")
	}
	return accessToken.AccessToken, nil
}
