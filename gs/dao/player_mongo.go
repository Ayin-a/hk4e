package dao

import (
	"context"

	"hk4e/gs/model"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
)

func (d *Dao) InsertPlayer(player *model.Player) error {
	db := d.db.Collection("player")
	_, err := db.InsertOne(context.TODO(), player)
	return err
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
	return err
}

func (d *Dao) DeletePlayer(playerID uint32) error {
	db := d.db.Collection("player")
	_, err := db.DeleteOne(context.TODO(), bson.D{{"playerID", playerID}})
	return err
}

func (d *Dao) DeletePlayerList(playerIDList []uint32) error {
	if len(playerIDList) == 0 {
		return nil
	}
	db := d.db.Collection("player")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, playerID := range playerIDList {
		modelOperate := mongo.NewDeleteOneModel().SetFilter(bson.D{{"playerID", playerID}})
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	return err
}

func (d *Dao) UpdatePlayer(player *model.Player) error {
	db := d.db.Collection("player")
	_, err := db.UpdateOne(
		context.TODO(),
		bson.D{{"playerID", player.PlayerID}},
		bson.D{{"$set", player}},
	)
	return err
}

func (d *Dao) UpdatePlayerList(playerList []*model.Player) error {
	if len(playerList) == 0 {
		return nil
	}
	db := d.db.Collection("player")
	modelOperateList := make([]mongo.WriteModel, 0)
	for _, player := range playerList {
		modelOperate := mongo.NewUpdateOneModel().SetFilter(bson.D{{"playerID", player.PlayerID}}).SetUpdate(bson.D{{"$set", player}})
		modelOperateList = append(modelOperateList, modelOperate)
	}
	_, err := db.BulkWrite(context.TODO(), modelOperateList)
	return err
}

func (d *Dao) QueryPlayerByID(playerID uint32) (*model.Player, error) {
	db := d.db.Collection("player")
	result := db.FindOne(
		context.TODO(),
		bson.D{{"playerID", playerID}},
	)
	item := new(model.Player)
	err := result.Decode(item)
	if err != nil {
		return nil, err
	}
	return item, nil
}

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
