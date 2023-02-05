package controller

import (
	"net/http"
	"strconv"

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
	VerifyFail := func() {
		context.JSON(http.StatusOK, &TokenVerifyRsp{
			Valid:         false,
			Forbid:        false,
			ForbidEndTime: 0,
			PlayerID:      0,
		})
	}
	tokenVerifyReq := new(TokenVerifyReq)
	err := context.ShouldBindJSON(tokenVerifyReq)
	if err != nil {
		VerifyFail()
		return
	}
	logger.Info("gate token verify, req: %v", tokenVerifyReq)
	accountId, err := strconv.ParseUint(tokenVerifyReq.AccountId, 10, 64)
	if err != nil {
		VerifyFail()
		return
	}
	account, err := c.dao.QueryAccountByField("accountID", accountId)
	if err != nil || account == nil {
		VerifyFail()
		return
	}
	if tokenVerifyReq.AccountToken != account.ComboToken {
		VerifyFail()
		return
	}
	if account.ComboTokenUsed {
		VerifyFail()
		return
	}
	_, err = c.dao.UpdateAccountFieldByFieldName("accountID", account.AccountID, "comboTokenUsed", true)
	if err != nil {
		VerifyFail()
		return
	}
	context.JSON(http.StatusOK, &TokenVerifyRsp{
		Valid:         true,
		Forbid:        account.Forbid,
		ForbidEndTime: uint32(account.ForbidEndTime),
		PlayerID:      uint32(account.PlayerID),
	})
}

type TokenResetReq struct {
	PlayerId uint32 `json:"playerId"`
}

type TokenResetRsp struct {
	Result bool `json:"result"`
}

func (c *Controller) gateTokenReset(context *gin.Context) {
	req := new(TokenResetReq)
	err := context.ShouldBindJSON(req)
	if err != nil {
		context.JSON(http.StatusOK, &TokenResetRsp{
			Result: false,
		})
		return
	}
	_, err = c.dao.UpdateAccountFieldByFieldName("PlayerID", req.PlayerId, "comboTokenUsed", false)
	if err != nil {
		context.JSON(http.StatusOK, &TokenResetRsp{
			Result: false,
		})
		return
	}
	context.JSON(http.StatusOK, &TokenResetRsp{
		Result: true,
	})
}
