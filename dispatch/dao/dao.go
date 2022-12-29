package dao

import (
	"context"

	"hk4e/common/config"
	"hk4e/pkg/logger"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
)

type Dao struct {
	mongo *mongo.Client
	db    *mongo.Database
}

func NewDao() (r *Dao) {
	r = new(Dao)
	clientOptions := options.Client().ApplyURI(config.CONF.Database.Url).SetMinPoolSize(10).SetMaxPoolSize(100)
	client, err := mongo.Connect(context.TODO(), clientOptions)
	if err != nil {
		logger.Error("mongo connect error: %v", err)
		return nil
	}
	err = client.Ping(context.TODO(), readpref.Primary())
	if err != nil {
		logger.Error("mongo ping error: %v", err)
		return nil
	}
	r.mongo = client
	r.db = client.Database("dispatch_hk4e")
	return r
}

func (d *Dao) CloseDao() {
	err := d.mongo.Disconnect(context.TODO())
	if err != nil {
		logger.Error("mongo close error: %v", err)
	}
}
