package dao

import (
	"context"

	"hk4e/gs/model"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
)

// PlayerDb 只从数据库读写的结构
type PlayerDb struct {
	ID         primitive.ObjectID          `bson:"_id,omitempty"`
	PlayerID   uint32                      `bson:"PlayerID"` // 玩家uid
	ChatMsgMap map[uint32][]*model.ChatMsg // 聊天信息
}

func (d *Dao) InsertPlayer(player *model.Player) error {
	db := d.db.Collection("player")
	_, err := db.InsertOne(context.TODO(), player)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) InsertPlayerDb(playerDb *PlayerDb) error {
	db := d.db.Collection("player_db")
	_, err := db.InsertOne(context.TODO(), playerDb)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) InsertPlayerList(playerList []*model.Player) error {
	if len(playerList) == 0 {
		return nil
	}
	db := d.db.Collection("player")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, player := range playerList {
		modelOperate := mongo.NewInsertOneModel().SetDocument(player)
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) InsertPlayerDbList(playerDbList []*PlayerDb) error {
	if len(playerDbList) == 0 {
		return nil
	}
	db := d.db.Collection("player_db")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, playerDb := range playerDbList {
		modelOperate := mongo.NewInsertOneModel().SetDocument(playerDb)
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) DeletePlayer(playerID uint32) error {
	db := d.db.Collection("player")
	_, err := db.DeleteOne(context.TODO(), bson.D{{"PlayerID", playerID}})
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) DeletePlayerDb(playerID uint32) error {
	db := d.db.Collection("player_db")
	_, err := db.DeleteOne(context.TODO(), bson.D{{"PlayerID", playerID}})
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) DeletePlayerList(playerIDList []uint32) error {
	if len(playerIDList) == 0 {
		return nil
	}
	db := d.db.Collection("player")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, playerID := range playerIDList {
		modelOperate := mongo.NewDeleteOneModel().SetFilter(bson.D{{"PlayerID", playerID}})
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) DeletePlayerDbList(playerIDList []uint32) error {
	if len(playerIDList) == 0 {
		return nil
	}
	db := d.db.Collection("player_db")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, playerID := range playerIDList {
		modelOperate := mongo.NewDeleteOneModel().SetFilter(bson.D{{"PlayerID", playerID}})
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) UpdatePlayer(player *model.Player) error {
	db := d.db.Collection("player")
	_, err := db.UpdateOne(
		context.TODO(),
		bson.D{{"PlayerID", player.PlayerID}},
		bson.D{{"$set", player}},
	)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) UpdatePlayerDb(playerDb *PlayerDb) error {
	db := d.db.Collection("player_db")
	_, err := db.UpdateOne(
		context.TODO(),
		bson.D{{"PlayerID", playerDb.PlayerID}},
		bson.D{{"$set", playerDb}},
	)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) UpdatePlayerList(playerList []*model.Player) error {
	if len(playerList) == 0 {
		return nil
	}
	db := d.db.Collection("player")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, player := range playerList {
		modelOperate := mongo.NewUpdateOneModel().SetFilter(bson.D{{"PlayerID", player.PlayerID}}).SetUpdate(bson.D{{"$set", player}})
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) UpdatePlayerDbList(playerDbList []*PlayerDb) error {
	if len(playerDbList) == 0 {
		return nil
	}
	db := d.db.Collection("player_db")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, playerDb := range playerDbList {
		modelOperate := mongo.NewUpdateOneModel().SetFilter(bson.D{{"PlayerID", playerDb.PlayerID}}).SetUpdate(bson.D{{"$set", playerDb}})
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	if err != nil {
		return err
	}
	return nil
}

func (d *Dao) QueryPlayerByID(playerID uint32) (*model.Player, error) {
	db := d.db.Collection("player")
	result := db.FindOne(
		context.TODO(),
		bson.D{{"PlayerID", playerID}},
	)
	player := new(model.Player)
	err := result.Decode(player)
	if err != nil {
		return nil, err
	}
	return player, nil
}

func (d *Dao) QueryPlayerDbByID(playerID uint32) (*PlayerDb, error) {
	db := d.db.Collection("player_db")
	result := db.FindOne(
		context.TODO(),
		bson.D{{"PlayerID", playerID}},
	)
	playerDb := new(PlayerDb)
	err := result.Decode(playerDb)
	if err != nil {
		return nil, err
	}
	if playerDb.ChatMsgMap == nil {
		playerDb.ChatMsgMap = make(map[uint32][]*model.ChatMsg)
	}
	return playerDb, nil
}

// QueryPlayerList 危险接口 非测试禁止使用
func (d *Dao) QueryPlayerList() ([]*model.Player, error) {
	db := d.db.Collection("player")
	find, err := db.Find(
		context.TODO(),
		bson.D{},
	)
	if err != nil {
		return nil, err
	}
	result := make([]*model.Player, 0)
	for find.Next(context.TODO()) {
		item := new(model.Player)
		err = find.Decode(item)
		if err != nil {
			return nil, err
		}
		result = append(result, item)
	}
	return result, nil
}
