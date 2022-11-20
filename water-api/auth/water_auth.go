package auth

import (
	"errors"
	providerApiEntity "flswld.com/annie-user-api/entity"
	"flswld.com/light"
	"sync"
	"time"
)

var tokenUserMap map[string]*providerApiEntity.User
var tokenUserMapLock sync.RWMutex
var tokenValidMap map[string]bool
var tokenValidMapLock sync.RWMutex
var tokenTimeoutMap map[string]int64
var tokenTimeoutMapLock sync.RWMutex

func init() {
	tokenUserMap = make(map[string]*providerApiEntity.User)
	tokenValidMap = make(map[string]bool)
	tokenTimeoutMap = make(map[string]int64)
	go CleanTimeoutToken()
}

func CleanTimeoutToken() {
	ticker := time.NewTicker(time.Second * 300)
	for {
		now := time.Now().Unix()
		deleteTokenList := make([]string, 0)
		tokenTimeoutMapLock.RLock()
		for accessToken, createTime := range tokenTimeoutMap {
			if now-createTime > 3600*24 {
				deleteTokenList = append(deleteTokenList, accessToken)
			}
		}
		tokenTimeoutMapLock.RUnlock()
		tokenUserMapLock.Lock()
		tokenValidMapLock.Lock()
		tokenTimeoutMapLock.Lock()
		for _, accessToken := range deleteTokenList {
			delete(tokenUserMap, accessToken)
			delete(tokenValidMap, accessToken)
			delete(tokenTimeoutMap, accessToken)
		}
		tokenUserMapLock.Unlock()
		tokenValidMapLock.Unlock()
		tokenTimeoutMapLock.Unlock()
		<-ticker.C
	}
}

func WaterQueryUserByAccessToken(consumer *light.Consumer, accessToken string) (*providerApiEntity.User, error) {
	tokenUserMapLock.RLock()
	value, ok := tokenUserMap[accessToken]
	tokenUserMapLock.RUnlock()
	if ok {
		return value, nil
	}
	user := new(providerApiEntity.User)
	err := consumer.CallFunction("RpcService", "RpcQueryUserByAccessToken", accessToken, user)
	if err == false {
		return nil, errors.New("rpc call fail")
	}
	tokenUserMapLock.Lock()
	tokenUserMap[accessToken] = user
	tokenUserMapLock.Unlock()
	return user, nil
}

func WaterVerifyAccessToken(consumer *light.Consumer, accessToken string) (bool, error) {
	tokenValidMapLock.RLock()
	_, ok := tokenValidMap[accessToken]
	tokenValidMapLock.RUnlock()
	if ok {
		tokenTimeoutMapLock.RLock()
		tokenCreateTime := tokenTimeoutMap[accessToken]
		tokenTimeoutMapLock.RUnlock()
		if time.Now().Unix()-tokenCreateTime <= 3600*24 {
			return true, nil
		} else {
			tokenUserMapLock.Lock()
			delete(tokenUserMap, accessToken)
			tokenUserMapLock.Unlock()
			tokenValidMapLock.Lock()
			delete(tokenValidMap, accessToken)
			tokenValidMapLock.Unlock()
			tokenTimeoutMapLock.Lock()
			delete(tokenTimeoutMap, accessToken)
			tokenTimeoutMapLock.Unlock()
			return false, nil
		}
	}
	var valid bool
	err := consumer.CallFunction("RpcService", "RpcVerifyAccessToken", accessToken, &valid)
	if err == false {
		return false, errors.New("rpc call fail")
	}
	if valid {
		tokenValidMapLock.Lock()
		tokenValidMap[accessToken] = true
		tokenValidMapLock.Unlock()
		tokenTimeoutMapLock.Lock()
		tokenTimeoutMap[accessToken] = time.Now().Unix()
		tokenTimeoutMapLock.Unlock()
		return true, nil
	} else {
		return false, nil
	}
}
