package game

import (
	"hk4e/common/mq"
	"hk4e/gate/kcp"
	"hk4e/gs/model"
	"hk4e/node/api"
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
	r.initRoute()
	return r
}

func (r *RouteManager) registerRouter(cmdId uint16, handlerFunc HandlerFunc) {
	r.handlerFuncRouteMap[cmdId] = handlerFunc
}

func (r *RouteManager) doRoute(cmdId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	handlerFunc, ok := r.handlerFuncRouteMap[cmdId]
	if !ok {
		logger.Error("no route for msg, cmdId: %v", cmdId)
		return
	}
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		GAME_MANAGER.DisconnectPlayer(userId, kcp.EnetNotFoundSession)
		return
	}
	if !player.Online {
		logger.Error("player not online, uid: %v", userId)
		return
	}
	player.ClientSeq = clientSeq
	SELF = player
	handlerFunc(player, payloadMsg)
	SELF = nil
}

func (r *RouteManager) initRoute() {
	r.registerRouter(cmd.QueryPathReq, GAME_MANAGER.QueryPathReq)
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
	r.registerRouter(cmd.SceneEntityDrownReq, GAME_MANAGER.SceneEntityDrownReq)
	r.registerRouter(cmd.GetOnlinePlayerInfoReq, GAME_MANAGER.GetOnlinePlayerInfoReq)
	r.registerRouter(cmd.GCGAskDuelReq, GAME_MANAGER.GCGAskDuelReq)
	r.registerRouter(cmd.GCGInitFinishReq, GAME_MANAGER.GCGInitFinishReq)
	r.registerRouter(cmd.GCGOperationReq, GAME_MANAGER.GCGOperationReq)
	r.registerRouter(cmd.ObstacleModifyNotify, GAME_MANAGER.ObstacleModifyNotify)
	r.registerRouter(cmd.AvatarUpgradeReq, GAME_MANAGER.AvatarUpgradeReq)
	r.registerRouter(cmd.AvatarPromoteReq, GAME_MANAGER.AvatarPromoteReq)
}

func (r *RouteManager) RouteHandle(netMsg *mq.NetMsg) {
	switch netMsg.MsgType {
	case mq.MsgTypeGame:
		if netMsg.OriginServerType != api.GATE {
			return
		}
		gameMsg := netMsg.GameMsg
		switch netMsg.EventId {
		case mq.NormalMsg:
			if gameMsg.CmdId == cmd.PlayerLoginReq {
				GAME_MANAGER.PlayerLoginReq(gameMsg.UserId, gameMsg.ClientSeq, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
				return
			}
			if gameMsg.CmdId == cmd.SetPlayerBornDataReq {
				GAME_MANAGER.SetPlayerBornDataReq(gameMsg.UserId, gameMsg.ClientSeq, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
				return
			}
			r.doRoute(gameMsg.CmdId, gameMsg.UserId, gameMsg.ClientSeq, gameMsg.PayloadMessage)
		}
	case mq.MsgTypeConnCtrl:
		if netMsg.OriginServerType != api.GATE {
			return
		}
		connCtrlMsg := netMsg.ConnCtrlMsg
		switch netMsg.EventId {
		case mq.ClientRttNotify:
			GAME_MANAGER.ClientRttNotify(connCtrlMsg.UserId, connCtrlMsg.ClientRtt)
		case mq.ClientTimeNotify:
			GAME_MANAGER.ClientTimeNotify(connCtrlMsg.UserId, connCtrlMsg.ClientTime)
		case mq.UserOfflineNotify:
			GAME_MANAGER.OnUserOffline(connCtrlMsg.UserId, &ChangeGsInfo{
				IsChangeGs: false,
			})
		}
	case mq.MsgTypeServer:
		serverMsg := netMsg.ServerMsg
		switch netMsg.EventId {
		case mq.ServerUserOnlineStateChangeNotify:
			logger.Debug("remote user online state change, uid: %v, online: %v", serverMsg.UserId, serverMsg.IsOnline)
			USER_MANAGER.SetRemoteUserOnlineState(serverMsg.UserId, serverMsg.IsOnline, netMsg.OriginServerAppId)
		case mq.ServerAppidBindNotify:
			GAME_MANAGER.ServerAppidBindNotify(serverMsg.UserId, serverMsg.FightServerAppId, serverMsg.JoinHostUserId)
		case mq.ServerUserMpReq:
			GAME_MANAGER.ServerUserMpReq(serverMsg.UserMpInfo, netMsg.OriginServerAppId)
		case mq.ServerUserMpRsp:
			GAME_MANAGER.ServerUserMpRsp(serverMsg.UserMpInfo)
		case mq.ServerChatMsgNotify:
			GAME_MANAGER.ServerChatMsgNotify(serverMsg.ChatMsgInfo)
		case mq.ServerAddFriendNotify:
			GAME_MANAGER.ServerAddFriendNotify(serverMsg.AddFriendInfo)
		}
	}
}
