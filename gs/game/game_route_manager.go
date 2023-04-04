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
		GAME.KickPlayer(userId, kcp.EnetNotFoundSession)
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
	r.registerRouter(cmd.SetPlayerBornDataReq, GAME.SetPlayerBornDataReq)
	r.registerRouter(cmd.QueryPathReq, GAME.QueryPathReq)
	r.registerRouter(cmd.UnionCmdNotify, GAME.UnionCmdNotify)
	r.registerRouter(cmd.MassiveEntityElementOpBatchNotify, GAME.MassiveEntityElementOpBatchNotify)
	r.registerRouter(cmd.ToTheMoonEnterSceneReq, GAME.ToTheMoonEnterSceneReq)
	r.registerRouter(cmd.PlayerSetPauseReq, GAME.PlayerSetPauseReq)
	r.registerRouter(cmd.EnterSceneReadyReq, GAME.EnterSceneReadyReq)
	r.registerRouter(cmd.PathfindingEnterSceneReq, GAME.PathfindingEnterSceneReq)
	r.registerRouter(cmd.GetScenePointReq, GAME.GetScenePointReq)
	r.registerRouter(cmd.GetSceneAreaReq, GAME.GetSceneAreaReq)
	r.registerRouter(cmd.SceneInitFinishReq, GAME.SceneInitFinishReq)
	r.registerRouter(cmd.EnterSceneDoneReq, GAME.EnterSceneDoneReq)
	r.registerRouter(cmd.EnterWorldAreaReq, GAME.EnterWorldAreaReq)
	r.registerRouter(cmd.PostEnterSceneReq, GAME.PostEnterSceneReq)
	r.registerRouter(cmd.TowerAllDataReq, GAME.TowerAllDataReq)
	r.registerRouter(cmd.SceneTransToPointReq, GAME.SceneTransToPointReq)
	r.registerRouter(cmd.UnlockTransPointReq, GAME.UnlockTransPointReq)
	r.registerRouter(cmd.MarkMapReq, GAME.MarkMapReq)
	r.registerRouter(cmd.ChangeAvatarReq, GAME.ChangeAvatarReq)
	r.registerRouter(cmd.SetUpAvatarTeamReq, GAME.SetUpAvatarTeamReq)
	r.registerRouter(cmd.ChooseCurAvatarTeamReq, GAME.ChooseCurAvatarTeamReq)
	r.registerRouter(cmd.GetGachaInfoReq, GAME.GetGachaInfoReq)
	r.registerRouter(cmd.DoGachaReq, GAME.DoGachaReq)
	r.registerRouter(cmd.CombatInvocationsNotify, GAME.CombatInvocationsNotify)
	r.registerRouter(cmd.AbilityInvocationsNotify, GAME.AbilityInvocationsNotify)
	r.registerRouter(cmd.ClientAbilityInitFinishNotify, GAME.ClientAbilityInitFinishNotify)
	r.registerRouter(cmd.EvtDoSkillSuccNotify, GAME.EvtDoSkillSuccNotify)
	r.registerRouter(cmd.ClientAbilityChangeNotify, GAME.ClientAbilityChangeNotify)
	r.registerRouter(cmd.EntityAiSyncNotify, GAME.EntityAiSyncNotify)
	r.registerRouter(cmd.WearEquipReq, GAME.WearEquipReq)
	r.registerRouter(cmd.ChangeGameTimeReq, GAME.ChangeGameTimeReq)
	r.registerRouter(cmd.GetPlayerSocialDetailReq, GAME.GetPlayerSocialDetailReq)
	r.registerRouter(cmd.SetPlayerBirthdayReq, GAME.SetPlayerBirthdayReq)
	r.registerRouter(cmd.SetNameCardReq, GAME.SetNameCardReq)
	r.registerRouter(cmd.SetPlayerSignatureReq, GAME.SetPlayerSignatureReq)
	r.registerRouter(cmd.SetPlayerNameReq, GAME.SetPlayerNameReq)
	r.registerRouter(cmd.SetPlayerHeadImageReq, GAME.SetPlayerHeadImageReq)
	r.registerRouter(cmd.GetAllUnlockNameCardReq, GAME.GetAllUnlockNameCardReq)
	r.registerRouter(cmd.GetPlayerFriendListReq, GAME.GetPlayerFriendListReq)
	r.registerRouter(cmd.GetPlayerAskFriendListReq, GAME.GetPlayerAskFriendListReq)
	r.registerRouter(cmd.AskAddFriendReq, GAME.AskAddFriendReq)
	r.registerRouter(cmd.DealAddFriendReq, GAME.DealAddFriendReq)
	r.registerRouter(cmd.GetOnlinePlayerListReq, GAME.GetOnlinePlayerListReq)
	r.registerRouter(cmd.PlayerApplyEnterMpReq, GAME.PlayerApplyEnterMpReq)
	r.registerRouter(cmd.PlayerApplyEnterMpResultReq, GAME.PlayerApplyEnterMpResultReq)
	r.registerRouter(cmd.PlayerGetForceQuitBanInfoReq, GAME.PlayerGetForceQuitBanInfoReq)
	r.registerRouter(cmd.GetShopmallDataReq, GAME.GetShopmallDataReq)
	r.registerRouter(cmd.GetShopReq, GAME.GetShopReq)
	r.registerRouter(cmd.BuyGoodsReq, GAME.BuyGoodsReq)
	r.registerRouter(cmd.McoinExchangeHcoinReq, GAME.McoinExchangeHcoinReq)
	r.registerRouter(cmd.AvatarChangeCostumeReq, GAME.AvatarChangeCostumeReq)
	r.registerRouter(cmd.AvatarWearFlycloakReq, GAME.AvatarWearFlycloakReq)
	r.registerRouter(cmd.PullRecentChatReq, GAME.PullRecentChatReq)
	r.registerRouter(cmd.PullPrivateChatReq, GAME.PullPrivateChatReq)
	r.registerRouter(cmd.PrivateChatReq, GAME.PrivateChatReq)
	r.registerRouter(cmd.ReadPrivateChatReq, GAME.ReadPrivateChatReq)
	r.registerRouter(cmd.PlayerChatReq, GAME.PlayerChatReq)
	r.registerRouter(cmd.BackMyWorldReq, GAME.BackMyWorldReq)
	r.registerRouter(cmd.ChangeWorldToSingleModeReq, GAME.ChangeWorldToSingleModeReq)
	r.registerRouter(cmd.SceneKickPlayerReq, GAME.SceneKickPlayerReq)
	r.registerRouter(cmd.ChangeMpTeamAvatarReq, GAME.ChangeMpTeamAvatarReq)
	r.registerRouter(cmd.SceneAvatarStaminaStepReq, GAME.SceneAvatarStaminaStepReq)
	r.registerRouter(cmd.JoinPlayerSceneReq, GAME.JoinPlayerSceneReq)
	r.registerRouter(cmd.EvtAvatarEnterFocusNotify, GAME.EvtAvatarEnterFocusNotify)
	r.registerRouter(cmd.EvtAvatarUpdateFocusNotify, GAME.EvtAvatarUpdateFocusNotify)
	r.registerRouter(cmd.EvtAvatarExitFocusNotify, GAME.EvtAvatarExitFocusNotify)
	r.registerRouter(cmd.EvtEntityRenderersChangedNotify, GAME.EvtEntityRenderersChangedNotify)
	r.registerRouter(cmd.EvtCreateGadgetNotify, GAME.EvtCreateGadgetNotify)
	r.registerRouter(cmd.EvtDestroyGadgetNotify, GAME.EvtDestroyGadgetNotify)
	r.registerRouter(cmd.CreateVehicleReq, GAME.CreateVehicleReq)
	r.registerRouter(cmd.VehicleInteractReq, GAME.VehicleInteractReq)
	r.registerRouter(cmd.SceneEntityDrownReq, GAME.SceneEntityDrownReq)
	r.registerRouter(cmd.GetOnlinePlayerInfoReq, GAME.GetOnlinePlayerInfoReq)
	r.registerRouter(cmd.GCGAskDuelReq, GAME.GCGAskDuelReq)
	r.registerRouter(cmd.GCGInitFinishReq, GAME.GCGInitFinishReq)
	r.registerRouter(cmd.GCGOperationReq, GAME.GCGOperationReq)
	r.registerRouter(cmd.ObstacleModifyNotify, GAME.ObstacleModifyNotify)
	r.registerRouter(cmd.AvatarUpgradeReq, GAME.AvatarUpgradeReq)
	r.registerRouter(cmd.AvatarPromoteReq, GAME.AvatarPromoteReq)
	r.registerRouter(cmd.CalcWeaponUpgradeReturnItemsReq, GAME.CalcWeaponUpgradeReturnItemsReq)
	r.registerRouter(cmd.WeaponUpgradeReq, GAME.WeaponUpgradeReq)
	r.registerRouter(cmd.WeaponPromoteReq, GAME.WeaponPromoteReq)
	r.registerRouter(cmd.WeaponAwakenReq, GAME.WeaponAwakenReq)
	r.registerRouter(cmd.AvatarPromoteGetRewardReq, GAME.AvatarPromoteGetRewardReq)
	r.registerRouter(cmd.SetEquipLockStateReq, GAME.SetEquipLockStateReq)
	r.registerRouter(cmd.TakeoffEquipReq, GAME.TakeoffEquipReq)
	r.registerRouter(cmd.AddQuestContentProgressReq, GAME.AddQuestContentProgressReq)
	r.registerRouter(cmd.NpcTalkReq, GAME.NpcTalkReq)
	r.registerRouter(cmd.EvtAiSyncSkillCdNotify, GAME.EvtAiSyncSkillCdNotify)
	r.registerRouter(cmd.EvtAiSyncCombatThreatInfoNotify, GAME.EvtAiSyncCombatThreatInfoNotify)
	r.registerRouter(cmd.EntityConfigHashNotify, GAME.EntityConfigHashNotify)
	r.registerRouter(cmd.MonsterAIConfigHashNotify, GAME.MonsterAIConfigHashNotify)
	r.registerRouter(cmd.DungeonEntryInfoReq, GAME.DungeonEntryInfoReq)
	r.registerRouter(cmd.PlayerEnterDungeonReq, GAME.PlayerEnterDungeonReq)
	r.registerRouter(cmd.PlayerQuitDungeonReq, GAME.PlayerQuitDungeonReq)
	r.registerRouter(cmd.GadgetInteractReq, GAME.GadgetInteractReq)
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
				GAME.PlayerLoginReq(gameMsg.UserId, gameMsg.ClientSeq, netMsg.OriginServerAppId, gameMsg.PayloadMessage)
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
			GAME.ClientRttNotify(connCtrlMsg.UserId, connCtrlMsg.ClientRtt)
		case mq.ClientTimeNotify:
			GAME.ClientTimeNotify(connCtrlMsg.UserId, connCtrlMsg.ClientTime)
		case mq.UserOfflineNotify:
			GAME.OnUserOffline(connCtrlMsg.UserId, &ChangeGsInfo{
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
			GAME.ServerAppidBindNotify(serverMsg.UserId, serverMsg.AnticheatServerAppId)
		case mq.ServerUserMpReq:
			GAME.ServerUserMpReq(serverMsg.UserMpInfo, netMsg.OriginServerAppId)
		case mq.ServerUserMpRsp:
			GAME.ServerUserMpRsp(serverMsg.UserMpInfo)
		case mq.ServerChatMsgNotify:
			GAME.ServerChatMsgNotify(serverMsg.ChatMsgInfo)
		case mq.ServerAddFriendNotify:
			GAME.ServerAddFriendNotify(serverMsg.AddFriendInfo)
		}
	}
}
