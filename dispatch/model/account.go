package model

import "go.mongodb.org/mongo-driver/bson/primitive"

type Account struct {
	ID              primitive.ObjectID `bson:"_id,omitempty"`
	AccountID       uint64             `bson:"accountID"`
	Username        string             `bson:"username"`
	Password        string             `bson:"password"`
	PlayerID        uint64             `bson:"playerID"`
	Token           string             `bson:"token"`
	TokenCreateTime uint64             `bson:"tokenCreateTime"` // 毫秒时间戳
	ComboToken      string             `bson:"comboToken"`
	ComboTokenUsed  bool               `bson:"comboTokenUsed"`
	Forbid          bool               `bson:"forbid"`
	ForbidEndTime   uint64             `bson:"forbidEndTime"` // 秒时间戳
}
