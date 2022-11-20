package db

type PlayerIDCounter struct {
	ID       string `bson:"_id"`
	PlayerID uint64 `bson:"PlayerID"`
}
