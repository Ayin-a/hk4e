package model

const (
	ChatMsgTypeText = iota
	ChatMsgTypeIcon
)

type ChatMsg struct {
	Time    uint32
	ToUid   uint32
	Uid     uint32
	IsRead  bool
	MsgType uint8
	Text    string
	Icon    uint32
}
