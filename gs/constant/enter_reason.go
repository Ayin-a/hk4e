package constant

var EnterReasonConst *EnterReason

type EnterReason struct {
	None                    uint16
	Login                   uint16
	DungeonReplay           uint16
	DungeonReviveOnWaypoint uint16
	DungeonEnter            uint16
	DungeonQuit             uint16
	Gm                      uint16
	QuestRollback           uint16
	Revival                 uint16
	PersonalScene           uint16
	TransPoint              uint16
	ClientTransmit          uint16
	ForceDragBack           uint16
	TeamKick                uint16
	TeamJoin                uint16
	TeamBack                uint16
	Muip                    uint16
	DungeonInviteAccept     uint16
	Lua                     uint16
	ActivityLoadTerrain     uint16
	HostFromSingleToMp      uint16
	MpPlay                  uint16
	AnchorPoint             uint16
	LuaSkipUi               uint16
	ReloadTerrain           uint16
	DraftTransfer           uint16
	EnterHome               uint16
	ExitHome                uint16
	ChangeHomeModule        uint16
	Gallery                 uint16
	HomeSceneJump           uint16
	HideAndSeek             uint16
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
