package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"

	pb "google.golang.org/protobuf/proto"
)

// 接口路由管理器

type HandlerFunc func(player *model.Player, payloadMsg pb.Message)

type RouteManager struct {
	gameManager *GameManager
	// k:cmdId v:HandlerFunc
	handlerFuncRouteMap map[uint16]HandlerFunc
}

func NewRouteManager(gameManager *GameManager) (r *RouteManager) {
	r = new(RouteManager)
	r.gameManager = gameManager
	r.handlerFuncRouteMap = make(map[uint16]HandlerFunc)
	return r
}

func (r *RouteManager) registerRouter(cmdId uint16, handlerFunc HandlerFunc) {
	r.handlerFuncRouteMap[cmdId] = handlerFunc
}

func (r *RouteManager) doRoute(cmdId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	handlerFunc, ok := r.handlerFuncRouteMap[cmdId]
	if !ok {
		logger.LOG.Error("no route for msg, cmdId: %v", cmdId)
		return
	}
	player := r.gameManager.userManager.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, uid: %v", userId)
		return
	}
	player.ClientSeq = clientSeq
	handlerFunc(player, payloadMsg)
}

func (r *RouteManager) InitRoute() {
	r.registerRouter(cmd.PlayerSetPauseReq, r.gameManager.PlayerSetPauseReq)
	r.registerRouter(cmd.EnterSceneReadyReq, r.gameManager.EnterSceneReadyReq)
	r.registerRouter(cmd.PathfindingEnterSceneReq, r.gameManager.PathfindingEnterSceneReq)
	r.registerRouter(cmd.GetScenePointReq, r.gameManager.GetScenePointReq)
	r.registerRouter(cmd.GetSceneAreaReq, r.gameManager.GetSceneAreaReq)
	r.registerRouter(cmd.SceneInitFinishReq, r.gameManager.SceneInitFinishReq)
	r.registerRouter(cmd.EnterSceneDoneReq, r.gameManager.EnterSceneDoneReq)
	r.registerRouter(cmd.EnterWorldAreaReq, r.gameManager.EnterWorldAreaReq)
	r.registerRouter(cmd.PostEnterSceneReq, r.gameManager.PostEnterSceneReq)
	r.registerRouter(cmd.TowerAllDataReq, r.gameManager.TowerAllDataReq)
	r.registerRouter(cmd.SceneTransToPointReq, r.gameManager.SceneTransToPointReq)
	r.registerRouter(cmd.MarkMapReq, r.gameManager.MarkMapReq)
	r.registerRouter(cmd.ChangeAvatarReq, r.gameManager.ChangeAvatarReq)
	r.registerRouter(cmd.SetUpAvatarTeamReq, r.gameManager.SetUpAvatarTeamReq)
	r.registerRouter(cmd.ChooseCurAvatarTeamReq, r.gameManager.ChooseCurAvatarTeamReq)
	r.registerRouter(cmd.GetGachaInfoReq, r.gameManager.GetGachaInfoReq)
	r.registerRouter(cmd.DoGachaReq, r.gameManager.DoGachaReq)
	r.registerRouter(cmd.QueryPathReq, r.gameManager.QueryPathReq)
	r.registerRouter(cmd.CombatInvocationsNotify, r.gameManager.CombatInvocationsNotify)
	r.registerRouter(cmd.AbilityInvocationsNotify, r.gameManager.AbilityInvocationsNotify)
	r.registerRouter(cmd.ClientAbilityInitFinishNotify, r.gameManager.ClientAbilityInitFinishNotify)
	r.registerRouter(cmd.EvtDoSkillSuccNotify, r.gameManager.EvtDoSkillSuccNotify)
	r.registerRouter(cmd.ClientAbilityChangeNotify, r.gameManager.ClientAbilityChangeNotify)
	r.registerRouter(cmd.EntityAiSyncNotify, r.gameManager.EntityAiSyncNotify)
	r.registerRouter(cmd.WearEquipReq, r.gameManager.WearEquipReq)
	r.registerRouter(cmd.ChangeGameTimeReq, r.gameManager.ChangeGameTimeReq)
	r.registerRouter(cmd.GetPlayerSocialDetailReq, r.gameManager.GetPlayerSocialDetailReq)
	r.registerRouter(cmd.SetPlayerBirthdayReq, r.gameManager.SetPlayerBirthdayReq)
	r.registerRouter(cmd.SetNameCardReq, r.gameManager.SetNameCardReq)
	r.registerRouter(cmd.SetPlayerSignatureReq, r.gameManager.SetPlayerSignatureReq)
	r.registerRouter(cmd.SetPlayerNameReq, r.gameManager.SetPlayerNameReq)
	r.registerRouter(cmd.SetPlayerHeadImageReq, r.gameManager.SetPlayerHeadImageReq)
	r.registerRouter(cmd.GetAllUnlockNameCardReq, r.gameManager.GetAllUnlockNameCardReq)
	r.registerRouter(cmd.GetPlayerFriendListReq, r.gameManager.GetPlayerFriendListReq)
	r.registerRouter(cmd.GetPlayerAskFriendListReq, r.gameManager.GetPlayerAskFriendListReq)
	r.registerRouter(cmd.AskAddFriendReq, r.gameManager.AskAddFriendReq)
	r.registerRouter(cmd.DealAddFriendReq, r.gameManager.DealAddFriendReq)
	r.registerRouter(cmd.GetOnlinePlayerListReq, r.gameManager.GetOnlinePlayerListReq)
	r.registerRouter(cmd.PlayerApplyEnterMpReq, r.gameManager.PlayerApplyEnterMpReq)
	r.registerRouter(cmd.PlayerApplyEnterMpResultReq, r.gameManager.PlayerApplyEnterMpResultReq)
	r.registerRouter(cmd.PlayerGetForceQuitBanInfoReq, r.gameManager.PlayerGetForceQuitBanInfoReq)
	r.registerRouter(cmd.GetShopmallDataReq, r.gameManager.GetShopmallDataReq)
	r.registerRouter(cmd.GetShopReq, r.gameManager.GetShopReq)
	r.registerRouter(cmd.BuyGoodsReq, r.gameManager.BuyGoodsReq)
	r.registerRouter(cmd.McoinExchangeHcoinReq, r.gameManager.McoinExchangeHcoinReq)
	r.registerRouter(cmd.AvatarChangeCostumeReq, r.gameManager.AvatarChangeCostumeReq)
	r.registerRouter(cmd.AvatarWearFlycloakReq, r.gameManager.AvatarWearFlycloakReq)
	r.registerRouter(cmd.PullRecentChatReq, r.gameManager.PullRecentChatReq)
	r.registerRouter(cmd.PullPrivateChatReq, r.gameManager.PullPrivateChatReq)
	r.registerRouter(cmd.PrivateChatReq, r.gameManager.PrivateChatReq)
	r.registerRouter(cmd.ReadPrivateChatReq, r.gameManager.ReadPrivateChatReq)
	r.registerRouter(cmd.PlayerChatReq, r.gameManager.PlayerChatReq)
	r.registerRouter(cmd.BackMyWorldReq, r.gameManager.BackMyWorldReq)
	r.registerRouter(cmd.ChangeWorldToSingleModeReq, r.gameManager.ChangeWorldToSingleModeReq)
	r.registerRouter(cmd.SceneKickPlayerReq, r.gameManager.SceneKickPlayerReq)
	r.registerRouter(cmd.ChangeMpTeamAvatarReq, r.gameManager.ChangeMpTeamAvatarReq)
	r.registerRouter(cmd.SceneAvatarStaminaStepReq, r.gameManager.SceneAvatarStaminaStepReq)
}

func (r *RouteManager) RouteHandle(netMsg *cmd.NetMsg) {
	switch netMsg.EventId {
	case cmd.NormalMsg:
		r.doRoute(netMsg.CmdId, netMsg.UserId, netMsg.ClientSeq, netMsg.PayloadMessage)
	case cmd.UserRegNotify:
		r.gameManager.OnReg(netMsg.UserId, netMsg.ClientSeq, netMsg.PayloadMessage)
	case cmd.UserLoginNotify:
		r.gameManager.OnLogin(netMsg.UserId, netMsg.ClientSeq)
	case cmd.UserOfflineNotify:
		r.gameManager.OnUserOffline(netMsg.UserId)
	case cmd.ClientRttNotify:
		r.gameManager.ClientRttNotify(netMsg.UserId, netMsg.ClientRtt)
	case cmd.ClientTimeNotify:
		r.gameManager.ClientTimeNotify(netMsg.UserId, netMsg.ClientTime)
	}
}
