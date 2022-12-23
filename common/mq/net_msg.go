package mq

import pb "google.golang.org/protobuf/proto"

const (
	MsgTypeGame = iota
	MsgTypeFight
	MsgTypeConnCtrl
)

type NetMsg struct {
	MsgType           uint8        `msgpack:"MsgType"`
	EventId           uint16       `msgpack:"EventId"`
	Topic             string       `msgpack:"-"`
	GameMsg           *GameMsg     `msgpack:"GameMsg"`
	FightMsg          *FightMsg    `msgpack:"FightMsg"`
	ConnCtrlMsg       *ConnCtrlMsg `msgpack:"ConnCtrlMsg"`
	OriginServerType  string       `msgpack:"OriginServerType"`
	OriginServerAppId string       `msgpack:"OriginServerAppId"`
}

const (
	NormalMsg = iota
	UserOfflineNotify
)

type GameMsg struct {
	UserId             uint32     `msgpack:"UserId"`
	CmdId              uint16     `msgpack:"CmdId"`
	ClientSeq          uint32     `msgpack:"ClientSeq"`
	PayloadMessage     pb.Message `msgpack:"-"`
	PayloadMessageData []byte     `msgpack:"PayloadMessageData"`
}

const (
	ClientRttNotify = iota
	ClientTimeNotify
	FightServerSelectNotify
	KickPlayerNotify
)

type ConnCtrlMsg struct {
	UserId           uint32 `msgpack:"UserId"`
	ClientRtt        uint32 `msgpack:"ClientRtt"`
	ClientTime       uint32 `msgpack:"ClientTime"`
	FightServerAppId string `msgpack:"FightServerAppId"`
	KickUserId       uint32 `msgpack:"KickUserId"`
	KickReason       uint32 `msgpack:"KickReason"`
}

const (
	AddFightRoutine = iota
	DelFightRoutine
	FightRoutineAddEntity
	FightRoutineDelEntity
)

type FightMsg struct {
	FightRoutineId  uint32             `msgpack:"FightRoutineId"`
	EntityId        uint32             `msgpack:"EntityId"`
	FightPropMap    map[uint32]float32 `msgpack:"FightPropMap"`
	Uid             uint32             `msgpack:"Uid"`
	AvatarGuid      uint64             `msgpack:"AvatarGuid"`
	GateServerAppId string             `msgpack:"GateServerAppId"`
}
