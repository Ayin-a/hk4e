package model

import "go.mongodb.org/mongo-driver/bson/primitive"

type Account struct {
	ID              primitive.ObjectID `bson:"_id,omitempty"`
	AccountID       uint32             `bson:"AccountID"`
	PlayerID        uint32             `bson:"PlayerID"`
	Username        string             `bson:"Username"`
	Password        string             `bson:"Password"`
	Token           string             `bson:"Token"`
	TokenCreateTime uint64             `bson:"TokenCreateTime"` // 毫秒时间戳
	ComboToken      string             `bson:"ComboToken"`
	ComboTokenUsed  bool               `bson:"ComboTokenUsed"`
	Forbid          bool               `bson:"Forbid"`
	ForbidEndTime   uint32             `bson:"ForbidEndTime"` // 秒时间戳
}
