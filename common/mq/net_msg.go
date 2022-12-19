package mq

import pb "google.golang.org/protobuf/proto"

const (
	MsgTypeGame = iota
	MsgTypeFight
)

type NetMsg struct {
	MsgType  uint8     `msgpack:"MsgType"`
	EventId  uint16    `msgpack:"EventId"`
	Topic    string    `msgpack:"-"`
	GameMsg  *GameMsg  `msgpack:"GameMsg"`
	FightMsg *FightMsg `msgpack:"FightMsg"`
}

const (
	NormalMsg = iota
	UserRegNotify
	UserLoginNotify
	UserOfflineNotify
	ClientRttNotify
	ClientTimeNotify
)

type GameMsg struct {
	UserId             uint32     `msgpack:"UserId"`
	CmdId              uint16     `msgpack:"CmdId"`
	ClientSeq          uint32     `msgpack:"ClientSeq"`
	ClientRtt          uint32     `msgpack:"ClientRtt"`
	ClientTime         uint32     `msgpack:"ClientTime"`
	PayloadMessage     pb.Message `msgpack:"-"`
	PayloadMessageData []byte     `msgpack:"PayloadMessageData"`
}

const (
	AddFightRoutine = iota
	DelFightRoutine
	FightRoutineAddEntity
	FightRoutineDelEntity
)

type FightMsg struct {
	FightRoutineId uint32             `msgpack:"FightRoutineId"`
	EntityId       uint32             `msgpack:"EntityId"`
	FightPropMap   map[uint32]float32 `msgpack:"FightPropMap"`
	Uid            uint32             `msgpack:"Uid"`
	AvatarGuid     uint64             `msgpack:"AvatarGuid"`
}
