package controller

import (
	"github.com/gin-gonic/gin"
	"hk4e/pkg/logger"
	"net/http"
	"strconv"
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
	tokenVerifyReq := new(TokenVerifyReq)
	err := context.ShouldBindJSON(tokenVerifyReq)
	if err != nil {
		return
	}
	logger.LOG.Debug("gate token verify, req: %v", tokenVerifyReq)
	accountId, err := strconv.ParseUint(tokenVerifyReq.AccountId, 10, 64)
	if err != nil {
		return
	}
	account, err := c.dao.QueryAccountByField("accountID", accountId)
	if err != nil || account == nil {
		context.JSON(http.StatusOK, &TokenVerifyRsp{
			Valid:         false,
			Forbid:        false,
			ForbidEndTime: 0,
			PlayerID:      0,
		})
		return
	}
	context.JSON(http.StatusOK, &TokenVerifyRsp{
		Valid:         true,
		Forbid:        account.Forbid,
		ForbidEndTime: uint32(account.ForbidEndTime),
		PlayerID:      uint32(account.PlayerID),
	})
}

type DispatchEc2bSeedRsp struct {
	Seed string `json:"seed"`
}

func (c *Controller) getDispatchEc2bSeed(context *gin.Context) {
	dispatchEc2bSeed := c.dispatchEc2b.Seed()
	context.JSON(http.StatusOK, &DispatchEc2bSeedRsp{
		Seed: strconv.FormatUint(dispatchEc2bSeed, 10),
	})
}
