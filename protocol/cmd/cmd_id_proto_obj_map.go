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
	cmdIdCmdNameMap  map[uint16]string
	cmdNameCmdIdMap  map[string]uint16
}

func NewCmdProtoMap() (r *CmdProtoMap) {
	r = new(CmdProtoMap)
	r.cmdIdProtoObjMap = make(map[uint16]reflect.Type)
	r.protoObjCmdIdMap = make(map[reflect.Type]uint16)
	r.cmdDeDupMap = make(map[uint16]bool)
	r.cmdIdCmdNameMap = make(map[uint16]string)
	r.cmdNameCmdIdMap = make(map[string]uint16)
	r.registerAllMessage()
	return r
}

func (c *CmdProtoMap) registerAllMessage() {
	// 登录
	c.registerMessage(DoSetPlayerBornDataNotify, &proto.DoSetPlayerBornDataNotify{})       // 注册账号通知 新号播放开场动画
	c.registerMessage(SetPlayerBornDataReq, &proto.SetPlayerBornDataReq{})                 // 注册账号请求
	c.registerMessage(SetPlayerBornDataRsp, &proto.SetPlayerBornDataRsp{})                 // 注册账号响应
	c.registerMessage(GetPlayerTokenReq, &proto.GetPlayerTokenReq{})                       // 获取玩家token请求 第一个登录包
	c.registerMessage(GetPlayerTokenRsp, &proto.GetPlayerTokenRsp{})                       // 获取玩家token响应
	c.registerMessage(PlayerLoginReq, &proto.PlayerLoginReq{})                             // 玩家登录请求 第二个登录包
	c.registerMessage(PlayerLoginRsp, &proto.PlayerLoginRsp{})                             // 玩家登录响应
	c.registerMessage(PlayerForceExitReq, &proto.PlayerForceExitReq{})                     // 退出游戏请求
	c.registerMessage(PlayerForceExitRsp, &proto.PlayerForceExitRsp{})                     // 退出游戏响应
	c.registerMessage(ServerDisconnectClientNotify, &proto.ServerDisconnectClientNotify{}) // 服务器断开连接通知
	c.registerMessage(ClientReconnectNotify, &proto.ClientReconnectNotify{})               // 在线重连通知

	// 基础相关
	c.registerMessage(UnionCmdNotify, &proto.UnionCmdNotify{})               // 聚合消息
	c.registerMessage(PingReq, &proto.PingReq{})                             // ping请求
	c.registerMessage(PingRsp, &proto.PingRsp{})                             // ping响应
	c.registerMessage(WorldPlayerRTTNotify, &proto.WorldPlayerRTTNotify{})   // 世界玩家RTT时延
	c.registerMessage(PlayerDataNotify, &proto.PlayerDataNotify{})           // 玩家信息通知 昵称、属性表等
	c.registerMessage(PlayerPropNotify, &proto.PlayerPropNotify{})           // 玩家属性表通知
	c.registerMessage(OpenStateUpdateNotify, &proto.OpenStateUpdateNotify{}) // 游戏功能模块开放状态更新通知
	c.registerMessage(PlayerTimeNotify, &proto.PlayerTimeNotify{})           // 玩家累计在线时长通知
	c.registerMessage(ServerTimeNotify, &proto.ServerTimeNotify{})           // 服务器时间通知

	// 场景
	c.registerMessage(PlayerSetPauseReq, &proto.PlayerSetPauseReq{})                           // 玩家暂停请求
	c.registerMessage(PlayerSetPauseRsp, &proto.PlayerSetPauseRsp{})                           // 玩家暂停响应
	c.registerMessage(EnterSceneReadyReq, &proto.EnterSceneReadyReq{})                         // 进入场景准备就绪请求
	c.registerMessage(EnterSceneReadyRsp, &proto.EnterSceneReadyRsp{})                         // 进入场景准备就绪响应
	c.registerMessage(SceneInitFinishReq, &proto.SceneInitFinishReq{})                         // 场景初始化完成请求
	c.registerMessage(SceneInitFinishRsp, &proto.SceneInitFinishRsp{})                         // 场景初始化完成响应
	c.registerMessage(EnterSceneDoneReq, &proto.EnterSceneDoneReq{})                           // 进入场景完成请求
	c.registerMessage(EnterSceneDoneRsp, &proto.EnterSceneDoneRsp{})                           // 进入场景完成响应
	c.registerMessage(PostEnterSceneReq, &proto.PostEnterSceneReq{})                           // 进入场景完成后请求
	c.registerMessage(PostEnterSceneRsp, &proto.PostEnterSceneRsp{})                           // 进入场景完成后响应
	c.registerMessage(EnterWorldAreaReq, &proto.EnterWorldAreaReq{})                           // 进入世界区域请求
	c.registerMessage(EnterWorldAreaRsp, &proto.EnterWorldAreaRsp{})                           // 进入世界区域响应
	c.registerMessage(SceneTransToPointReq, &proto.SceneTransToPointReq{})                     // 场景传送点传送请求
	c.registerMessage(SceneTransToPointRsp, &proto.SceneTransToPointRsp{})                     // 场景传送点传送响应
	c.registerMessage(PathfindingEnterSceneReq, &proto.PathfindingEnterSceneReq{})             // 寻路进入场景请求
	c.registerMessage(PathfindingEnterSceneRsp, &proto.PathfindingEnterSceneRsp{})             // 寻路进入场景响应
	c.registerMessage(QueryPathReq, &proto.QueryPathReq{})                                     // 寻路请求
	c.registerMessage(QueryPathRsp, &proto.QueryPathRsp{})                                     // 寻路响应
	c.registerMessage(GetScenePointReq, &proto.GetScenePointReq{})                             // 获取场景传送点请求
	c.registerMessage(GetScenePointRsp, &proto.GetScenePointRsp{})                             // 获取场景传送点响应
	c.registerMessage(GetSceneAreaReq, &proto.GetSceneAreaReq{})                               // 获取场景区域请求
	c.registerMessage(GetSceneAreaRsp, &proto.GetSceneAreaRsp{})                               // 获取场景区域响应
	c.registerMessage(ChangeGameTimeReq, &proto.ChangeGameTimeReq{})                           // 改变游戏内时间请求
	c.registerMessage(ChangeGameTimeRsp, &proto.ChangeGameTimeRsp{})                           // 改变游戏内时间响应
	c.registerMessage(SceneTimeNotify, &proto.SceneTimeNotify{})                               // 场景时间通知
	c.registerMessage(PlayerGameTimeNotify, &proto.PlayerGameTimeNotify{})                     // 玩家游戏内时间通知
	c.registerMessage(SceneEntityAppearNotify, &proto.SceneEntityAppearNotify{})               // 场景实体出现通知
	c.registerMessage(SceneEntityDisappearNotify, &proto.SceneEntityDisappearNotify{})         // 场景实体消失通知
	c.registerMessage(SceneAreaWeatherNotify, &proto.SceneAreaWeatherNotify{})                 // 场景区域天气通知
	c.registerMessage(WorldPlayerLocationNotify, &proto.WorldPlayerLocationNotify{})           // 世界玩家位置通知
	c.registerMessage(ScenePlayerLocationNotify, &proto.ScenePlayerLocationNotify{})           // 场景玩家位置通知
	c.registerMessage(SceneForceUnlockNotify, &proto.SceneForceUnlockNotify{})                 // 场景强制解锁通知
	c.registerMessage(PlayerWorldSceneInfoListNotify, &proto.PlayerWorldSceneInfoListNotify{}) // 玩家世界场景信息列表通知 地图上已解锁点亮的区域
	c.registerMessage(PlayerEnterSceneNotify, &proto.PlayerEnterSceneNotify{})                 // 玩家进入场景通知 通知客户端进入某个场景
	c.registerMessage(PlayerEnterSceneInfoNotify, &proto.PlayerEnterSceneInfoNotify{})         // 玩家进入场景信息通知 角色、队伍、武器等实体相关信息
	c.registerMessage(ScenePlayerInfoNotify, &proto.ScenePlayerInfoNotify{})                   // 场景玩家信息通知 玩家uid、昵称、多人世界玩家编号等
	c.registerMessage(EnterScenePeerNotify, &proto.EnterScenePeerNotify{})                     // 进入场景多人世界玩家编号通知
	c.registerMessage(EntityAiSyncNotify, &proto.EntityAiSyncNotify{})                         // 实体AI怪物同步通知
	c.registerMessage(WorldDataNotify, &proto.WorldDataNotify{})                               // 世界数据通知 世界等级、是否多人世界等
	c.registerMessage(WorldPlayerInfoNotify, &proto.WorldPlayerInfoNotify{})                   // 世界玩家信息通知
	c.registerMessage(HostPlayerNotify, &proto.HostPlayerNotify{})                             // 世界房主玩家信息通知
	c.registerMessage(ToTheMoonEnterSceneReq, &proto.ToTheMoonEnterSceneReq{})                 // 进入场景请求
	c.registerMessage(ToTheMoonEnterSceneRsp, &proto.ToTheMoonEnterSceneRsp{})                 // 进入场景响应
	c.registerMessage(SetEntityClientDataNotify, &proto.SetEntityClientDataNotify{})           // 通知
	c.registerMessage(LeaveWorldNotify, &proto.LeaveWorldNotify{})                             // 删除客户端世界通知
	c.registerMessage(SceneAvatarStaminaStepReq, &proto.SceneAvatarStaminaStepReq{})           // 缓慢游泳或缓慢攀爬时消耗耐力请求
	c.registerMessage(SceneAvatarStaminaStepRsp, &proto.SceneAvatarStaminaStepRsp{})           // 缓慢游泳或缓慢攀爬时消耗耐力响应
	c.registerMessage(LifeStateChangeNotify, &proto.LifeStateChangeNotify{})                   // 实体存活状态改变通知
	c.registerMessage(SceneEntityDrownReq, &proto.SceneEntityDrownReq{})                       // 场景实体溺水请求
	c.registerMessage(SceneEntityDrownRsp, &proto.SceneEntityDrownRsp{})                       // 场景实体溺水响应
	c.registerMessage(ObstacleModifyNotify, &proto.ObstacleModifyNotify{})                     // 寻路阻挡变动通知
	c.registerMessage(DungeonWayPointNotify, &proto.DungeonWayPointNotify{})                   // 地牢副本相关
	c.registerMessage(DungeonDataNotify, &proto.DungeonDataNotify{})                           // 地牢副本相关

	// 战斗与同步
	c.registerMessage(AvatarFightPropNotify, &proto.AvatarFightPropNotify{})                         // 角色战斗属性通知
	c.registerMessage(EntityFightPropUpdateNotify, &proto.EntityFightPropUpdateNotify{})             // 实体战斗属性更新通知
	c.registerMessage(CombatInvocationsNotify, &proto.CombatInvocationsNotify{})                     // 战斗通知 包含场景中实体的移动数据和伤害数据，多人游戏服务器转发
	c.registerMessage(AbilityInvocationsNotify, &proto.AbilityInvocationsNotify{})                   // 技能通知 多人游戏服务器转发
	c.registerMessage(ClientAbilityInitFinishNotify, &proto.ClientAbilityInitFinishNotify{})         // 客户端技能初始化完成通知 多人游戏服务器转发
	c.registerMessage(EvtDoSkillSuccNotify, &proto.EvtDoSkillSuccNotify{})                           // 释放技能成功事件通知
	c.registerMessage(ClientAbilityChangeNotify, &proto.ClientAbilityChangeNotify{})                 // 客户端技能改变通知
	c.registerMessage(MassiveEntityElementOpBatchNotify, &proto.MassiveEntityElementOpBatchNotify{}) // 风元素染色相关通知
	c.registerMessage(EvtAvatarEnterFocusNotify, &proto.EvtAvatarEnterFocusNotify{})                 // 进入弓箭蓄力瞄准状态通知
	c.registerMessage(EvtAvatarUpdateFocusNotify, &proto.EvtAvatarUpdateFocusNotify{})               // 弓箭蓄力瞄准状态移动通知
	c.registerMessage(EvtAvatarExitFocusNotify, &proto.EvtAvatarExitFocusNotify{})                   // 退出弓箭蓄力瞄准状态通知
	c.registerMessage(EvtEntityRenderersChangedNotify, &proto.EvtEntityRenderersChangedNotify{})     // 实体可视状态改变通知
	c.registerMessage(EvtCreateGadgetNotify, &proto.EvtCreateGadgetNotify{})                         // 创建实体通知
	c.registerMessage(EvtDestroyGadgetNotify, &proto.EvtDestroyGadgetNotify{})                       // 销毁实体通知

	// 队伍
	c.registerMessage(ChangeAvatarReq, &proto.ChangeAvatarReq{})                             // 更换角色请求 切人
	c.registerMessage(ChangeAvatarRsp, &proto.ChangeAvatarRsp{})                             // 更换角色响应
	c.registerMessage(SetUpAvatarTeamReq, &proto.SetUpAvatarTeamReq{})                       // 配置队伍请求 队伍换人
	c.registerMessage(SetUpAvatarTeamRsp, &proto.SetUpAvatarTeamRsp{})                       // 配置队伍响应
	c.registerMessage(ChooseCurAvatarTeamReq, &proto.ChooseCurAvatarTeamReq{})               // 切换队伍请求 切队伍
	c.registerMessage(ChooseCurAvatarTeamRsp, &proto.ChooseCurAvatarTeamRsp{})               // 切换队伍响应
	c.registerMessage(ChangeMpTeamAvatarReq, &proto.ChangeMpTeamAvatarReq{})                 // 配置多人游戏队伍请求 多人游戏队伍换人
	c.registerMessage(ChangeMpTeamAvatarRsp, &proto.ChangeMpTeamAvatarRsp{})                 // 配置多人游戏队伍响应
	c.registerMessage(AvatarTeamUpdateNotify, &proto.AvatarTeamUpdateNotify{})               // 角色队伍更新通知 全部队伍的名字和其中中包含了哪些角色
	c.registerMessage(SceneTeamUpdateNotify, &proto.SceneTeamUpdateNotify{})                 // 场景队伍更新通知
	c.registerMessage(SyncTeamEntityNotify, &proto.SyncTeamEntityNotify{})                   // 同步队伍实体通知
	c.registerMessage(DelTeamEntityNotify, &proto.DelTeamEntityNotify{})                     // 删除队伍实体通知
	c.registerMessage(SyncScenePlayTeamEntityNotify, &proto.SyncScenePlayTeamEntityNotify{}) // 同步场景玩家队伍实体通知

	// 多人世界
	c.registerMessage(PlayerApplyEnterMpReq, &proto.PlayerApplyEnterMpReq{})                   // 世界敲门请求
	c.registerMessage(PlayerApplyEnterMpRsp, &proto.PlayerApplyEnterMpRsp{})                   // 世界敲门响应
	c.registerMessage(PlayerApplyEnterMpNotify, &proto.PlayerApplyEnterMpNotify{})             // 世界敲门通知
	c.registerMessage(PlayerApplyEnterMpResultReq, &proto.PlayerApplyEnterMpResultReq{})       // 世界敲门处理请求
	c.registerMessage(PlayerApplyEnterMpResultRsp, &proto.PlayerApplyEnterMpResultRsp{})       // 世界敲门处理响应
	c.registerMessage(PlayerApplyEnterMpResultNotify, &proto.PlayerApplyEnterMpResultNotify{}) // 世界敲门处理通知
	c.registerMessage(PlayerGetForceQuitBanInfoReq, &proto.PlayerGetForceQuitBanInfoReq{})     // 获取强退禁令信息请求
	c.registerMessage(PlayerGetForceQuitBanInfoRsp, &proto.PlayerGetForceQuitBanInfoRsp{})     // 获取强退禁令信息响应
	c.registerMessage(BackMyWorldReq, &proto.BackMyWorldReq{})                                 // 返回单人世界请求
	c.registerMessage(BackMyWorldRsp, &proto.BackMyWorldRsp{})                                 // 返回单人世界响应
	c.registerMessage(ChangeWorldToSingleModeReq, &proto.ChangeWorldToSingleModeReq{})         // 转换单人模式请求
	c.registerMessage(ChangeWorldToSingleModeRsp, &proto.ChangeWorldToSingleModeRsp{})         // 转换单人模式响应
	c.registerMessage(SceneKickPlayerReq, &proto.SceneKickPlayerReq{})                         // 剔除玩家请求
	c.registerMessage(SceneKickPlayerRsp, &proto.SceneKickPlayerRsp{})                         // 剔除玩家响应
	c.registerMessage(SceneKickPlayerNotify, &proto.SceneKickPlayerNotify{})                   // 剔除玩家通知
	c.registerMessage(PlayerQuitFromMpNotify, &proto.PlayerQuitFromMpNotify{})                 // 退出多人游戏通知
	c.registerMessage(JoinPlayerSceneReq, &proto.JoinPlayerSceneReq{})                         // 进入他人世界请求
	c.registerMessage(JoinPlayerSceneRsp, &proto.JoinPlayerSceneRsp{})                         // 进入他人世界响应
	c.registerMessage(GuestBeginEnterSceneNotify, &proto.GuestBeginEnterSceneNotify{})         // 他人开始进入世界通知
	c.registerMessage(GuestPostEnterSceneNotify, &proto.GuestPostEnterSceneNotify{})           // 他人进入世界完成通知
	c.registerMessage(PlayerPreEnterMpNotify, &proto.PlayerPreEnterMpNotify{})                 // 他人正在进入世界通知

	// 社交
	c.registerMessage(SetPlayerBirthdayReq, &proto.SetPlayerBirthdayReq{})           // 设置生日请求
	c.registerMessage(SetPlayerBirthdayRsp, &proto.SetPlayerBirthdayRsp{})           // 设置生日响应
	c.registerMessage(SetNameCardReq, &proto.SetNameCardReq{})                       // 修改名片请求
	c.registerMessage(SetNameCardRsp, &proto.SetNameCardRsp{})                       // 修改名片响应
	c.registerMessage(GetAllUnlockNameCardReq, &proto.GetAllUnlockNameCardReq{})     // 获取全部已解锁名片请求
	c.registerMessage(GetAllUnlockNameCardRsp, &proto.GetAllUnlockNameCardRsp{})     // 获取全部已解锁名片响应
	c.registerMessage(UnlockNameCardNotify, &proto.UnlockNameCardNotify{})           // 名片解锁通知
	c.registerMessage(SetPlayerSignatureReq, &proto.SetPlayerSignatureReq{})         // 修改签名请求
	c.registerMessage(SetPlayerSignatureRsp, &proto.SetPlayerSignatureRsp{})         // 修改签名响应
	c.registerMessage(SetPlayerNameReq, &proto.SetPlayerNameReq{})                   // 修改昵称请求
	c.registerMessage(SetPlayerNameRsp, &proto.SetPlayerNameRsp{})                   // 修改昵称响应
	c.registerMessage(SetPlayerHeadImageReq, &proto.SetPlayerHeadImageReq{})         // 修改头像请求
	c.registerMessage(SetPlayerHeadImageRsp, &proto.SetPlayerHeadImageRsp{})         // 修改头像响应
	c.registerMessage(GetPlayerFriendListReq, &proto.GetPlayerFriendListReq{})       // 好友列表请求
	c.registerMessage(GetPlayerFriendListRsp, &proto.GetPlayerFriendListRsp{})       // 好友列表响应
	c.registerMessage(GetPlayerAskFriendListReq, &proto.GetPlayerAskFriendListReq{}) // 好友申请列表请求
	c.registerMessage(GetPlayerAskFriendListRsp, &proto.GetPlayerAskFriendListRsp{}) // 好友申请列表响应
	c.registerMessage(AskAddFriendReq, &proto.AskAddFriendReq{})                     // 加好友请求
	c.registerMessage(AskAddFriendRsp, &proto.AskAddFriendRsp{})                     // 加好友响应
	c.registerMessage(AskAddFriendNotify, &proto.AskAddFriendNotify{})               // 加好友通知
	c.registerMessage(DealAddFriendReq, &proto.DealAddFriendReq{})                   // 处理好友申请请求
	c.registerMessage(DealAddFriendRsp, &proto.DealAddFriendRsp{})                   // 处理好友申请响应
	c.registerMessage(GetPlayerSocialDetailReq, &proto.GetPlayerSocialDetailReq{})   // 获取玩家社区信息请求
	c.registerMessage(GetPlayerSocialDetailRsp, &proto.GetPlayerSocialDetailRsp{})   // 获取玩家社区信息响应
	c.registerMessage(GetOnlinePlayerListReq, &proto.GetOnlinePlayerListReq{})       // 在线玩家列表请求
	c.registerMessage(GetOnlinePlayerListRsp, &proto.GetOnlinePlayerListRsp{})       // 在线玩家列表响应
	c.registerMessage(PullRecentChatReq, &proto.PullRecentChatReq{})                 // 最近聊天拉取请求
	c.registerMessage(PullRecentChatRsp, &proto.PullRecentChatRsp{})                 // 最近聊天拉取响应
	c.registerMessage(PullPrivateChatReq, &proto.PullPrivateChatReq{})               // 私聊历史记录请求
	c.registerMessage(PullPrivateChatRsp, &proto.PullPrivateChatRsp{})               // 私聊历史记录响应
	c.registerMessage(PrivateChatReq, &proto.PrivateChatReq{})                       // 私聊消息发送请求
	c.registerMessage(PrivateChatRsp, &proto.PrivateChatRsp{})                       // 私聊消息发送响应
	c.registerMessage(PrivateChatNotify, &proto.PrivateChatNotify{})                 // 私聊消息通知
	c.registerMessage(ReadPrivateChatReq, &proto.ReadPrivateChatReq{})               // 私聊消息已读请求
	c.registerMessage(ReadPrivateChatRsp, &proto.ReadPrivateChatRsp{})               // 私聊消息已读响应
	c.registerMessage(PlayerChatReq, &proto.PlayerChatReq{})                         // 多人聊天消息发送请求
	c.registerMessage(PlayerChatRsp, &proto.PlayerChatRsp{})                         // 多人聊天消息发送响应
	c.registerMessage(PlayerChatNotify, &proto.PlayerChatNotify{})                   // 多人聊天消息通知
	c.registerMessage(GetOnlinePlayerInfoReq, &proto.GetOnlinePlayerInfoReq{})       // 在线玩家信息请求
	c.registerMessage(GetOnlinePlayerInfoRsp, &proto.GetOnlinePlayerInfoRsp{})       // 在线玩家信息响应

	// 卡池
	c.registerMessage(GetGachaInfoReq, &proto.GetGachaInfoReq{}) // 卡池获取请求
	c.registerMessage(GetGachaInfoRsp, &proto.GetGachaInfoRsp{}) // 卡池获取响应
	c.registerMessage(DoGachaReq, &proto.DoGachaReq{})           // 抽卡请求
	c.registerMessage(DoGachaRsp, &proto.DoGachaRsp{})           // 抽卡响应

	// 角色
	c.registerMessage(AvatarDataNotify, &proto.AvatarDataNotify{})                       // 角色信息通知
	c.registerMessage(AvatarAddNotify, &proto.AvatarAddNotify{})                         // 角色新增通知
	c.registerMessage(AvatarChangeCostumeReq, &proto.AvatarChangeCostumeReq{})           // 角色换装请求
	c.registerMessage(AvatarChangeCostumeRsp, &proto.AvatarChangeCostumeRsp{})           // 角色换装响应
	c.registerMessage(AvatarChangeCostumeNotify, &proto.AvatarChangeCostumeNotify{})     // 角色换装通知
	c.registerMessage(AvatarWearFlycloakReq, &proto.AvatarWearFlycloakReq{})             // 角色换风之翼请求
	c.registerMessage(AvatarWearFlycloakRsp, &proto.AvatarWearFlycloakRsp{})             // 角色换风之翼响应
	c.registerMessage(AvatarFlycloakChangeNotify, &proto.AvatarFlycloakChangeNotify{})   // 角色换风之翼通知
	c.registerMessage(AvatarLifeStateChangeNotify, &proto.AvatarLifeStateChangeNotify{}) // 角色存活状态改变通知

	// 背包与道具
	c.registerMessage(PlayerStoreNotify, &proto.PlayerStoreNotify{})           // 玩家背包数据通知
	c.registerMessage(StoreWeightLimitNotify, &proto.StoreWeightLimitNotify{}) // 背包容量上限通知
	c.registerMessage(StoreItemChangeNotify, &proto.StoreItemChangeNotify{})   // 背包道具变动通知
	c.registerMessage(ItemAddHintNotify, &proto.ItemAddHintNotify{})           // 道具增加提示通知
	c.registerMessage(StoreItemDelNotify, &proto.StoreItemDelNotify{})         // 背包道具删除通知

	// 装备
	c.registerMessage(WearEquipReq, &proto.WearEquipReq{})                       // 装备穿戴请求
	c.registerMessage(WearEquipRsp, &proto.WearEquipRsp{})                       // 装备穿戴响应
	c.registerMessage(AvatarEquipChangeNotify, &proto.AvatarEquipChangeNotify{}) // 角色装备改变通知

	// 商店
	c.registerMessage(GetShopmallDataReq, &proto.GetShopmallDataReq{})       // 商店信息请求
	c.registerMessage(GetShopmallDataRsp, &proto.GetShopmallDataRsp{})       // 商店信息响应
	c.registerMessage(GetShopReq, &proto.GetShopReq{})                       // 商店详情请求
	c.registerMessage(GetShopRsp, &proto.GetShopRsp{})                       // 商店详情响应
	c.registerMessage(BuyGoodsReq, &proto.BuyGoodsReq{})                     // 商店货物购买请求
	c.registerMessage(BuyGoodsRsp, &proto.BuyGoodsRsp{})                     // 商店货物购买响应
	c.registerMessage(McoinExchangeHcoinReq, &proto.McoinExchangeHcoinReq{}) // 结晶换原石请求
	c.registerMessage(McoinExchangeHcoinRsp, &proto.McoinExchangeHcoinRsp{}) // 结晶换原石响应

	// 载具
	c.registerMessage(CreateVehicleReq, &proto.CreateVehicleReq{})         // 创建载具请求
	c.registerMessage(CreateVehicleRsp, &proto.CreateVehicleRsp{})         // 创建载具响应
	c.registerMessage(VehicleInteractReq, &proto.VehicleInteractReq{})     // 载具交互请求
	c.registerMessage(VehicleInteractRsp, &proto.VehicleInteractRsp{})     // 载具交互响应
	c.registerMessage(VehicleStaminaNotify, &proto.VehicleStaminaNotify{}) // 载具耐力消耗通知

	// 七圣召唤
	c.registerMessage(GCGBasicDataNotify, &proto.GCGBasicDataNotify{})                         // GCG基本数据通知
	c.registerMessage(GCGLevelChallengeNotify, &proto.GCGLevelChallengeNotify{})               // GCG等级挑战通知
	c.registerMessage(GCGDSBanCardNotify, &proto.GCGDSBanCardNotify{})                         // GCG禁止的卡牌通知
	c.registerMessage(GCGDSDataNotify, &proto.GCGDSDataNotify{})                               // GCG数据通知 (解锁的内容)
	c.registerMessage(GCGTCTavernChallengeDataNotify, &proto.GCGTCTavernChallengeDataNotify{}) // GCG酒馆挑战数据通知
	c.registerMessage(GCGTCTavernInfoNotify, &proto.GCGTCTavernInfoNotify{})                   // GCG酒馆信息通知
	c.registerMessage(GCGTavernNpcInfoNotify, &proto.GCGTavernNpcInfoNotify{})                 // GCG酒馆NPC信息通知
	c.registerMessage(GCGGameBriefDataNotify, &proto.GCGGameBriefDataNotify{})                 // GCG游戏简要数据通知
	c.registerMessage(GCGAskDuelReq, &proto.GCGAskDuelReq{})                                   // GCG决斗请求
	c.registerMessage(GCGAskDuelRsp, &proto.GCGAskDuelRsp{})                                   // GCG决斗响应
	c.registerMessage(GCGInitFinishReq, &proto.GCGInitFinishReq{})                             // GCG初始化完成请求
	c.registerMessage(GCGInitFinishRsp, &proto.GCGInitFinishRsp{})                             // GCG初始化完成响应

	// // TODO 客户端开始GCG游戏
	// c.registerMessage(GCGStartChallengeByCheckRewardReq, &proto.GCGStartChallengeByCheckRewardReq{}) // GCG开始挑战来自检测奖励请求
	// c.registerMessage(GCGStartChallengeByCheckRewardRsp, &proto.GCGStartChallengeByCheckRewardRsp{}) // GCG开始挑战来自检测奖励响应
	// c.registerMessage(GCGStartChallengeReq, &proto.GCGStartChallengeReq{})                           // GCG开始挑战请求
	// c.registerMessage(GCGStartChallengeRsp, &proto.GCGStartChallengeRsp{})                           // GCG开始挑战响应

	// 乱七八糟
	c.registerMessage(MarkMapReq, &proto.MarkMapReq{})                                 // 标记地图请求
	c.registerMessage(TowerAllDataReq, &proto.TowerAllDataReq{})                       // 深渊数据请求
	c.registerMessage(TowerAllDataRsp, &proto.TowerAllDataRsp{})                       // 深渊数据响应
	c.registerMessage(ServerAnnounceNotify, &proto.ServerAnnounceNotify{})             // 服务器公告通知
	c.registerMessage(ServerAnnounceRevokeNotify, &proto.ServerAnnounceRevokeNotify{}) // 服务器公告撤销通知

	// // TODO
	// c.registerMessage(EvtAiSyncSkillCdNotify, &proto.EvtAiSyncSkillCdNotify{})
	// c.registerMessage(EvtAiSyncCombatThreatInfoNotify, &proto.EvtAiSyncCombatThreatInfoNotify{})
	// c.registerMessage(EntityConfigHashNotify, &proto.EntityConfigHashNotify{})
	// c.registerMessage(MonsterAIConfigHashNotify, &proto.MonsterAIConfigHashNotify{})
	// c.registerMessage(GetRegionSearchReq, &proto.GetRegionSearchReq{})

	// 空消息
	c.registerMessage(65535, &proto.NullMsg{})
}

