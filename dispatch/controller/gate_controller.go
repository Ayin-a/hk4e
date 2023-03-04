package controller

import (
	"net/http"
	"strconv"
	"time"

	"hk4e/pkg/logger"

	"github.com/gin-gonic/gin"
)

type TokenVerifyReq struct {
	AccountId    string `json:"accountId"`
	AccountToken string `json:"accountToken"`
}

type TokenVerifyRsp struct {
	Valid         bool   `json:"valid"`
	Forbid        bool   `json:"forbid"`
	ForbidEndTime uint32 `json:"forbidEndTime"`
	PlayerID      uint32 `json:"playerID"`
}

func (c *Controller) gateTokenVerify(context *gin.Context) {
	verifyFail := func(playerID uint32) {
		context.JSON(http.StatusOK, &TokenVerifyRsp{
			Valid:         false,
			Forbid:        false,
			ForbidEndTime: 0,
			PlayerID:      playerID,
		})
	}
	tokenVerifyReq := new(TokenVerifyReq)
	err := context.ShouldBindJSON(tokenVerifyReq)
	if err != nil {
		verifyFail(0)
		return
	}
	logger.Info("gate token verify, req: %v", tokenVerifyReq)
	accountId, err := strconv.ParseUint(tokenVerifyReq.AccountId, 10, 64)
	if err != nil {
		verifyFail(0)
		return
	}
	account, err := c.dao.QueryAccountByField("AccountID", accountId)
	if err != nil || account == nil {
		verifyFail(0)
		return
	}
	if tokenVerifyReq.AccountToken != account.ComboToken {
		verifyFail(account.PlayerID)
		return
	}
	if time.Now().UnixMilli()-int64(account.ComboTokenCreateTime) > time.Hour.Milliseconds()*24 {
		verifyFail(account.PlayerID)
		return
	}
	context.JSON(http.StatusOK, &TokenVerifyRsp{
		Valid:         true,
		Forbid:        account.Forbid,
		ForbidEndTime: account.ForbidEndTime,
		PlayerID:      account.PlayerID,
	})
}
