package cmd

import (
	"reflect"

	"hk4e/pkg/logger"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

type CmdProtoMap struct {
	cmdIdProtoObjMap map[uint16]reflect.Type
	protoObjCmdIdMap map[reflect.Type]uint16
	cmdDeDupMap      map[uint16]bool
}

func NewCmdProtoMap() (r *CmdProtoMap) {
	r = new(CmdProtoMap)
	r.cmdIdProtoObjMap = make(map[uint16]reflect.Type)
	r.protoObjCmdIdMap = make(map[reflect.Type]uint16)
	r.cmdDeDupMap = make(map[uint16]bool)
	r.registerAllMessage()
	return r
}

func (a *CmdProtoMap) registerAllMessage() {
	// 登录
	a.registerMessage(DoSetPlayerBornDataNotify, &proto.DoSetPlayerBornDataNotify{})       // 注册账号通知 新号播放开场动画
	a.registerMessage(SetPlayerBornDataReq, &proto.SetPlayerBornDataReq{})                 // 注册账号请求
	a.registerMessage(SetPlayerBornDataRsp, &proto.SetPlayerBornDataRsp{})                 // 注册账号响应
	a.registerMessage(GetPlayerTokenReq, &proto.GetPlayerTokenReq{})                       // 获取玩家token请求 第一个登录包
	a.registerMessage(GetPlayerTokenRsp, &proto.GetPlayerTokenRsp{})                       // 获取玩家token响应
	a.registerMessage(PlayerLoginReq, &proto.PlayerLoginReq{})                             // 玩家登录请求 第二个登录包
	a.registerMessage(PlayerLoginRsp, &proto.PlayerLoginRsp{})                             // 玩家登录响应
	a.registerMessage(PlayerForceExitReq, &proto.PlayerForceExitReq{})                     // 退出游戏请求
	a.registerMessage(PlayerForceExitRsp, &proto.PlayerForceExitRsp{})                     // 退出游戏响应
	a.registerMessage(ServerDisconnectClientNotify, &proto.ServerDisconnectClientNotify{}) // 服务器断开连接通知
	a.registerMessage(ClientReconnectNotify, &proto.ClientReconnectNotify{})               // 在线重连通知

	// 基础相关
	a.registerMessage(UnionCmdNotify, &proto.UnionCmdNotify{})               // 聚合消息
	a.registerMessage(PingReq, &proto.PingReq{})                             // ping请求
	a.registerMessage(PingRsp, &proto.PingRsp{})                             // ping响应
	a.registerMessage(WorldPlayerRTTNotify, &proto.WorldPlayerRTTNotify{})   // 世界玩家RTT时延
	a.registerMessage(PlayerDataNotify, &proto.PlayerDataNotify{})           // 玩家信息通知 昵称、属性表等
	a.registerMessage(PlayerPropNotify, &proto.PlayerPropNotify{})           // 玩家属性表通知
	a.registerMessage(OpenStateUpdateNotify, &proto.OpenStateUpdateNotify{}) // 游戏功能模块开放状态更新通知
	a.registerMessage(PlayerTimeNotify, &proto.PlayerTimeNotify{})           // 玩家累计在线时长通知
	a.registerMessage(ServerTimeNotify, &proto.ServerTimeNotify{})           // 服务器时间通知

	// 场景
	a.registerMessage(PlayerSetPauseReq, &proto.PlayerSetPauseReq{})                           // 玩家暂停请求
	a.registerMessage(PlayerSetPauseRsp, &proto.PlayerSetPauseRsp{})                           // 玩家暂停响应
	a.registerMessage(EnterSceneReadyReq, &proto.EnterSceneReadyReq{})                         // 进入场景准备就绪请求
	a.registerMessage(EnterSceneReadyRsp, &proto.EnterSceneReadyRsp{})                         // 进入场景准备就绪响应
	a.registerMessage(SceneInitFinishReq, &proto.SceneInitFinishReq{})                         // 场景初始化完成请求
	a.registerMessage(SceneInitFinishRsp, &proto.SceneInitFinishRsp{})                         // 场景初始化完成响应
	a.registerMessage(EnterSceneDoneReq, &proto.EnterSceneDoneReq{})                           // 进入场景完成请求
	a.registerMessage(EnterSceneDoneRsp, &proto.EnterSceneDoneRsp{})                           // 进入场景完成响应
	a.registerMessage(PostEnterSceneReq, &proto.PostEnterSceneReq{})                           // 进入场景完成后请求
	a.registerMessage(PostEnterSceneRsp, &proto.PostEnterSceneRsp{})                           // 进入场景完成后响应
	a.registerMessage(EnterWorldAreaReq, &proto.EnterWorldAreaReq{})                           // 进入世界区域请求
	a.registerMessage(EnterWorldAreaRsp, &proto.EnterWorldAreaRsp{})                           // 进入世界区域响应
	a.registerMessage(SceneTransToPointReq, &proto.SceneTransToPointReq{})                     // 场景传送点传送请求
	a.registerMessage(SceneTransToPointRsp, &proto.SceneTransToPointRsp{})                     // 场景传送点传送响应
	a.registerMessage(PathfindingEnterSceneReq, &proto.PathfindingEnterSceneReq{})             // 寻路进入场景请求
	a.registerMessage(PathfindingEnterSceneRsp, &proto.PathfindingEnterSceneRsp{})             // 寻路进入场景响应
	a.registerMessage(QueryPathReq, &proto.QueryPathReq{})                                     // 寻路请求
	a.registerMessage(QueryPathRsp, &proto.QueryPathRsp{})                                     // 寻路响应
	a.registerMessage(GetScenePointReq, &proto.GetScenePointReq{})                             // 获取场景传送点请求
	a.registerMessage(GetScenePointRsp, &proto.GetScenePointRsp{})                             // 获取场景传送点响应
	a.registerMessage(GetSceneAreaReq, &proto.GetSceneAreaReq{})                               // 获取场景区域请求
	a.registerMessage(GetSceneAreaRsp, &proto.GetSceneAreaRsp{})                               // 获取场景区域响应
	a.registerMessage(ChangeGameTimeReq, &proto.ChangeGameTimeReq{})                           // 改变游戏内时间请求
	a.registerMessage(ChangeGameTimeRsp, &proto.ChangeGameTimeRsp{})                           // 改变游戏内时间响应
	a.registerMessage(SceneTimeNotify, &proto.SceneTimeNotify{})                               // 场景时间通知
	a.registerMessage(PlayerGameTimeNotify, &proto.PlayerGameTimeNotify{})                     // 玩家游戏内时间通知
	a.registerMessage(SceneEntityAppearNotify, &proto.SceneEntityAppearNotify{})               // 场景实体出现通知
	a.registerMessage(SceneEntityDisappearNotify, &proto.SceneEntityDisappearNotify{})         // 场景实体消失通知
	a.registerMessage(SceneAreaWeatherNotify, &proto.SceneAreaWeatherNotify{})                 // 场景区域天气通知
	a.registerMessage(WorldPlayerLocationNotify, &proto.WorldPlayerLocationNotify{})           // 世界玩家位置通知
	a.registerMessage(ScenePlayerLocationNotify, &proto.ScenePlayerLocationNotify{})           // 场景玩家位置通知
	a.registerMessage(SceneForceUnlockNotify, &proto.SceneForceUnlockNotify{})                 // 场景强制解锁通知
	a.registerMessage(PlayerWorldSceneInfoListNotify, &proto.PlayerWorldSceneInfoListNotify{}) // 玩家世界场景信息列表通知 地图上已解锁点亮的区域
	a.registerMessage(PlayerEnterSceneNotify, &proto.PlayerEnterSceneNotify{})                 // 玩家进入场景通知 通知客户端进入某个场景
	a.registerMessage(PlayerEnterSceneInfoNotify, &proto.PlayerEnterSceneInfoNotify{})         // 玩家进入场景信息通知 角色、队伍、武器等实体相关信息
	a.registerMessage(ScenePlayerInfoNotify, &proto.ScenePlayerInfoNotify{})                   // 场景玩家信息通知 玩家uid、昵称、多人世界玩家编号等
	a.registerMessage(EnterScenePeerNotify, &proto.EnterScenePeerNotify{})                     // 进入场景多人世界玩家编号通知
	a.registerMessage(EntityAiSyncNotify, &proto.EntityAiSyncNotify{})                         // 实体AI怪物同步通知
	a.registerMessage(WorldDataNotify, &proto.WorldDataNotify{})                               // 世界数据通知 世界等级、是否多人世界等
	a.registerMessage(WorldPlayerInfoNotify, &proto.WorldPlayerInfoNotify{})                   // 世界玩家信息通知
	a.registerMessage(HostPlayerNotify, &proto.HostPlayerNotify{})                             // 世界房主玩家信息通知

	// 战斗与技能
	a.registerMessage(AvatarFightPropNotify, &proto.AvatarFightPropNotify{})                 // 角色战斗属性通知
	a.registerMessage(EntityFightPropUpdateNotify, &proto.EntityFightPropUpdateNotify{})     // 实体战斗属性更新通知
	a.registerMessage(CombatInvocationsNotify, &proto.CombatInvocationsNotify{})             // 战斗通知 包含场景中实体的移动数据和伤害数据，多人游戏服务器转发
	a.registerMessage(AbilityInvocationsNotify, &proto.AbilityInvocationsNotify{})           // 技能通知 多人游戏服务器转发
	a.registerMessage(ClientAbilityInitFinishNotify, &proto.ClientAbilityInitFinishNotify{}) // 客户端技能初始化完成通知 多人游戏服务器转发
	a.registerMessage(EvtDoSkillSuccNotify, &proto.EvtDoSkillSuccNotify{})                   // 释放技能成功事件通知
	a.registerMessage(ClientAbilityChangeNotify, &proto.ClientAbilityChangeNotify{})         // 客户端技能改变通知

	// 队伍
	a.registerMessage(ChangeAvatarReq, &proto.ChangeAvatarReq{})                             // 更换角色请求 切人
	a.registerMessage(ChangeAvatarRsp, &proto.ChangeAvatarRsp{})                             // 更换角色响应
	a.registerMessage(SetUpAvatarTeamReq, &proto.SetUpAvatarTeamReq{})                       // 配置队伍请求 队伍换人
	a.registerMessage(SetUpAvatarTeamRsp, &proto.SetUpAvatarTeamRsp{})                       // 配置队伍响应
	a.registerMessage(ChooseCurAvatarTeamReq, &proto.ChooseCurAvatarTeamReq{})               // 切换队伍请求 切队伍
	a.registerMessage(ChooseCurAvatarTeamRsp, &proto.ChooseCurAvatarTeamRsp{})               // 切换队伍响应
	a.registerMessage(ChangeMpTeamAvatarReq, &proto.ChangeMpTeamAvatarReq{})                 // 配置多人游戏队伍请求 多人游戏队伍换人
	a.registerMessage(ChangeMpTeamAvatarRsp, &proto.ChangeMpTeamAvatarRsp{})                 // 配置多人游戏队伍响应
	a.registerMessage(AvatarTeamUpdateNotify, &proto.AvatarTeamUpdateNotify{})               // 角色队伍更新通知 全部队伍的名字和其中中包含了哪些角色
	a.registerMessage(SceneTeamUpdateNotify, &proto.SceneTeamUpdateNotify{})                 // 场景队伍更新通知
	a.registerMessage(SyncTeamEntityNotify, &proto.SyncTeamEntityNotify{})                   // 同步队伍实体通知
	a.registerMessage(DelTeamEntityNotify, &proto.DelTeamEntityNotify{})                     // 删除队伍实体通知
	a.registerMessage(SyncScenePlayTeamEntityNotify, &proto.SyncScenePlayTeamEntityNotify{}) // 同步场景玩家队伍实体通知

	// 多人世界
	a.registerMessage(PlayerApplyEnterMpReq, &proto.PlayerApplyEnterMpReq{})                   // 世界敲门请求
	a.registerMessage(PlayerApplyEnterMpRsp, &proto.PlayerApplyEnterMpRsp{})                   // 世界敲门响应
	a.registerMessage(PlayerApplyEnterMpNotify, &proto.PlayerApplyEnterMpNotify{})             // 世界敲门通知
	a.registerMessage(PlayerApplyEnterMpResultReq, &proto.PlayerApplyEnterMpResultReq{})       // 世界敲门处理请求
	a.registerMessage(PlayerApplyEnterMpResultRsp, &proto.PlayerApplyEnterMpResultRsp{})       // 世界敲门处理响应
	a.registerMessage(PlayerApplyEnterMpResultNotify, &proto.PlayerApplyEnterMpResultNotify{}) // 世界敲门处理通知
	a.registerMessage(PlayerGetForceQuitBanInfoReq, &proto.PlayerGetForceQuitBanInfoReq{})     // 获取强退禁令信息请求
	a.registerMessage(PlayerGetForceQuitBanInfoRsp, &proto.PlayerGetForceQuitBanInfoRsp{})     // 获取强退禁令信息响应
	a.registerMessage(BackMyWorldReq, &proto.BackMyWorldReq{})                                 // 返回单人世界请求
	a.registerMessage(BackMyWorldRsp, &proto.BackMyWorldRsp{})                                 // 返回单人世界响应
	a.registerMessage(ChangeWorldToSingleModeReq, &proto.ChangeWorldToSingleModeReq{})         // 转换单人模式请求
	a.registerMessage(ChangeWorldToSingleModeRsp, &proto.ChangeWorldToSingleModeRsp{})         // 转换单人模式响应
	a.registerMessage(SceneKickPlayerReq, &proto.SceneKickPlayerReq{})                         // 剔除玩家请求
	a.registerMessage(SceneKickPlayerRsp, &proto.SceneKickPlayerRsp{})                         // 剔除玩家响应
	a.registerMessage(SceneKickPlayerNotify, &proto.SceneKickPlayerNotify{})                   // 剔除玩家通知
	a.registerMessage(PlayerQuitFromMpNotify, &proto.PlayerQuitFromMpNotify{})                 // 退出多人游戏通知

	// 社交
	a.registerMessage(SetPlayerBirthdayReq, &proto.SetPlayerBirthdayReq{})           // 设置生日请求
	a.registerMessage(SetPlayerBirthdayRsp, &proto.SetPlayerBirthdayRsp{})           // 设置生日响应
	a.registerMessage(SetNameCardReq, &proto.SetNameCardReq{})                       // 修改名片请求
	a.registerMessage(SetNameCardRsp, &proto.SetNameCardRsp{})                       // 修改名片响应
	a.registerMessage(GetAllUnlockNameCardReq, &proto.GetAllUnlockNameCardReq{})     // 获取全部已解锁名片请求
	a.registerMessage(GetAllUnlockNameCardRsp, &proto.GetAllUnlockNameCardRsp{})     // 获取全部已解锁名片响应
	a.registerMessage(UnlockNameCardNotify, &proto.UnlockNameCardNotify{})           // 名片解锁通知
	a.registerMessage(SetPlayerSignatureReq, &proto.SetPlayerSignatureReq{})         // 修改签名请求
	a.registerMessage(SetPlayerSignatureRsp, &proto.SetPlayerSignatureRsp{})         // 修改签名响应
	a.registerMessage(SetPlayerNameReq, &proto.SetPlayerNameReq{})                   // 修改昵称请求
	a.registerMessage(SetPlayerNameRsp, &proto.SetPlayerNameRsp{})                   // 修改昵称响应
	a.registerMessage(SetPlayerHeadImageReq, &proto.SetPlayerHeadImageReq{})         // 修改头像请求
	a.registerMessage(SetPlayerHeadImageRsp, &proto.SetPlayerHeadImageRsp{})         // 修改头像响应
	a.registerMessage(GetPlayerFriendListReq, &proto.GetPlayerFriendListReq{})       // 好友列表请求
	a.registerMessage(GetPlayerFriendListRsp, &proto.GetPlayerFriendListRsp{})       // 好友列表响应
	a.registerMessage(GetPlayerAskFriendListReq, &proto.GetPlayerAskFriendListReq{}) // 好友申请列表请求
	a.registerMessage(GetPlayerAskFriendListRsp, &proto.GetPlayerAskFriendListRsp{}) // 好友申请列表响应
	a.registerMessage(AskAddFriendReq, &proto.AskAddFriendReq{})                     // 加好友请求
	a.registerMessage(AskAddFriendRsp, &proto.AskAddFriendRsp{})                     // 加好友响应
	a.registerMessage(AskAddFriendNotify, &proto.AskAddFriendNotify{})               // 加好友通知
	a.registerMessage(DealAddFriendReq, &proto.DealAddFriendReq{})                   // 处理好友申请请求
	a.registerMessage(DealAddFriendRsp, &proto.DealAddFriendRsp{})                   // 处理好友申请响应
	a.registerMessage(GetPlayerSocialDetailReq, &proto.GetPlayerSocialDetailReq{})   // 获取玩家社区信息请求
	a.registerMessage(GetPlayerSocialDetailRsp, &proto.GetPlayerSocialDetailRsp{})   // 获取玩家社区信息响应
	a.registerMessage(GetOnlinePlayerListReq, &proto.GetOnlinePlayerListReq{})       // 在线玩家列表请求
	a.registerMessage(GetOnlinePlayerListRsp, &proto.GetOnlinePlayerListRsp{})       // 在线玩家列表响应
	a.registerMessage(PullRecentChatReq, &proto.PullRecentChatReq{})                 // 最近聊天拉取请求
	a.registerMessage(PullRecentChatRsp, &proto.PullRecentChatRsp{})                 // 最近聊天拉取响应
	a.registerMessage(PullPrivateChatReq, &proto.PullPrivateChatReq{})               // 私聊历史记录请求
	a.registerMessage(PullPrivateChatRsp, &proto.PullPrivateChatRsp{})               // 私聊历史记录响应
	a.registerMessage(PrivateChatReq, &proto.PrivateChatReq{})                       // 私聊消息发送请求
	a.registerMessage(PrivateChatRsp, &proto.PrivateChatRsp{})                       // 私聊消息发送响应
	a.registerMessage(PrivateChatNotify, &proto.PrivateChatNotify{})                 // 私聊消息通知
	a.registerMessage(ReadPrivateChatReq, &proto.ReadPrivateChatReq{})               // 私聊消息已读请求
	a.registerMessage(ReadPrivateChatRsp, &proto.ReadPrivateChatRsp{})               // 私聊消息已读响应
	a.registerMessage(PlayerChatReq, &proto.PlayerChatReq{})                         // 多人聊天消息发送请求
	a.registerMessage(PlayerChatRsp, &proto.PlayerChatRsp{})                         // 多人聊天消息发送响应
	a.registerMessage(PlayerChatNotify, &proto.PlayerChatNotify{})                   // 多人聊天消息通知

	// 卡池
	a.registerMessage(GetGachaInfoReq, &proto.GetGachaInfoReq{}) // 卡池获取请求
	a.registerMessage(GetGachaInfoRsp, &proto.GetGachaInfoRsp{}) // 卡池获取响应
	a.registerMessage(DoGachaReq, &proto.DoGachaReq{})           // 抽卡请求
	a.registerMessage(DoGachaRsp, &proto.DoGachaRsp{})           // 抽卡响应

	// 角色
	a.registerMessage(AvatarDataNotify, &proto.AvatarDataNotify{})                     // 角色信息通知
	a.registerMessage(AvatarAddNotify, &proto.AvatarAddNotify{})                       // 角色新增通知
	a.registerMessage(AvatarChangeCostumeReq, &proto.AvatarChangeCostumeReq{})         // 角色换装请求
	a.registerMessage(AvatarChangeCostumeRsp, &proto.AvatarChangeCostumeRsp{})         // 角色换装响应
	a.registerMessage(AvatarChangeCostumeNotify, &proto.AvatarChangeCostumeNotify{})   // 角色换装通知
	a.registerMessage(AvatarWearFlycloakReq, &proto.AvatarWearFlycloakReq{})           // 角色换风之翼请求
	a.registerMessage(AvatarWearFlycloakRsp, &proto.AvatarWearFlycloakRsp{})           // 角色换风之翼响应
	a.registerMessage(AvatarFlycloakChangeNotify, &proto.AvatarFlycloakChangeNotify{}) // 角色换风之翼通知

	// 背包与道具
	a.registerMessage(PlayerStoreNotify, &proto.PlayerStoreNotify{})           // 玩家背包数据通知
	a.registerMessage(StoreWeightLimitNotify, &proto.StoreWeightLimitNotify{}) // 背包容量上限通知
	a.registerMessage(StoreItemChangeNotify, &proto.StoreItemChangeNotify{})   // 背包道具变动通知
	a.registerMessage(ItemAddHintNotify, &proto.ItemAddHintNotify{})           // 道具增加提示通知
	a.registerMessage(StoreItemDelNotify, &proto.StoreItemDelNotify{})         // 背包道具删除通知

	// 装备
	a.registerMessage(WearEquipReq, &proto.WearEquipReq{})                       // 装备穿戴请求
	a.registerMessage(WearEquipRsp, &proto.WearEquipRsp{})                       // 装备穿戴响应
	a.registerMessage(AvatarEquipChangeNotify, &proto.AvatarEquipChangeNotify{}) // 角色装备改变通知

	// 商店
	a.registerMessage(GetShopmallDataReq, &proto.GetShopmallDataReq{})       // 商店信息请求
	a.registerMessage(GetShopmallDataRsp, &proto.GetShopmallDataRsp{})       // 商店信息响应
	a.registerMessage(GetShopReq, &proto.GetShopReq{})                       // 商店详情请求
	a.registerMessage(GetShopRsp, &proto.GetShopRsp{})                       // 商店详情响应
	a.registerMessage(BuyGoodsReq, &proto.BuyGoodsReq{})                     // 商店货物购买请求
	a.registerMessage(BuyGoodsRsp, &proto.BuyGoodsRsp{})                     // 商店货物购买响应
	a.registerMessage(McoinExchangeHcoinReq, &proto.McoinExchangeHcoinReq{}) // 结晶换原石请求
	a.registerMessage(McoinExchangeHcoinRsp, &proto.McoinExchangeHcoinRsp{}) // 结晶换原石响应

	// 乱七八糟
	a.registerMessage(MarkMapReq, &proto.MarkMapReq{})                                 // 标记地图请求
	a.registerMessage(TowerAllDataReq, &proto.TowerAllDataReq{})                       // 深渊数据请求
	a.registerMessage(TowerAllDataRsp, &proto.TowerAllDataRsp{})                       // 深渊数据响应
	a.registerMessage(ServerAnnounceNotify, &proto.ServerAnnounceNotify{})             // 服务器公告通知
	a.registerMessage(ServerAnnounceRevokeNotify, &proto.ServerAnnounceRevokeNotify{}) // 服务器公告撤销通知

	// TODO
	a.registerMessage(EvtAiSyncSkillCdNotify, &proto.EvtAiSyncSkillCdNotify{})
	a.registerMessage(EvtAiSyncCombatThreatInfoNotify, &proto.EvtAiSyncCombatThreatInfoNotify{})
	a.registerMessage(EntityConfigHashNotify, &proto.EntityConfigHashNotify{})
	a.registerMessage(MonsterAIConfigHashNotify, &proto.MonsterAIConfigHashNotify{})
	a.registerMessage(GetRegionSearchReq, &proto.GetRegionSearchReq{})
	a.registerMessage(ObstacleModifyNotify, &proto.ObstacleModifyNotify{})
	a.registerMessage(EvtCreateGadgetNotify, &proto.EvtCreateGadgetNotify{})
	a.registerMessage(EvtDestroyGadgetNotify, &proto.EvtDestroyGadgetNotify{})

	// 空消息
	a.registerMessage(65535, &proto.NullMsg{})
}

func (a *CmdProtoMap) registerMessage(cmdId uint16, protoObj pb.Message) {
	_, exist := a.cmdDeDupMap[cmdId]
	if exist {
		logger.LOG.Error("reg dup msg, cmd id: %v", cmdId)
		return
	} else {
		a.cmdDeDupMap[cmdId] = true
	}
	// cmdId -> protoObj
	a.cmdIdProtoObjMap[cmdId] = reflect.TypeOf(protoObj)
	// protoObj -> cmdId
	a.protoObjCmdIdMap[reflect.TypeOf(protoObj)] = cmdId
}

func (a *CmdProtoMap) GetProtoObjByCmdId(cmdId uint16) (protoObj pb.Message) {
	protoObjTypePointer, ok := a.cmdIdProtoObjMap[cmdId]
	if !ok {
		logger.LOG.Error("unknown cmd id: %v", cmdId)
		protoObj = nil
		return protoObj
	}
	protoObjInst := reflect.New(protoObjTypePointer.Elem())
	protoObj = protoObjInst.Interface().(pb.Message)
	return protoObj
}

func (a *CmdProtoMap) GetCmdIdByProtoObj(protoObj pb.Message) (cmdId uint16) {
	var ok = false
	cmdId, ok = a.protoObjCmdIdMap[reflect.TypeOf(protoObj)]
	if !ok {
		logger.LOG.Error("unknown proto object: %v", protoObj)
		cmdId = 0
	}
	return cmdId
}
