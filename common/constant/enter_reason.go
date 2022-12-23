package constant

var EnterReasonConst *EnterReason

type EnterReason struct {
	None                    uint16
	Login                   uint16 // 登录
	DungeonReplay           uint16 // 秘境重新挑战
	DungeonReviveOnWaypoint uint16 // 秘境重生
	DungeonEnter            uint16 // 秘境进入
	DungeonQuit             uint16 // 秘境离开
	Gm                      uint16 // 管理员
	QuestRollback           uint16 // 任务回滚
	Revival                 uint16 // 重生
	PersonalScene           uint16 // 个人场景
	TransPoint              uint16 // 传送点
	ClientTransmit          uint16 // 客户端传送
	ForceDragBack           uint16 // 强制后退
	TeamKick                uint16 // 队伍踢出
	TeamJoin                uint16 // 队伍加入
	TeamBack                uint16 // 队伍返回
	Muip                    uint16 // ??
	DungeonInviteAccept     uint16 // 秘境邀请接受
	Lua                     uint16 // 脚本
	ActivityLoadTerrain     uint16 // 活动加载地形
	HostFromSingleToMp      uint16 // 房主从单人到多人
	MpPlay                  uint16 // 多人游戏
	AnchorPoint             uint16 // 迷你锚点
	LuaSkipUi               uint16 // 脚本跳过UI
	ReloadTerrain           uint16 // 重载地形
	DraftTransfer           uint16 // 某个东西传送 ??
	EnterHome               uint16 // 进入尘歌壶
	ExitHome                uint16 // 离开尘歌壶
	ChangeHomeModule        uint16 // 更改尘歌壶模块
	Gallery                 uint16 // ??
	HomeSceneJump           uint16 // 尘歌壶场景跳转
	HideAndSeek             uint16 // 隐藏和搜索 ??
}

func InitEnterReasonConst() {
	EnterReasonConst = new(EnterReason)

	EnterReasonConst.None = 0
	EnterReasonConst.Login = 1
	EnterReasonConst.DungeonReplay = 11
	EnterReasonConst.DungeonReviveOnWaypoint = 12
	EnterReasonConst.DungeonEnter = 13
	EnterReasonConst.DungeonQuit = 14
	EnterReasonConst.Gm = 21
	EnterReasonConst.QuestRollback = 31
	EnterReasonConst.Revival = 32
	EnterReasonConst.PersonalScene = 41
	EnterReasonConst.TransPoint = 42
	EnterReasonConst.ClientTransmit = 43
	EnterReasonConst.ForceDragBack = 44
	EnterReasonConst.TeamKick = 51
	EnterReasonConst.TeamJoin = 52
	EnterReasonConst.TeamBack = 53
	EnterReasonConst.Muip = 54
	EnterReasonConst.DungeonInviteAccept = 55
	EnterReasonConst.Lua = 56
	EnterReasonConst.ActivityLoadTerrain = 57
	EnterReasonConst.HostFromSingleToMp = 58
	EnterReasonConst.MpPlay = 59
	EnterReasonConst.AnchorPoint = 60
	EnterReasonConst.LuaSkipUi = 61
	EnterReasonConst.ReloadTerrain = 62
	EnterReasonConst.DraftTransfer = 63
	EnterReasonConst.EnterHome = 64
	EnterReasonConst.ExitHome = 65
	EnterReasonConst.ChangeHomeModule = 66
	EnterReasonConst.Gallery = 67
	EnterReasonConst.HomeSceneJump = 68
	EnterReasonConst.HideAndSeek = 69
}
