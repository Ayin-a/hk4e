package model

const (
	ChatMsgTypeText = iota
	ChatMsgTypeIcon
)

type ChatMsg struct {
	Time    uint32 `bson:"time"`
	ToUid   uint32 `bson:"toUid"`
	Uid     uint32 `bson:"uid"`
	IsRead  bool   `bson:"isRead"`
	MsgType uint8  `bson:"msgType"`
	Text    string `bson:"text"`
	Icon    uint32 `bson:"icon"`
}
