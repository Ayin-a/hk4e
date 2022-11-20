package game

import (
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	"game-hk4e/model"
	pb "google.golang.org/protobuf/proto"
)

type HandlerFunc func(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message)

type RouteManager struct {
	gameManager *GameManager
	// k:apiId v:HandlerFunc
	handlerFuncRouteMap map[uint16]HandlerFunc
}

func NewRouteManager(gameManager *GameManager) (r *RouteManager) {
	r = new(RouteManager)
	r.gameManager = gameManager
	r.handlerFuncRouteMap = make(map[uint16]HandlerFunc)
	return r
}

func (r *RouteManager) registerRouter(apiId uint16, handlerFunc HandlerFunc) {
	r.handlerFuncRouteMap[apiId] = handlerFunc
}

func (r *RouteManager) doRoute(apiId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	handlerFunc, ok := r.handlerFuncRouteMap[apiId]
	if !ok {
		logger.LOG.Error("no route for msg, apiId: %v", apiId)
		return
	}
	player := r.gameManager.userManager.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, userId: %v", userId)
		return
	}
	player.ClientSeq = clientSeq
	handlerFunc(userId, player, clientSeq, payloadMsg)
}

func (r *RouteManager) InitRoute() {
	r.registerRouter(proto.ApiPlayerSetPauseReq, r.gameManager.PlayerSetPauseReq)
	r.registerRouter(proto.ApiEnterSceneReadyReq, r.gameManager.EnterSceneReadyReq)
	r.registerRouter(proto.ApiPathfindingEnterSceneReq, r.gameManager.PathfindingEnterSceneReq)
	r.registerRouter(proto.ApiGetScenePointReq, r.gameManager.GetScenePointReq)
	r.registerRouter(proto.ApiGetSceneAreaReq, r.gameManager.GetSceneAreaReq)
	r.registerRouter(proto.ApiSceneInitFinishReq, r.gameManager.SceneInitFinishReq)
	r.registerRouter(proto.ApiEnterSceneDoneReq, r.gameManager.EnterSceneDoneReq)
	r.registerRouter(proto.ApiEnterWorldAreaReq, r.gameManager.EnterWorldAreaReq)
	r.registerRouter(proto.ApiPostEnterSceneReq, r.gameManager.PostEnterSceneReq)
	r.registerRouter(proto.ApiTowerAllDataReq, r.gameManager.TowerAllDataReq)
	r.registerRouter(proto.ApiSceneTransToPointReq, r.gameManager.SceneTransToPointReq)
	r.registerRouter(proto.ApiMarkMapReq, r.gameManager.MarkMapReq)
	r.registerRouter(proto.ApiChangeAvatarReq, r.gameManager.ChangeAvatarReq)
	r.registerRouter(proto.ApiSetUpAvatarTeamReq, r.gameManager.SetUpAvatarTeamReq)
	r.registerRouter(proto.ApiChooseCurAvatarTeamReq, r.gameManager.ChooseCurAvatarTeamReq)
	r.registerRouter(proto.ApiGetGachaInfoReq, r.gameManager.GetGachaInfoReq)
	r.registerRouter(proto.ApiDoGachaReq, r.gameManager.DoGachaReq)
	r.registerRouter(proto.ApiQueryPathReq, r.gameManager.QueryPathReq)
	r.registerRouter(proto.ApiCombatInvocationsNotify, r.gameManager.CombatInvocationsNotify)
	r.registerRouter(proto.ApiAbilityInvocationsNotify, r.gameManager.AbilityInvocationsNotify)
	r.registerRouter(proto.ApiClientAbilityInitFinishNotify, r.gameManager.ClientAbilityInitFinishNotify)
	r.registerRouter(proto.ApiEntityAiSyncNotify, r.gameManager.EntityAiSyncNotify)
	r.registerRouter(proto.ApiWearEquipReq, r.gameManager.WearEquipReq)
	r.registerRouter(proto.ApiChangeGameTimeReq, r.gameManager.ChangeGameTimeReq)
	r.registerRouter(proto.ApiGetPlayerSocialDetailReq, r.gameManager.GetPlayerSocialDetailReq)
	r.registerRouter(proto.ApiSetPlayerBirthdayReq, r.gameManager.SetPlayerBirthdayReq)
	r.registerRouter(proto.ApiSetNameCardReq, r.gameManager.SetNameCardReq)
	r.registerRouter(proto.ApiSetPlayerSignatureReq, r.gameManager.SetPlayerSignatureReq)
	r.registerRouter(proto.ApiSetPlayerNameReq, r.gameManager.SetPlayerNameReq)
	r.registerRouter(proto.ApiSetPlayerHeadImageReq, r.gameManager.SetPlayerHeadImageReq)
	r.registerRouter(proto.ApiGetAllUnlockNameCardReq, r.gameManager.GetAllUnlockNameCardReq)
	r.registerRouter(proto.ApiGetPlayerFriendListReq, r.gameManager.GetPlayerFriendListReq)
	r.registerRouter(proto.ApiGetPlayerAskFriendListReq, r.gameManager.GetPlayerAskFriendListReq)
	r.registerRouter(proto.ApiAskAddFriendReq, r.gameManager.AskAddFriendReq)
	r.registerRouter(proto.ApiDealAddFriendReq, r.gameManager.DealAddFriendReq)
	r.registerRouter(proto.ApiGetOnlinePlayerListReq, r.gameManager.GetOnlinePlayerListReq)
	r.registerRouter(proto.ApiPlayerApplyEnterMpReq, r.gameManager.PlayerApplyEnterMpReq)
	r.registerRouter(proto.ApiPlayerApplyEnterMpResultReq, r.gameManager.PlayerApplyEnterMpResultReq)
	r.registerRouter(proto.ApiPlayerGetForceQuitBanInfoReq, r.gameManager.PlayerGetForceQuitBanInfoReq)
	r.registerRouter(proto.ApiGetShopmallDataReq, r.gameManager.GetShopmallDataReq)
	r.registerRouter(proto.ApiGetShopReq, r.gameManager.GetShopReq)
	r.registerRouter(proto.ApiBuyGoodsReq, r.gameManager.BuyGoodsReq)
	r.registerRouter(proto.ApiMcoinExchangeHcoinReq, r.gameManager.McoinExchangeHcoinReq)
	r.registerRouter(proto.ApiAvatarChangeCostumeReq, r.gameManager.AvatarChangeCostumeReq)
	r.registerRouter(proto.ApiAvatarWearFlycloakReq, r.gameManager.AvatarWearFlycloakReq)
	r.registerRouter(proto.ApiPullRecentChatReq, r.gameManager.PullRecentChatReq)
	r.registerRouter(proto.ApiPullPrivateChatReq, r.gameManager.PullPrivateChatReq)
	r.registerRouter(proto.ApiPrivateChatReq, r.gameManager.PrivateChatReq)
	r.registerRouter(proto.ApiReadPrivateChatReq, r.gameManager.ReadPrivateChatReq)
	r.registerRouter(proto.ApiPlayerChatReq, r.gameManager.PlayerChatReq)
	r.registerRouter(proto.ApiBackMyWorldReq, r.gameManager.BackMyWorldReq)
	r.registerRouter(proto.ApiChangeWorldToSingleModeReq, r.gameManager.ChangeWorldToSingleModeReq)
	r.registerRouter(proto.ApiSceneKickPlayerReq, r.gameManager.SceneKickPlayerReq)
	r.registerRouter(proto.ApiChangeMpTeamAvatarReq, r.gameManager.ChangeMpTeamAvatarReq)
}

func (r *RouteManager) RouteHandle(netMsg *proto.NetMsg) {
	switch netMsg.EventId {
	case proto.NormalMsg:
		r.doRoute(netMsg.ApiId, netMsg.UserId, netMsg.ClientSeq, netMsg.PayloadMessage)
	case proto.UserRegNotify:
		r.gameManager.OnReg(netMsg.UserId, netMsg.ClientSeq, netMsg.PayloadMessage)
	case proto.UserLoginNotify:
		r.gameManager.OnLogin(netMsg.UserId, netMsg.ClientSeq)
	case proto.UserOfflineNotify:
		r.gameManager.OnUserOffline(netMsg.UserId)
	case proto.ClientRttNotify:
		r.gameManager.ClientRttNotify(netMsg.UserId, netMsg.ClientRtt)
	case proto.ClientTimeNotify:
		r.gameManager.ClientTimeNotify(netMsg.UserId, netMsg.ClientTime)
	}
}
