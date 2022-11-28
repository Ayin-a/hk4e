package model

type AccountIDCounter struct {
	ID        string `bson:"_id"`
	AccountID uint64 `bson:"AccountID"`
}
