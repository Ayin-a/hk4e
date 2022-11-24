package model

import "go.mongodb.org/mongo-driver/bson/primitive"

type Account struct {
	ID            primitive.ObjectID `bson:"_id,omitempty"`
	Uid           uint64             `bson:"uid"`
	Username      string             `bson:"username"`
	PlayerID      uint64             `bson:"playerID"`
	Token         string             `bson:"token"`
	ComboToken    string             `bson:"comboToken"`
	Forbid        bool               `bson:"forbid"`
	ForbidEndTime uint64             `bson:"forbidEndTime"`
}
