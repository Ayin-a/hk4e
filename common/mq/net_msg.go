package mq

import pb "google.golang.org/protobuf/proto"

const (
	MsgTypeGame     = iota // 来自客户端的游戏消息
	MsgTypeFight           // 战斗服务器消息
	MsgTypeConnCtrl        // GATE客户端连接信息消息
	MsgTypeServer          // 服务器之间转发的消息
)

type NetMsg struct {
	MsgType           uint8        `msgpack:"MsgType"`
	EventId           uint16       `msgpack:"EventId"`
	Topic             string       `msgpack:"-"`
	GameMsg           *GameMsg     `msgpack:"GameMsg"`
	FightMsg          *FightMsg    `msgpack:"FightMsg"`
	ConnCtrlMsg       *ConnCtrlMsg `msgpack:"ConnCtrlMsg"`
	ServerMsg         *ServerMsg   `msgpack:"ServerMsg"`
	OriginServerType  string       `msgpack:"OriginServerType"`
	OriginServerAppId string       `msgpack:"OriginServerAppId"`
}

const (
	NormalMsg = iota // 正常的游戏消息
)

type GameMsg struct {
	UserId             uint32     `msgpack:"UserId"`
	CmdId              uint16     `msgpack:"CmdId"`
	ClientSeq          uint32     `msgpack:"ClientSeq"`
	PayloadMessage     pb.Message `msgpack:"-"`
	PayloadMessageData []byte     `msgpack:"PayloadMessageData"`
}

const (
	ClientRttNotify   = iota // 客户端网络时延上报
	ClientTimeNotify         // 客户端本地时间上报
	KickPlayerNotify         // 通知GATE剔除玩家
	UserOfflineNotify        // 玩家离线通知GS
)

type ConnCtrlMsg struct {
	UserId     uint32 `msgpack:"UserId"`
	ClientRtt  uint32 `msgpack:"ClientRtt"`
	ClientTime uint32 `msgpack:"ClientTime"`
	KickUserId uint32 `msgpack:"KickUserId"`
	KickReason uint32 `msgpack:"KickReason"`
}

const (
	AddFightRoutine       = iota // 添加战斗实例
	DelFightRoutine              // 删除战斗实例
	FightRoutineAddEntity        // 战斗实例添加实体
	FightRoutineDelEntity        // 战斗实例删除实体
)

type FightMsg struct {
	FightRoutineId  uint32             `msgpack:"FightRoutineId"`
	EntityId        uint32             `msgpack:"EntityId"`
	FightPropMap    map[uint32]float32 `msgpack:"FightPropMap"`
	Uid             uint32             `msgpack:"Uid"`
	AvatarGuid      uint64             `msgpack:"AvatarGuid"`
	GateServerAppId string             `msgpack:"GateServerAppId"`
}

const (
	ServerAppidBindNotify             = iota // 玩家连接绑定的各个服务器appid通知
	ServerUserOnlineStateChangeNotify        // 广播玩家上线和离线状态以及所在GS的appid
	ServerUserBaseInfoReq                    // 跨服玩家基础数据请求
	ServerUserBaseInfoRsp                    // 跨服玩家基础数据响应
	ServerUserGsChangeNotify                 // 跨服玩家迁移通知
	ServerUserMpReq                          // 跨服多人世界相关请求
	ServerUserMpRsp                          // 跨服多人世界相关响应
	ServerChatMsgNotify                      // 跨服玩家聊天消息通知
	ServerAddFriendNotify                    // 跨服添加好友通知
)

type ServerMsg struct {
	FightServerAppId string         `msgpack:"FightServerAppId"`
	UserId           uint32         `msgpack:"UserId"`
	IsOnline         bool           `msgpack:"IsOnline"`
	UserBaseInfo     *UserBaseInfo  `msgpack:"UserBaseInfo"`
	GameServerAppId  string         `msgpack:"GameServerAppId"`
	JoinHostUserId   uint32         `msgpack:"JoinHostUserId"`
	UserMpInfo       *UserMpInfo    `msgpack:"UserMpInfo"`
	ChatMsgInfo      *ChatMsgInfo   `msgpack:"ChatMsgInfo"`
	AddFriendInfo    *AddFriendInfo `msgpack:"AddFriendInfo"`
}

type OriginInfo struct {
	CmdName string `msgpack:"CmdName"`
	UserId  uint32 `msgpack:"UserId"`
}

type UserBaseInfo struct {
	OriginInfo     *OriginInfo `msgpack:"OriginInfo"`
	UserId         uint32      `msgpack:"UserId"`
	Nickname       string      `msgpack:"Nickname"`
	PlayerLevel    uint32      `msgpack:"PlayerLevel"`
	MpSettingType  uint8       `msgpack:"MpSettingType"`
	NameCardId     uint32      `msgpack:"NameCardId"`
	Signature      string      `msgpack:"Signature"`
	HeadImageId    uint32      `msgpack:"HeadImageId"`
	WorldPlayerNum uint32      `msgpack:"WorldPlayerNum"`
	WorldLevel     uint32      `msgpack:"WorldLevel"`
	Birthday       []uint8     `msgpack:"Birthday"`
}

type UserMpInfo struct {
	OriginInfo            *OriginInfo   `msgpack:"OriginInfo"`
	HostUserId            uint32        `msgpack:"HostUserId"`
	ApplyUserId           uint32        `msgpack:"ApplyUserId"`
	ApplyPlayerOnlineInfo *UserBaseInfo `msgpack:"ApplyPlayerOnlineInfo"`
	ApplyOk               bool          `msgpack:"ApplyOk"`
	Agreed                bool          `msgpack:"Agreed"`
	HostNickname          string        `msgpack:"HostNickname"`
}

type ChatMsgInfo struct {
	Time    uint32 `msgpack:"Time"`
	ToUid   uint32 `msgpack:"ToUid"`
	Uid     uint32 `msgpack:"Uid"`
	IsRead  bool   `msgpack:"IsRead"`
	MsgType uint8  `msgpack:"MsgType"`
	Text    string `msgpack:"Text"`
	Icon    uint32 `msgpack:"Icon"`
}

type AddFriendInfo struct {
	OriginInfo            *OriginInfo   `msgpack:"OriginInfo"`
	TargetUserId          uint32        `msgpack:"TargetUserId"`
	ApplyPlayerOnlineInfo *UserBaseInfo `msgpack:"ApplyPlayerOnlineInfo"`
}
