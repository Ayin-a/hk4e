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
	// k:cmdId v:HandlerFunc
	handlerFuncRouteMap map[uint16]HandlerFunc
}

func NewRouteManager() (r *RouteManager) {
	r = new(RouteManager)
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
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, uid: %v", userId)
		// 临时为了调试便捷搞的重连 生产环境请务必去除 不然新用户会一直重连不能进入
		// GAME_MANAGER.ReconnectPlayer(userId)
		return
	}
	player.ClientSeq = clientSeq
	handlerFunc(player, payloadMsg)
}

func (r *RouteManager) InitRoute() {
	r.registerRouter(cmd.UnionCmdNotify, GAME_MANAGER.UnionCmdNotify)
	r.registerRouter(cmd.MassiveEntityElementOpBatchNotify, GAME_MANAGER.MassiveEntityElementOpBatchNotify)
	r.registerRouter(cmd.ToTheMoonEnterSceneReq, GAME_MANAGER.ToTheMoonEnterSceneReq)
	r.registerRouter(cmd.PlayerSetPauseReq, GAME_MANAGER.PlayerSetPauseReq)
	r.registerRouter(cmd.EnterSceneReadyReq, GAME_MANAGER.EnterSceneReadyReq)
	r.registerRouter(cmd.PathfindingEnterSceneReq, GAME_MANAGER.PathfindingEnterSceneReq)
	r.registerRouter(cmd.GetScenePointReq, GAME_MANAGER.GetScenePointReq)
	r.registerRouter(cmd.GetSceneAreaReq, GAME_MANAGER.GetSceneAreaReq)
	r.registerRouter(cmd.SceneInitFinishReq, GAME_MANAGER.SceneInitFinishReq)
	r.registerRouter(cmd.EnterSceneDoneReq, GAME_MANAGER.EnterSceneDoneReq)
	r.registerRouter(cmd.EnterWorldAreaReq, GAME_MANAGER.EnterWorldAreaReq)
	r.registerRouter(cmd.PostEnterSceneReq, GAME_MANAGER.PostEnterSceneReq)
	r.registerRouter(cmd.TowerAllDataReq, GAME_MANAGER.TowerAllDataReq)
	r.registerRouter(cmd.SceneTransToPointReq, GAME_MANAGER.SceneTransToPointReq)
	r.registerRouter(cmd.MarkMapReq, GAME_MANAGER.MarkMapReq)
	r.registerRouter(cmd.ChangeAvatarReq, GAME_MANAGER.ChangeAvatarReq)
	r.registerRouter(cmd.SetUpAvatarTeamReq, GAME_MANAGER.SetUpAvatarTeamReq)
	r.registerRouter(cmd.ChooseCurAvatarTeamReq, GAME_MANAGER.ChooseCurAvatarTeamReq)
	r.registerRouter(cmd.GetGachaInfoReq, GAME_MANAGER.GetGachaInfoReq)
	r.registerRouter(cmd.DoGachaReq, GAME_MANAGER.DoGachaReq)
	r.registerRouter(cmd.QueryPathReq, GAME_MANAGER.QueryPathReq)
	r.registerRouter(cmd.CombatInvocationsNotify, GAME_MANAGER.CombatInvocationsNotify)
	r.registerRouter(cmd.AbilityInvocationsNotify, GAME_MANAGER.AbilityInvocationsNotify)
	r.registerRouter(cmd.ClientAbilityInitFinishNotify, GAME_MANAGER.ClientAbilityInitFinishNotify)
	r.registerRouter(cmd.EvtDoSkillSuccNotify, GAME_MANAGER.EvtDoSkillSuccNotify)
	r.registerRouter(cmd.ClientAbilityChangeNotify, GAME_MANAGER.ClientAbilityChangeNotify)
	r.registerRouter(cmd.EntityAiSyncNotify, GAME_MANAGER.EntityAiSyncNotify)
	r.registerRouter(cmd.WearEquipReq, GAME_MANAGER.WearEquipReq)
	r.registerRouter(cmd.ChangeGameTimeReq, GAME_MANAGER.ChangeGameTimeReq)
	r.registerRouter(cmd.GetPlayerSocialDetailReq, GAME_MANAGER.GetPlayerSocialDetailReq)
	r.registerRouter(cmd.SetPlayerBirthdayReq, GAME_MANAGER.SetPlayerBirthdayReq)
	r.registerRouter(cmd.SetNameCardReq, GAME_MANAGER.SetNameCardReq)
	r.registerRouter(cmd.SetPlayerSignatureReq, GAME_MANAGER.SetPlayerSignatureReq)
	r.registerRouter(cmd.SetPlayerNameReq, GAME_MANAGER.SetPlayerNameReq)
	r.registerRouter(cmd.SetPlayerHeadImageReq, GAME_MANAGER.SetPlayerHeadImageReq)
	r.registerRouter(cmd.GetAllUnlockNameCardReq, GAME_MANAGER.GetAllUnlockNameCardReq)
	r.registerRouter(cmd.GetPlayerFriendListReq, GAME_MANAGER.GetPlayerFriendListReq)
	r.registerRouter(cmd.GetPlayerAskFriendListReq, GAME_MANAGER.GetPlayerAskFriendListReq)
	r.registerRouter(cmd.AskAddFriendReq, GAME_MANAGER.AskAddFriendReq)
	r.registerRouter(cmd.DealAddFriendReq, GAME_MANAGER.DealAddFriendReq)
	r.registerRouter(cmd.GetOnlinePlayerListReq, GAME_MANAGER.GetOnlinePlayerListReq)
	r.registerRouter(cmd.PlayerApplyEnterMpReq, GAME_MANAGER.PlayerApplyEnterMpReq)
	r.registerRouter(cmd.PlayerApplyEnterMpResultReq, GAME_MANAGER.PlayerApplyEnterMpResultReq)
	r.registerRouter(cmd.PlayerGetForceQuitBanInfoReq, GAME_MANAGER.PlayerGetForceQuitBanInfoReq)
	r.registerRouter(cmd.GetShopmallDataReq, GAME_MANAGER.GetShopmallDataReq)
	r.registerRouter(cmd.GetShopReq, GAME_MANAGER.GetShopReq)
	r.registerRouter(cmd.BuyGoodsReq, GAME_MANAGER.BuyGoodsReq)
	r.registerRouter(cmd.McoinExchangeHcoinReq, GAME_MANAGER.McoinExchangeHcoinReq)
	r.registerRouter(cmd.AvatarChangeCostumeReq, GAME_MANAGER.AvatarChangeCostumeReq)
	r.registerRouter(cmd.AvatarWearFlycloakReq, GAME_MANAGER.AvatarWearFlycloakReq)
	r.registerRouter(cmd.PullRecentChatReq, GAME_MANAGER.PullRecentChatReq)
	r.registerRouter(cmd.PullPrivateChatReq, GAME_MANAGER.PullPrivateChatReq)
	r.registerRouter(cmd.PrivateChatReq, GAME_MANAGER.PrivateChatReq)
	r.registerRouter(cmd.ReadPrivateChatReq, GAME_MANAGER.ReadPrivateChatReq)
	r.registerRouter(cmd.PlayerChatReq, GAME_MANAGER.PlayerChatReq)
	r.registerRouter(cmd.BackMyWorldReq, GAME_MANAGER.BackMyWorldReq)
	r.registerRouter(cmd.ChangeWorldToSingleModeReq, GAME_MANAGER.ChangeWorldToSingleModeReq)
	r.registerRouter(cmd.SceneKickPlayerReq, GAME_MANAGER.SceneKickPlayerReq)
	r.registerRouter(cmd.ChangeMpTeamAvatarReq, GAME_MANAGER.ChangeMpTeamAvatarReq)
	r.registerRouter(cmd.SceneAvatarStaminaStepReq, GAME_MANAGER.SceneAvatarStaminaStepReq)
	r.registerRouter(cmd.JoinPlayerSceneReq, GAME_MANAGER.JoinPlayerSceneReq)
	r.registerRouter(cmd.EvtAvatarEnterFocusNotify, GAME_MANAGER.EvtAvatarEnterFocusNotify)
	r.registerRouter(cmd.EvtAvatarUpdateFocusNotify, GAME_MANAGER.EvtAvatarUpdateFocusNotify)
	r.registerRouter(cmd.EvtAvatarExitFocusNotify, GAME_MANAGER.EvtAvatarExitFocusNotify)
	r.registerRouter(cmd.EvtEntityRenderersChangedNotify, GAME_MANAGER.EvtEntityRenderersChangedNotify)
	r.registerRouter(cmd.EvtCreateGadgetNotify, GAME_MANAGER.EvtCreateGadgetNotify)
	r.registerRouter(cmd.EvtDestroyGadgetNotify, GAME_MANAGER.EvtDestroyGadgetNotify)
	r.registerRouter(cmd.CreateVehicleReq, GAME_MANAGER.CreateVehicleReq)
	r.registerRouter(cmd.VehicleInteractReq, GAME_MANAGER.VehicleInteractReq)
}

func (r *RouteManager) RouteHandle(netMsg *cmd.NetMsg) {
	switch netMsg.EventId {
	case cmd.NormalMsg:
		r.doRoute(netMsg.CmdId, netMsg.UserId, netMsg.ClientSeq, netMsg.PayloadMessage)
	case cmd.UserRegNotify:
		GAME_MANAGER.OnReg(netMsg.UserId, netMsg.ClientSeq, netMsg.PayloadMessage)
	case cmd.UserLoginNotify:
		GAME_MANAGER.OnLogin(netMsg.UserId, netMsg.ClientSeq)
	case cmd.UserOfflineNotify:
		GAME_MANAGER.OnUserOffline(netMsg.UserId)
	case cmd.ClientRttNotify:
		GAME_MANAGER.ClientRttNotify(netMsg.UserId, netMsg.ClientRtt)
	case cmd.ClientTimeNotify:
		GAME_MANAGER.ClientTimeNotify(netMsg.UserId, netMsg.ClientTime)
	}
}
