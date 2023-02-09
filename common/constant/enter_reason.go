package constant

const (
	EnterReasonNone                    uint16 = 0
	EnterReasonLogin                   uint16 = 1  // 登录
	EnterReasonDungeonReplay           uint16 = 11 // 秘境重新挑战
	EnterReasonDungeonReviveOnWaypoint uint16 = 12 // 秘境重生
	EnterReasonDungeonEnter            uint16 = 13 // 秘境进入
	EnterReasonDungeonQuit             uint16 = 14 // 秘境离开
	EnterReasonGm                      uint16 = 21 // 管理员
	EnterReasonQuestRollback           uint16 = 31 // 任务回滚
	EnterReasonRevival                 uint16 = 32 // 重生
	EnterReasonPersonalScene           uint16 = 41 // 个人场景
	EnterReasonTransPoint              uint16 = 42 // 传送点
	EnterReasonClientTransmit          uint16 = 43 // 客户端传送
	EnterReasonForceDragBack           uint16 = 44 // 强制后退
	EnterReasonTeamKick                uint16 = 51 // 队伍踢出
	EnterReasonTeamJoin                uint16 = 52 // 队伍加入
	EnterReasonTeamBack                uint16 = 53 // 队伍返回
	EnterReasonMuip                    uint16 = 54 // 与原神项目组的某个服务器组件相关
	EnterReasonDungeonInviteAccept     uint16 = 55 // 秘境邀请接受
	EnterReasonLua                     uint16 = 56 // 脚本
	EnterReasonActivityLoadTerrain     uint16 = 57 // 活动加载地形
	EnterReasonHostFromSingleToMp      uint16 = 58 // 房主从单人到多人
	EnterReasonMpPlay                  uint16 = 59 // 多人游戏
	EnterReasonAnchorPoint             uint16 = 60 // 迷你锚点
	EnterReasonLuaSkipUi               uint16 = 61 // 脚本跳过UI
	EnterReasonReloadTerrain           uint16 = 62 // 重载地形
	EnterReasonDraftTransfer           uint16 = 63 // 某个东西传送 ??
	EnterReasonEnterHome               uint16 = 64 // 进入尘歌壶
	EnterReasonExitHome                uint16 = 65 // 离开尘歌壶
	EnterReasonChangeHomeModule        uint16 = 66 // 更改尘歌壶模块
	EnterReasonGallery                 uint16 = 67 // ??
	EnterReasonHomeSceneJump           uint16 = 68 // 尘歌壶场景跳转
	EnterReasonHideAndSeek             uint16 = 69 // 捉迷藏也就是风行迷宗
)
