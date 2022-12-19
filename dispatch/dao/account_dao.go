package dao

import (
	"context"

	"hk4e/dispatch/model"
	"hk4e/pkg/logger"

	"github.com/pkg/errors"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
)

func (d *Dao) GetNextAccountId() (uint64, error) {
	db := d.db.Collection("account_id_counter")
	find := db.FindOne(context.TODO(), bson.D{{"_id", "default"}})
	item := new(model.AccountIDCounter)
	err := find.Decode(item)
	if err != nil {
		if err == mongo.ErrNoDocuments {
			item := &model.AccountIDCounter{
				ID:        "default",
				AccountID: 1,
			}
			_, err := db.InsertOne(context.TODO(), item)
			if err != nil {
				return 0, errors.New("insert new AccountID error")
			}
			return item.AccountID, nil
		} else {
			return 0, err
		}
	}
	item.AccountID++
	_, err = db.UpdateOne(
		context.TODO(),
		bson.D{
			{"_id", "default"},
		},
		bson.D{
			{"$set", bson.D{
				{"AccountID", item.AccountID},
			}},
		},
	)
	if err != nil {
		return 0, err
	}
	return item.AccountID, nil
}

func (d *Dao) GetNextYuanShenUid() (uint64, error) {
	db := d.db.Collection("player_id_counter")
	find := db.FindOne(context.TODO(), bson.D{{"_id", "default"}})
	item := new(model.PlayerIDCounter)
	err := find.Decode(item)
	if err != nil {
		if err == mongo.ErrNoDocuments {
			item := &model.PlayerIDCounter{
				ID:       "default",
				PlayerID: 100000001,
			}
			_, err := db.InsertOne(context.TODO(), item)
			if err != nil {
				return 0, errors.New("insert new PlayerID error")
			}
			return item.PlayerID, nil
		} else {
			return 0, err
		}
	}
	item.PlayerID++
	_, err = db.UpdateOne(
		context.TODO(),
		bson.D{
			{"_id", "default"},
		},
		bson.D{
			{"$set", bson.D{
				{"PlayerID", item.PlayerID},
			}},
		},
	)
	if err != nil {
		return 0, err
	}
	return item.PlayerID, nil
}

func (d *Dao) InsertAccount(account *model.Account) (primitive.ObjectID, error) {
	db := d.db.Collection("account")
	id, err := db.InsertOne(context.TODO(), account)
	if err != nil {
		return primitive.ObjectID{}, err
	} else {
		_id, ok := id.InsertedID.(primitive.ObjectID)
		if !ok {
			logger.Error("get insert id error")
			return primitive.ObjectID{}, nil
		}
		return _id, nil
	}
}

func (d *Dao) DeleteAccountByUsername(username string) (int64, error) {
	db := d.db.Collection("account")
	deleteCount, err := db.DeleteOne(
		context.TODO(),
		bson.D{
			{"username", username},
		},
	)
	if err != nil {
		return 0, err
	} else {
		return deleteCount.DeletedCount, nil
	}
}

func (d *Dao) UpdateAccountFieldByFieldName(fieldName string, fieldValue any, fieldUpdateName string, fieldUpdateValue any) (int64, error) {
	db := d.db.Collection("account")
	updateCount, err := db.UpdateOne(
		context.TODO(),
		bson.D{
			{fieldName, fieldValue},
		},
		bson.D{
			{"$set", bson.D{
				{fieldUpdateName, fieldUpdateValue},
			}},
		},
	)
	if err != nil {
		return 0, err
	} else {
		return updateCount.ModifiedCount, nil
	}
}

func (d *Dao) QueryAccountByField(fieldName string, fieldValue any) (*model.Account, error) {
	db := d.db.Collection("account")
	find, err := db.Find(
		context.TODO(),
		bson.D{
			{fieldName, fieldValue},
		},
	)
	if err != nil {
		return nil, err
	}
	result := make([]*model.Account, 0)
	for find.Next(context.TODO()) {
		item := new(model.Account)
		err := find.Decode(item)
		if err != nil {
			return nil, err
		}
		result = append(result, item)
	}
	if len(result) == 0 {
		return nil, nil
	} else {
		return result[0], nil
	}
}
