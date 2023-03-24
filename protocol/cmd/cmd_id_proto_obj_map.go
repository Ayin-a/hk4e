package cmd

import (
	"reflect"
	"sync"

	"hk4e/pkg/logger"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

type CmdProtoMap struct {
	cmdIdProtoObjMap      map[uint16]reflect.Type
	protoObjCmdIdMap      map[reflect.Type]uint16
	cmdDeDupMap           map[uint16]bool
	cmdIdCmdNameMap       map[uint16]string
	cmdNameCmdIdMap       map[string]uint16
	cmdIdProtoObjCacheMap map[uint16]*sync.Pool
}

func NewCmdProtoMap() (r *CmdProtoMap) {
	r = new(CmdProtoMap)
	r.cmdIdProtoObjMap = make(map[uint16]reflect.Type)
	r.protoObjCmdIdMap = make(map[reflect.Type]uint16)
	r.cmdDeDupMap = make(map[uint16]bool)
	r.cmdIdCmdNameMap = make(map[uint16]string)
	r.cmdNameCmdIdMap = make(map[string]uint16)
	r.cmdIdProtoObjCacheMap = make(map[uint16]*sync.Pool)
	r.registerAllMessage()
	return r
}

func (c *CmdProtoMap) registerAllMessage() {
	// 登录
	c.regMsg(DoSetPlayerBornDataNotify, func() any { return new(proto.DoSetPlayerBornDataNotify) })       // 注册账号通知 新号播放开场动画
	c.regMsg(SetPlayerBornDataReq, func() any { return new(proto.SetPlayerBornDataReq) })                 // 注册账号请求
	c.regMsg(SetPlayerBornDataRsp, func() any { return new(proto.SetPlayerBornDataRsp) })                 // 注册账号响应
	c.regMsg(GetPlayerTokenReq, func() any { return new(proto.GetPlayerTokenReq) })                       // 获取玩家token请求 第一个登录包
	c.regMsg(GetPlayerTokenRsp, func() any { return new(proto.GetPlayerTokenRsp) })                       // 获取玩家token响应
	c.regMsg(PlayerLoginReq, func() any { return new(proto.PlayerLoginReq) })                             // 玩家登录请求 第二个登录包
	c.regMsg(PlayerLoginRsp, func() any { return new(proto.PlayerLoginRsp) })                             // 玩家登录响应
	c.regMsg(PlayerForceExitReq, func() any { return new(proto.PlayerForceExitReq) })                     // 退出游戏请求
	c.regMsg(PlayerForceExitRsp, func() any { return new(proto.PlayerForceExitRsp) })                     // 退出游戏响应
	c.regMsg(ServerDisconnectClientNotify, func() any { return new(proto.ServerDisconnectClientNotify) }) // 服务器断开连接通知
	c.regMsg(ClientReconnectNotify, func() any { return new(proto.ClientReconnectNotify) })               // 在线重连通知

	// 基础相关
	c.regMsg(UnionCmdNotify, func() any { return new(proto.UnionCmdNotify) })                         // 聚合消息
	c.regMsg(PingReq, func() any { return new(proto.PingReq) })                                       // ping请求
	c.regMsg(PingRsp, func() any { return new(proto.PingRsp) })                                       // ping响应
	c.regMsg(WorldPlayerRTTNotify, func() any { return new(proto.WorldPlayerRTTNotify) })             // 世界玩家RTT时延
	c.regMsg(PlayerDataNotify, func() any { return new(proto.PlayerDataNotify) })                     // 玩家信息通知 昵称、属性表等
	c.regMsg(PlayerPropNotify, func() any { return new(proto.PlayerPropNotify) })                     // 玩家属性表通知
	c.regMsg(OpenStateUpdateNotify, func() any { return new(proto.OpenStateUpdateNotify) })           // 游戏功能模块开放状态更新通知
	c.regMsg(PlayerTimeNotify, func() any { return new(proto.PlayerTimeNotify) })                     // 玩家累计在线时长通知
	c.regMsg(ServerTimeNotify, func() any { return new(proto.ServerTimeNotify) })                     // 服务器时间通知
	c.regMsg(WindSeedClientNotify, func() any { return new(proto.WindSeedClientNotify) })             // 客户端XLUA调试通知
	c.regMsg(ServerAnnounceNotify, func() any { return new(proto.ServerAnnounceNotify) })             // 服务器公告通知
	c.regMsg(ServerAnnounceRevokeNotify, func() any { return new(proto.ServerAnnounceRevokeNotify) }) // 服务器公告撤销通知

	// 场景
	c.regMsg(PlayerSetPauseReq, func() any { return new(proto.PlayerSetPauseReq) })                           // 玩家暂停请求
	c.regMsg(PlayerSetPauseRsp, func() any { return new(proto.PlayerSetPauseRsp) })                           // 玩家暂停响应
	c.regMsg(EnterSceneReadyReq, func() any { return new(proto.EnterSceneReadyReq) })                         // 进入场景准备就绪请求
	c.regMsg(EnterSceneReadyRsp, func() any { return new(proto.EnterSceneReadyRsp) })                         // 进入场景准备就绪响应
	c.regMsg(SceneInitFinishReq, func() any { return new(proto.SceneInitFinishReq) })                         // 场景初始化完成请求
	c.regMsg(SceneInitFinishRsp, func() any { return new(proto.SceneInitFinishRsp) })                         // 场景初始化完成响应
	c.regMsg(EnterSceneDoneReq, func() any { return new(proto.EnterSceneDoneReq) })                           // 进入场景完成请求
	c.regMsg(EnterSceneDoneRsp, func() any { return new(proto.EnterSceneDoneRsp) })                           // 进入场景完成响应
	c.regMsg(PostEnterSceneReq, func() any { return new(proto.PostEnterSceneReq) })                           // 进入场景完成后请求
	c.regMsg(PostEnterSceneRsp, func() any { return new(proto.PostEnterSceneRsp) })                           // 进入场景完成后响应
	c.regMsg(EnterWorldAreaReq, func() any { return new(proto.EnterWorldAreaReq) })                           // 进入世界区域请求
	c.regMsg(EnterWorldAreaRsp, func() any { return new(proto.EnterWorldAreaRsp) })                           // 进入世界区域响应
	c.regMsg(SceneTransToPointReq, func() any { return new(proto.SceneTransToPointReq) })                     // 场景传送点传送请求
	c.regMsg(SceneTransToPointRsp, func() any { return new(proto.SceneTransToPointRsp) })                     // 场景传送点传送响应
	c.regMsg(UnlockTransPointReq, func() any { return new(proto.UnlockTransPointReq) })                       // 解锁场景传送点请求
	c.regMsg(UnlockTransPointRsp, func() any { return new(proto.UnlockTransPointRsp) })                       // 解锁场景传送点响应
	c.regMsg(ScenePointUnlockNotify, func() any { return new(proto.ScenePointUnlockNotify) })                 // 场景传送点解锁通知
	c.regMsg(MarkMapReq, func() any { return new(proto.MarkMapReq) })                                         // 标记地图请求
	c.regMsg(MarkMapRsp, func() any { return new(proto.MarkMapRsp) })                                         // 标记地图响应
	c.regMsg(QueryPathReq, func() any { return new(proto.QueryPathReq) })                                     // 寻路请求
	c.regMsg(QueryPathRsp, func() any { return new(proto.QueryPathRsp) })                                     // 寻路响应
	c.regMsg(GetScenePointReq, func() any { return new(proto.GetScenePointReq) })                             // 获取场景传送点请求
	c.regMsg(GetScenePointRsp, func() any { return new(proto.GetScenePointRsp) })                             // 获取场景传送点响应
	c.regMsg(GetSceneAreaReq, func() any { return new(proto.GetSceneAreaReq) })                               // 获取场景区域请求
	c.regMsg(GetSceneAreaRsp, func() any { return new(proto.GetSceneAreaRsp) })                               // 获取场景区域响应
	c.regMsg(ChangeGameTimeReq, func() any { return new(proto.ChangeGameTimeReq) })                           // 改变游戏内时间请求
	c.regMsg(ChangeGameTimeRsp, func() any { return new(proto.ChangeGameTimeRsp) })                           // 改变游戏内时间响应
	c.regMsg(SceneTimeNotify, func() any { return new(proto.SceneTimeNotify) })                               // 场景时间通知
	c.regMsg(PlayerGameTimeNotify, func() any { return new(proto.PlayerGameTimeNotify) })                     // 玩家游戏内时间通知
	c.regMsg(SceneEntityAppearNotify, func() any { return new(proto.SceneEntityAppearNotify) })               // 场景实体出现通知
	c.regMsg(SceneEntityDisappearNotify, func() any { return new(proto.SceneEntityDisappearNotify) })         // 场景实体消失通知
	c.regMsg(SceneAreaWeatherNotify, func() any { return new(proto.SceneAreaWeatherNotify) })                 // 场景区域天气通知
	c.regMsg(WorldPlayerLocationNotify, func() any { return new(proto.WorldPlayerLocationNotify) })           // 世界玩家位置通知
	c.regMsg(ScenePlayerLocationNotify, func() any { return new(proto.ScenePlayerLocationNotify) })           // 场景玩家位置通知
	c.regMsg(SceneForceUnlockNotify, func() any { return new(proto.SceneForceUnlockNotify) })                 // 场景强制解锁通知
	c.regMsg(PlayerWorldSceneInfoListNotify, func() any { return new(proto.PlayerWorldSceneInfoListNotify) }) // 玩家世界场景信息列表通知 地图上已解锁点亮的区域
	c.regMsg(PlayerEnterSceneNotify, func() any { return new(proto.PlayerEnterSceneNotify) })                 // 玩家进入场景通知 通知客户端进入某个场景
	c.regMsg(PlayerEnterSceneInfoNotify, func() any { return new(proto.PlayerEnterSceneInfoNotify) })         // 玩家进入场景信息通知 角色、队伍、武器等实体相关信息
	c.regMsg(ScenePlayerInfoNotify, func() any { return new(proto.ScenePlayerInfoNotify) })                   // 场景玩家信息通知 玩家uid、昵称、多人世界玩家编号等
	c.regMsg(EnterScenePeerNotify, func() any { return new(proto.EnterScenePeerNotify) })                     // 进入场景多人世界玩家编号通知
	c.regMsg(EntityAiSyncNotify, func() any { return new(proto.EntityAiSyncNotify) })                         // 实体AI怪物同步通知
	c.regMsg(WorldDataNotify, func() any { return new(proto.WorldDataNotify) })                               // 世界数据通知 世界等级、是否多人世界等
	c.regMsg(WorldPlayerInfoNotify, func() any { return new(proto.WorldPlayerInfoNotify) })                   // 世界玩家信息通知
	c.regMsg(HostPlayerNotify, func() any { return new(proto.HostPlayerNotify) })                             // 世界房主玩家信息通知
	c.regMsg(PathfindingEnterSceneReq, func() any { return new(proto.PathfindingEnterSceneReq) })             // 寻路服务器进入场景请求
	c.regMsg(PathfindingEnterSceneRsp, func() any { return new(proto.PathfindingEnterSceneRsp) })             // 寻路服务器进入场景响应
	c.regMsg(ToTheMoonEnterSceneReq, func() any { return new(proto.ToTheMoonEnterSceneReq) })                 // 寻路服务器进入场景请求
	c.regMsg(ToTheMoonEnterSceneRsp, func() any { return new(proto.ToTheMoonEnterSceneRsp) })                 // 寻路服务器进入场景响应
	c.regMsg(SetEntityClientDataNotify, func() any { return new(proto.SetEntityClientDataNotify) })           // 通知
	c.regMsg(LeaveWorldNotify, func() any { return new(proto.LeaveWorldNotify) })                             // 删除客户端世界通知
	c.regMsg(SceneAvatarStaminaStepReq, func() any { return new(proto.SceneAvatarStaminaStepReq) })           // 缓慢游泳或缓慢攀爬时消耗耐力请求
	c.regMsg(SceneAvatarStaminaStepRsp, func() any { return new(proto.SceneAvatarStaminaStepRsp) })           // 缓慢游泳或缓慢攀爬时消耗耐力响应
	c.regMsg(LifeStateChangeNotify, func() any { return new(proto.LifeStateChangeNotify) })                   // 实体存活状态改变通知
	c.regMsg(SceneEntityDrownReq, func() any { return new(proto.SceneEntityDrownReq) })                       // 场景实体溺水请求
	c.regMsg(SceneEntityDrownRsp, func() any { return new(proto.SceneEntityDrownRsp) })                       // 场景实体溺水响应
	c.regMsg(ObstacleModifyNotify, func() any { return new(proto.ObstacleModifyNotify) })                     // 寻路阻挡变动通知
	c.regMsg(SceneAudioNotify, func() any { return new(proto.SceneAudioNotify) })                             // 场景风物之琴音乐同步通知
	c.regMsg(BeginCameraSceneLookNotify, func() any { return new(proto.BeginCameraSceneLookNotify) })         // 场景镜头注目通知
	c.regMsg(NpcTalkReq, func() any { return new(proto.NpcTalkReq) })                                         // NPC对话请求
	c.regMsg(NpcTalkRsp, func() any { return new(proto.NpcTalkRsp) })                                         // NPC对话响应
	c.regMsg(GroupSuiteNotify, func() any { return new(proto.GroupSuiteNotify) })                             // 场景小组加载通知
	c.regMsg(GroupUnloadNotify, func() any { return new(proto.GroupUnloadNotify) })                           // 场景组卸载通知
	c.regMsg(DungeonEntryInfoReq, func() any { return new(proto.DungeonEntryInfoReq) })                       // 地牢信息请求
	c.regMsg(DungeonEntryInfoRsp, func() any { return new(proto.DungeonEntryInfoRsp) })                       // 地牢信息响应
	c.regMsg(PlayerEnterDungeonReq, func() any { return new(proto.PlayerEnterDungeonReq) })                   // 进入地牢请求
	c.regMsg(PlayerEnterDungeonRsp, func() any { return new(proto.PlayerEnterDungeonRsp) })                   // 进入地牢响应
	c.regMsg(PlayerQuitDungeonReq, func() any { return new(proto.PlayerQuitDungeonReq) })                     // 退出地牢请求
	c.regMsg(PlayerQuitDungeonRsp, func() any { return new(proto.PlayerQuitDungeonRsp) })                     // 退出地牢响应
	c.regMsg(DungeonDataNotify, func() any { return new(proto.DungeonDataNotify) })                           // 地牢数据通知
	c.regMsg(DungeonWayPointNotify, func() any { return new(proto.DungeonWayPointNotify) })                   // 地牢路点通知

	// 战斗与同步
	c.regMsg(AvatarFightPropNotify, func() any { return new(proto.AvatarFightPropNotify) })                         // 角色战斗属性通知
	c.regMsg(EntityFightPropUpdateNotify, func() any { return new(proto.EntityFightPropUpdateNotify) })             // 实体战斗属性更新通知
	c.regMsg(CombatInvocationsNotify, func() any { return new(proto.CombatInvocationsNotify) })                     // 客户端combat通知 服务器转发
	c.regMsg(AbilityInvocationsNotify, func() any { return new(proto.AbilityInvocationsNotify) })                   // 客户端ability通知 服务器转发
	c.regMsg(ClientAbilityInitFinishNotify, func() any { return new(proto.ClientAbilityInitFinishNotify) })         // 客户端ability初始化完成通知 服务器转发
	c.regMsg(EvtDoSkillSuccNotify, func() any { return new(proto.EvtDoSkillSuccNotify) })                           // 释放技能成功通知
	c.regMsg(ClientAbilityChangeNotify, func() any { return new(proto.ClientAbilityChangeNotify) })                 // 客户端ability变更通知 服务器转发
	c.regMsg(MassiveEntityElementOpBatchNotify, func() any { return new(proto.MassiveEntityElementOpBatchNotify) }) // 风元素染色相关通知 服务器转发
	c.regMsg(EvtAvatarEnterFocusNotify, func() any { return new(proto.EvtAvatarEnterFocusNotify) })                 // 进入弓箭蓄力瞄准状态通知 服务器转发
	c.regMsg(EvtAvatarUpdateFocusNotify, func() any { return new(proto.EvtAvatarUpdateFocusNotify) })               // 弓箭蓄力瞄准状态移动通知 服务器转发
	c.regMsg(EvtAvatarExitFocusNotify, func() any { return new(proto.EvtAvatarExitFocusNotify) })                   // 退出弓箭蓄力瞄准状态通知 服务器转发
	c.regMsg(EvtEntityRenderersChangedNotify, func() any { return new(proto.EvtEntityRenderersChangedNotify) })     // 实体可视状态改变通知 服务器转发
	c.regMsg(EvtCreateGadgetNotify, func() any { return new(proto.EvtCreateGadgetNotify) })                         // 创建实体通知
	c.regMsg(EvtDestroyGadgetNotify, func() any { return new(proto.EvtDestroyGadgetNotify) })                       // 销毁实体通知
	// c.regMsg(EvtAnimatorParameterNotify, func() any { return new(proto.EvtAnimatorParameterNotify) })               // 动画参数通知
	// c.regMsg(EvtAnimatorStateChangedNotify, func() any { return new(proto.EvtAnimatorStateChangedNotify) })         // 动画状态通知
	c.regMsg(EvtAiSyncSkillCdNotify, func() any { return new(proto.EvtAiSyncSkillCdNotify) })                   // 通知
	c.regMsg(EvtAiSyncCombatThreatInfoNotify, func() any { return new(proto.EvtAiSyncCombatThreatInfoNotify) }) // 通知
	c.regMsg(EntityConfigHashNotify, func() any { return new(proto.EntityConfigHashNotify) })                   // 通知
	c.regMsg(MonsterAIConfigHashNotify, func() any { return new(proto.MonsterAIConfigHashNotify) })             // 通知

	// 队伍
	c.regMsg(ChangeAvatarReq, func() any { return new(proto.ChangeAvatarReq) })                             // 更换角色请求 切人
	c.regMsg(ChangeAvatarRsp, func() any { return new(proto.ChangeAvatarRsp) })                             // 更换角色响应
	c.regMsg(SetUpAvatarTeamReq, func() any { return new(proto.SetUpAvatarTeamReq) })                       // 配置队伍请求 队伍换人
	c.regMsg(SetUpAvatarTeamRsp, func() any { return new(proto.SetUpAvatarTeamRsp) })                       // 配置队伍响应
	c.regMsg(ChooseCurAvatarTeamReq, func() any { return new(proto.ChooseCurAvatarTeamReq) })               // 切换队伍请求 切队伍
	c.regMsg(ChooseCurAvatarTeamRsp, func() any { return new(proto.ChooseCurAvatarTeamRsp) })               // 切换队伍响应
	c.regMsg(ChangeMpTeamAvatarReq, func() any { return new(proto.ChangeMpTeamAvatarReq) })                 // 配置多人游戏队伍请求 多人游戏队伍换人
	c.regMsg(ChangeMpTeamAvatarRsp, func() any { return new(proto.ChangeMpTeamAvatarRsp) })                 // 配置多人游戏队伍响应
	c.regMsg(AvatarTeamUpdateNotify, func() any { return new(proto.AvatarTeamUpdateNotify) })               // 角色队伍更新通知 全部队伍的名字和其中中包含了哪些角色
	c.regMsg(SceneTeamUpdateNotify, func() any { return new(proto.SceneTeamUpdateNotify) })                 // 场景队伍更新通知
	c.regMsg(SyncTeamEntityNotify, func() any { return new(proto.SyncTeamEntityNotify) })                   // 同步队伍实体通知
	c.regMsg(DelTeamEntityNotify, func() any { return new(proto.DelTeamEntityNotify) })                     // 删除队伍实体通知
	c.regMsg(SyncScenePlayTeamEntityNotify, func() any { return new(proto.SyncScenePlayTeamEntityNotify) }) // 同步场景玩家队伍实体通知

	// 多人世界
	c.regMsg(PlayerApplyEnterMpReq, func() any { return new(proto.PlayerApplyEnterMpReq) })                   // 世界敲门请求
	c.regMsg(PlayerApplyEnterMpRsp, func() any { return new(proto.PlayerApplyEnterMpRsp) })                   // 世界敲门响应
	c.regMsg(PlayerApplyEnterMpNotify, func() any { return new(proto.PlayerApplyEnterMpNotify) })             // 世界敲门通知
	c.regMsg(PlayerApplyEnterMpResultReq, func() any { return new(proto.PlayerApplyEnterMpResultReq) })       // 世界敲门处理请求
	c.regMsg(PlayerApplyEnterMpResultRsp, func() any { return new(proto.PlayerApplyEnterMpResultRsp) })       // 世界敲门处理响应
	c.regMsg(PlayerApplyEnterMpResultNotify, func() any { return new(proto.PlayerApplyEnterMpResultNotify) }) // 世界敲门处理通知
	c.regMsg(PlayerGetForceQuitBanInfoReq, func() any { return new(proto.PlayerGetForceQuitBanInfoReq) })     // 获取强退禁令信息请求
	c.regMsg(PlayerGetForceQuitBanInfoRsp, func() any { return new(proto.PlayerGetForceQuitBanInfoRsp) })     // 获取强退禁令信息响应
	c.regMsg(BackMyWorldReq, func() any { return new(proto.BackMyWorldReq) })                                 // 返回单人世界请求
	c.regMsg(BackMyWorldRsp, func() any { return new(proto.BackMyWorldRsp) })                                 // 返回单人世界响应
	c.regMsg(ChangeWorldToSingleModeReq, func() any { return new(proto.ChangeWorldToSingleModeReq) })         // 转换单人模式请求
	c.regMsg(ChangeWorldToSingleModeRsp, func() any { return new(proto.ChangeWorldToSingleModeRsp) })         // 转换单人模式响应
	c.regMsg(SceneKickPlayerReq, func() any { return new(proto.SceneKickPlayerReq) })                         // 剔除玩家请求
	c.regMsg(SceneKickPlayerRsp, func() any { return new(proto.SceneKickPlayerRsp) })                         // 剔除玩家响应
	c.regMsg(SceneKickPlayerNotify, func() any { return new(proto.SceneKickPlayerNotify) })                   // 剔除玩家通知
	c.regMsg(PlayerQuitFromMpNotify, func() any { return new(proto.PlayerQuitFromMpNotify) })                 // 退出多人游戏通知
	c.regMsg(JoinPlayerSceneReq, func() any { return new(proto.JoinPlayerSceneReq) })                         // 进入他人世界请求
	c.regMsg(JoinPlayerSceneRsp, func() any { return new(proto.JoinPlayerSceneRsp) })                         // 进入他人世界响应
	c.regMsg(GuestBeginEnterSceneNotify, func() any { return new(proto.GuestBeginEnterSceneNotify) })         // 他人开始进入世界通知
	c.regMsg(GuestPostEnterSceneNotify, func() any { return new(proto.GuestPostEnterSceneNotify) })           // 他人进入世界完成通知
	c.regMsg(PlayerPreEnterMpNotify, func() any { return new(proto.PlayerPreEnterMpNotify) })                 // 他人正在进入世界通知

	// 社交
	c.regMsg(SetPlayerBirthdayReq, func() any { return new(proto.SetPlayerBirthdayReq) })           // 设置生日请求
	c.regMsg(SetPlayerBirthdayRsp, func() any { return new(proto.SetPlayerBirthdayRsp) })           // 设置生日响应
	c.regMsg(SetNameCardReq, func() any { return new(proto.SetNameCardReq) })                       // 修改名片请求
	c.regMsg(SetNameCardRsp, func() any { return new(proto.SetNameCardRsp) })                       // 修改名片响应
	c.regMsg(GetAllUnlockNameCardReq, func() any { return new(proto.GetAllUnlockNameCardReq) })     // 获取全部已解锁名片请求
	c.regMsg(GetAllUnlockNameCardRsp, func() any { return new(proto.GetAllUnlockNameCardRsp) })     // 获取全部已解锁名片响应
	c.regMsg(UnlockNameCardNotify, func() any { return new(proto.UnlockNameCardNotify) })           // 名片解锁通知
	c.regMsg(SetPlayerSignatureReq, func() any { return new(proto.SetPlayerSignatureReq) })         // 修改签名请求
	c.regMsg(SetPlayerSignatureRsp, func() any { return new(proto.SetPlayerSignatureRsp) })         // 修改签名响应
	c.regMsg(SetPlayerNameReq, func() any { return new(proto.SetPlayerNameReq) })                   // 修改昵称请求
	c.regMsg(SetPlayerNameRsp, func() any { return new(proto.SetPlayerNameRsp) })                   // 修改昵称响应
	c.regMsg(SetPlayerHeadImageReq, func() any { return new(proto.SetPlayerHeadImageReq) })         // 修改头像请求
	c.regMsg(SetPlayerHeadImageRsp, func() any { return new(proto.SetPlayerHeadImageRsp) })         // 修改头像响应
	c.regMsg(GetPlayerFriendListReq, func() any { return new(proto.GetPlayerFriendListReq) })       // 好友列表请求
	c.regMsg(GetPlayerFriendListRsp, func() any { return new(proto.GetPlayerFriendListRsp) })       // 好友列表响应
	c.regMsg(GetPlayerAskFriendListReq, func() any { return new(proto.GetPlayerAskFriendListReq) }) // 好友申请列表请求
	c.regMsg(GetPlayerAskFriendListRsp, func() any { return new(proto.GetPlayerAskFriendListRsp) }) // 好友申请列表响应
	c.regMsg(AskAddFriendReq, func() any { return new(proto.AskAddFriendReq) })                     // 加好友请求
	c.regMsg(AskAddFriendRsp, func() any { return new(proto.AskAddFriendRsp) })                     // 加好友响应
	c.regMsg(AskAddFriendNotify, func() any { return new(proto.AskAddFriendNotify) })               // 加好友通知
	c.regMsg(DealAddFriendReq, func() any { return new(proto.DealAddFriendReq) })                   // 处理好友申请请求
	c.regMsg(DealAddFriendRsp, func() any { return new(proto.DealAddFriendRsp) })                   // 处理好友申请响应
	c.regMsg(GetPlayerSocialDetailReq, func() any { return new(proto.GetPlayerSocialDetailReq) })   // 获取玩家社区信息请求
	c.regMsg(GetPlayerSocialDetailRsp, func() any { return new(proto.GetPlayerSocialDetailRsp) })   // 获取玩家社区信息响应
	c.regMsg(GetOnlinePlayerListReq, func() any { return new(proto.GetOnlinePlayerListReq) })       // 在线玩家列表请求
	c.regMsg(GetOnlinePlayerListRsp, func() any { return new(proto.GetOnlinePlayerListRsp) })       // 在线玩家列表响应
	c.regMsg(PullRecentChatReq, func() any { return new(proto.PullRecentChatReq) })                 // 最近聊天拉取请求
	c.regMsg(PullRecentChatRsp, func() any { return new(proto.PullRecentChatRsp) })                 // 最近聊天拉取响应
	c.regMsg(PullPrivateChatReq, func() any { return new(proto.PullPrivateChatReq) })               // 私聊历史记录请求
	c.regMsg(PullPrivateChatRsp, func() any { return new(proto.PullPrivateChatRsp) })               // 私聊历史记录响应
	c.regMsg(PrivateChatReq, func() any { return new(proto.PrivateChatReq) })                       // 私聊消息发送请求
	c.regMsg(PrivateChatRsp, func() any { return new(proto.PrivateChatRsp) })                       // 私聊消息发送响应
	c.regMsg(PrivateChatNotify, func() any { return new(proto.PrivateChatNotify) })                 // 私聊消息通知
	c.regMsg(ReadPrivateChatReq, func() any { return new(proto.ReadPrivateChatReq) })               // 私聊消息已读请求
	c.regMsg(ReadPrivateChatRsp, func() any { return new(proto.ReadPrivateChatRsp) })               // 私聊消息已读响应
	c.regMsg(PlayerChatReq, func() any { return new(proto.PlayerChatReq) })                         // 多人聊天消息发送请求
	c.regMsg(PlayerChatRsp, func() any { return new(proto.PlayerChatRsp) })                         // 多人聊天消息发送响应
	c.regMsg(PlayerChatNotify, func() any { return new(proto.PlayerChatNotify) })                   // 多人聊天消息通知
	c.regMsg(GetOnlinePlayerInfoReq, func() any { return new(proto.GetOnlinePlayerInfoReq) })       // 在线玩家信息请求
	c.regMsg(GetOnlinePlayerInfoRsp, func() any { return new(proto.GetOnlinePlayerInfoRsp) })       // 在线玩家信息响应

	// 卡池
	c.regMsg(GetGachaInfoReq, func() any { return new(proto.GetGachaInfoReq) }) // 卡池获取请求
	c.regMsg(GetGachaInfoRsp, func() any { return new(proto.GetGachaInfoRsp) }) // 卡池获取响应
	c.regMsg(DoGachaReq, func() any { return new(proto.DoGachaReq) })           // 抽卡请求
	c.regMsg(DoGachaRsp, func() any { return new(proto.DoGachaRsp) })           // 抽卡响应

	// 角色
	c.regMsg(AvatarDataNotify, func() any { return new(proto.AvatarDataNotify) })                         // 角色信息通知
	c.regMsg(AvatarAddNotify, func() any { return new(proto.AvatarAddNotify) })                           // 角色新增通知
	c.regMsg(AvatarLifeStateChangeNotify, func() any { return new(proto.AvatarLifeStateChangeNotify) })   // 角色存活状态改变通知
	c.regMsg(AvatarUpgradeReq, func() any { return new(proto.AvatarUpgradeReq) })                         // 角色升级请求
	c.regMsg(AvatarUpgradeRsp, func() any { return new(proto.AvatarUpgradeRsp) })                         // 角色升级通知
	c.regMsg(AvatarPropNotify, func() any { return new(proto.AvatarPropNotify) })                         // 角色属性表更新通知
	c.regMsg(AvatarPromoteReq, func() any { return new(proto.AvatarPromoteReq) })                         // 角色突破请求
	c.regMsg(AvatarPromoteRsp, func() any { return new(proto.AvatarPromoteRsp) })                         // 角色突破响应
	c.regMsg(AvatarPromoteGetRewardReq, func() any { return new(proto.AvatarPromoteGetRewardReq) })       // 角色突破获取奖励请求
	c.regMsg(AvatarPromoteGetRewardRsp, func() any { return new(proto.AvatarPromoteGetRewardRsp) })       // 角色突破获取奖励响应
	c.regMsg(AvatarChangeCostumeReq, func() any { return new(proto.AvatarChangeCostumeReq) })             // 角色换装请求
	c.regMsg(AvatarChangeCostumeRsp, func() any { return new(proto.AvatarChangeCostumeRsp) })             // 角色换装响应
	c.regMsg(AvatarChangeCostumeNotify, func() any { return new(proto.AvatarChangeCostumeNotify) })       // 角色换装通知
	c.regMsg(AvatarGainCostumeNotify, func() any { return new(proto.AvatarGainCostumeNotify) })           // 角色获得时装通知
	c.regMsg(AvatarWearFlycloakReq, func() any { return new(proto.AvatarWearFlycloakReq) })               // 角色换风之翼请求
	c.regMsg(AvatarWearFlycloakRsp, func() any { return new(proto.AvatarWearFlycloakRsp) })               // 角色换风之翼响应
	c.regMsg(AvatarFlycloakChangeNotify, func() any { return new(proto.AvatarFlycloakChangeNotify) })     // 角色换风之翼通知
	c.regMsg(AvatarGainFlycloakNotify, func() any { return new(proto.AvatarGainFlycloakNotify) })         // 角色获得风之翼通知
	c.regMsg(AvatarSkillDepotChangeNotify, func() any { return new(proto.AvatarSkillDepotChangeNotify) }) // 角色技能库切换通知 主角切元素

	// 背包与道具
	c.regMsg(PlayerStoreNotify, func() any { return new(proto.PlayerStoreNotify) })           // 玩家背包数据通知
	c.regMsg(StoreWeightLimitNotify, func() any { return new(proto.StoreWeightLimitNotify) }) // 背包容量上限通知
	c.regMsg(StoreItemChangeNotify, func() any { return new(proto.StoreItemChangeNotify) })   // 背包道具变动通知
	c.regMsg(ItemAddHintNotify, func() any { return new(proto.ItemAddHintNotify) })           // 道具增加提示通知
	c.regMsg(StoreItemDelNotify, func() any { return new(proto.StoreItemDelNotify) })         // 背包道具删除通知

	// 装备
	c.regMsg(WearEquipReq, func() any { return new(proto.WearEquipReq) })                                       // 装备穿戴请求
	c.regMsg(WearEquipRsp, func() any { return new(proto.WearEquipRsp) })                                       // 装备穿戴响应
	c.regMsg(AvatarEquipChangeNotify, func() any { return new(proto.AvatarEquipChangeNotify) })                 // 角色装备改变通知
	c.regMsg(CalcWeaponUpgradeReturnItemsReq, func() any { return new(proto.CalcWeaponUpgradeReturnItemsReq) }) // 计算武器升级返回矿石请求
	c.regMsg(CalcWeaponUpgradeReturnItemsRsp, func() any { return new(proto.CalcWeaponUpgradeReturnItemsRsp) }) // 计算武器升级返回矿石响应
	c.regMsg(WeaponUpgradeReq, func() any { return new(proto.WeaponUpgradeReq) })                               // 武器升级请求
	c.regMsg(WeaponUpgradeRsp, func() any { return new(proto.WeaponUpgradeRsp) })                               // 武器升级响应
	c.regMsg(WeaponPromoteReq, func() any { return new(proto.WeaponPromoteReq) })                               // 武器突破请求
	c.regMsg(WeaponPromoteRsp, func() any { return new(proto.WeaponPromoteRsp) })                               // 武器突破响应
	c.regMsg(WeaponAwakenReq, func() any { return new(proto.WeaponAwakenReq) })                                 // 武器精炼请求
	c.regMsg(WeaponAwakenRsp, func() any { return new(proto.WeaponAwakenRsp) })                                 // 武器精炼响应
	c.regMsg(SetEquipLockStateReq, func() any { return new(proto.SetEquipLockStateReq) })                       // 设置装备上锁状态请求
	c.regMsg(SetEquipLockStateRsp, func() any { return new(proto.SetEquipLockStateRsp) })                       // 设置装备上锁状态响应
	c.regMsg(TakeoffEquipReq, func() any { return new(proto.TakeoffEquipReq) })                                 // 装备卸下请求
	c.regMsg(TakeoffEquipRsp, func() any { return new(proto.TakeoffEquipRsp) })                                 // 装备卸下响应

	// 商店
	c.regMsg(GetShopmallDataReq, func() any { return new(proto.GetShopmallDataReq) })       // 商店信息请求
	c.regMsg(GetShopmallDataRsp, func() any { return new(proto.GetShopmallDataRsp) })       // 商店信息响应
	c.regMsg(GetShopReq, func() any { return new(proto.GetShopReq) })                       // 商店详情请求
	c.regMsg(GetShopRsp, func() any { return new(proto.GetShopRsp) })                       // 商店详情响应
	c.regMsg(BuyGoodsReq, func() any { return new(proto.BuyGoodsReq) })                     // 商店货物购买请求
	c.regMsg(BuyGoodsRsp, func() any { return new(proto.BuyGoodsRsp) })                     // 商店货物购买响应
	c.regMsg(McoinExchangeHcoinReq, func() any { return new(proto.McoinExchangeHcoinReq) }) // 结晶换原石请求
	c.regMsg(McoinExchangeHcoinRsp, func() any { return new(proto.McoinExchangeHcoinRsp) }) // 结晶换原石响应

	// 载具
	c.regMsg(CreateVehicleReq, func() any { return new(proto.CreateVehicleReq) })         // 创建载具请求
	c.regMsg(CreateVehicleRsp, func() any { return new(proto.CreateVehicleRsp) })         // 创建载具响应
	c.regMsg(VehicleInteractReq, func() any { return new(proto.VehicleInteractReq) })     // 载具交互请求
	c.regMsg(VehicleInteractRsp, func() any { return new(proto.VehicleInteractRsp) })     // 载具交互响应
	c.regMsg(VehicleStaminaNotify, func() any { return new(proto.VehicleStaminaNotify) }) // 载具耐力消耗通知

	// 七圣召唤
	c.regMsg(GCGBasicDataNotify, func() any { return new(proto.GCGBasicDataNotify) })                         // GCG基本数据通知
	c.regMsg(GCGLevelChallengeNotify, func() any { return new(proto.GCGLevelChallengeNotify) })               // GCG等级挑战通知
	c.regMsg(GCGDSBanCardNotify, func() any { return new(proto.GCGDSBanCardNotify) })                         // GCG禁止的卡牌通知
	c.regMsg(GCGDSDataNotify, func() any { return new(proto.GCGDSDataNotify) })                               // GCG数据通知 (解锁的内容)
	c.regMsg(GCGTCTavernChallengeDataNotify, func() any { return new(proto.GCGTCTavernChallengeDataNotify) }) // GCG酒馆挑战数据通知
	c.regMsg(GCGTCTavernInfoNotify, func() any { return new(proto.GCGTCTavernInfoNotify) })                   // GCG酒馆信息通知
	c.regMsg(GCGTavernNpcInfoNotify, func() any { return new(proto.GCGTavernNpcInfoNotify) })                 // GCG酒馆NPC信息通知
	c.regMsg(GCGGameBriefDataNotify, func() any { return new(proto.GCGGameBriefDataNotify) })                 // GCG游戏简要数据通知
	c.regMsg(GCGAskDuelReq, func() any { return new(proto.GCGAskDuelReq) })                                   // GCG游戏对局信息请求
	c.regMsg(GCGAskDuelRsp, func() any { return new(proto.GCGAskDuelRsp) })                                   // GCG游戏对局信息响应
	c.regMsg(GCGInitFinishReq, func() any { return new(proto.GCGInitFinishReq) })                             // GCG游戏初始化完成请求
	c.regMsg(GCGInitFinishRsp, func() any { return new(proto.GCGInitFinishRsp) })                             // GCG游戏初始化完成响应
	c.regMsg(GCGMessagePackNotify, func() any { return new(proto.GCGMessagePackNotify) })                     // GCG游戏消息包通知
	c.regMsg(GCGHeartBeatNotify, func() any { return new(proto.GCGHeartBeatNotify) })                         // GCG游戏心跳包通知
	c.regMsg(GCGOperationReq, func() any { return new(proto.GCGOperationReq) })                               // GCG游戏客户端操作请求
	c.regMsg(GCGOperationRsp, func() any { return new(proto.GCGOperationRsp) })                               // GCG游戏客户端操作响应
	c.regMsg(GCGSkillPreviewNotify, func() any { return new(proto.GCGSkillPreviewNotify) })                   // GCG游戏技能预览通知
	// TODO 客户端开始GCG游戏
	c.regMsg(GCGStartChallengeByCheckRewardReq, func() any { return new(proto.GCGStartChallengeByCheckRewardReq) }) // GCG开始挑战来自检测奖励请求
	c.regMsg(GCGStartChallengeByCheckRewardRsp, func() any { return new(proto.GCGStartChallengeByCheckRewardRsp) }) // GCG开始挑战来自检测奖励响应
	c.regMsg(GCGStartChallengeReq, func() any { return new(proto.GCGStartChallengeReq) })                           // GCG开始挑战请求
	c.regMsg(GCGStartChallengeRsp, func() any { return new(proto.GCGStartChallengeRsp) })                           // GCG开始挑战响应

	// 任务
	c.regMsg(AddQuestContentProgressReq, func() any { return new(proto.AddQuestContentProgressReq) })                   // 添加任务内容进度请求
	c.regMsg(AddQuestContentProgressRsp, func() any { return new(proto.AddQuestContentProgressRsp) })                   // 添加任务内容进度响应
	c.regMsg(QuestListNotify, func() any { return new(proto.QuestListNotify) })                                         // 任务列表通知
	c.regMsg(QuestListUpdateNotify, func() any { return new(proto.QuestListUpdateNotify) })                             // 任务列表更新通知
	c.regMsg(FinishedParentQuestNotify, func() any { return new(proto.FinishedParentQuestNotify) })                     // 已完成父任务列表通知
	c.regMsg(FinishedParentQuestUpdateNotify, func() any { return new(proto.FinishedParentQuestUpdateNotify) })         // 已完成父任务列表更新通知
	c.regMsg(ServerCondMeetQuestListUpdateNotify, func() any { return new(proto.ServerCondMeetQuestListUpdateNotify) }) // 服务器动态任务列表更新通知
	c.regMsg(QuestProgressUpdateNotify, func() any { return new(proto.QuestProgressUpdateNotify) })                     // 任务进度更新通知
	c.regMsg(QuestGlobalVarNotify, func() any { return new(proto.QuestGlobalVarNotify) })                               // 任务全局变量通知

	// 乱七八糟
	c.regMsg(TowerAllDataReq, func() any { return new(proto.TowerAllDataReq) }) // 深渊数据请求
	c.regMsg(TowerAllDataRsp, func() any { return new(proto.TowerAllDataRsp) }) // 深渊数据响应
}

func (c *CmdProtoMap) regMsg(cmdId uint16, protoObjNewFunc func() any) {
	_, exist := c.cmdDeDupMap[cmdId]
	if exist {
		logger.Error("reg dup msg, cmd id: %v", cmdId)
		return
	} else {
		c.cmdDeDupMap[cmdId] = true
	}
	protoObj := protoObjNewFunc().(pb.Message)
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
	// cmdId -> protoObjCache
	c.cmdIdProtoObjCacheMap[cmdId] = &sync.Pool{
		New: protoObjNewFunc,
	}
}

// 性能优化专用方法 若不满足使用条件 请老老实实的用下面的反射方法

// GetProtoObjCacheByCmdId 从缓存池获取一个对象 请务必确保能容忍获取到的对象含有使用过的脏数据 否则会产生不可预料的后果
func (c *CmdProtoMap) GetProtoObjCacheByCmdId(cmdId uint16) pb.Message {
	cachePool, exist := c.cmdIdProtoObjCacheMap[cmdId]
	if !exist {
		logger.Error("unknown cmd id: %v", cmdId)
		return nil
	}
	protoObj := cachePool.Get().(pb.Message)
	return protoObj
}

// PutProtoObjCache 将使用结束的对象放回缓存池 请务必确保对象的生命周期真的已经结束了 否则会产生不可预料的后果
func (c *CmdProtoMap) PutProtoObjCache(cmdId uint16, protoObj pb.Message) {
	cachePool, exist := c.cmdIdProtoObjCacheMap[cmdId]
	if !exist {
		logger.Error("unknown cmd id: %v", cmdId)
		return
	}
	cachePool.Put(protoObj)
}

// 反射方法

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