func (c *CmdProtoMap) registerMessage(cmdId uint16, protoObj pb.Message) {
	_, exist := c.cmdDeDupMap[cmdId]
	if exist {
		logger.Error("reg dup msg, cmd id: %v", cmdId)
		return
	} else {
		c.cmdDeDupMap[cmdId] = true
	}
	refType := reflect.TypeOf(protoObj)
	// cmdId -> protoObj
	c.cmdIdProtoObjMap[cmdId] = refType
	// protoObj -> cmdId
	c.protoObjCmdIdMap[refType] = cmdId
	cmdName := refType.Elem().Name()
	// cmdId -> cmdName
	c.cmdIdCmdNameMap[cmdId] = cmdName
	// cmdName -> cmdId
	c.cmdNameCmdIdMap[cmdName] = cmdId
}

func (c *CmdProtoMap) GetProtoObjByCmdId(cmdId uint16) pb.Message {
	refType, exist := c.cmdIdProtoObjMap[cmdId]
	if !exist {
		logger.Error("unknown cmd id: %v", cmdId)
		return nil
	}
	protoObjInst := reflect.New(refType.Elem())
	protoObj := protoObjInst.Interface().(pb.Message)
	return protoObj
}

func (c *CmdProtoMap) GetCmdIdByProtoObj(protoObj pb.Message) uint16 {
	cmdId, exist := c.protoObjCmdIdMap[reflect.TypeOf(protoObj)]
	if !exist {
		logger.Error("unknown proto object: %v", protoObj)
		return 0
	}
	return cmdId
}

func (c *CmdProtoMap) GetCmdNameByCmdId(cmdId uint16) string {
	cmdName, exist := c.cmdIdCmdNameMap[cmdId]
	if !exist {
		logger.Error("unknown cmd id: %v", cmdId)
		return ""
	}
	return cmdName
}

func (c *CmdProtoMap) GetCmdIdByCmdName(cmdName string) uint16 {
	cmdId, exist := c.cmdNameCmdIdMap[cmdName]
	if !exist {
		logger.Error("unknown cmd name: %v", cmdName)
		return 0
	}
	return cmdId
}
