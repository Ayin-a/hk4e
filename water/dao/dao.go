package dao

import (
	"flswld.com/common/config"
	"flswld.com/logger"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

type Dao struct {
	db *gorm.DB
}

func NewDao() (r *Dao) {
	r = new(Dao)
	db, err := gorm.Open("mysql", config.CONF.Database.Url)
	if err != nil {
		logger.LOG.Error("db open error: %v", err)
		panic(err)
	}
	if config.CONF.Logger.Level == "DEBUG" {
		db.LogMode(true)
	}
	r.db = db
	return r
}

func (d *Dao) CloseDao() {
	_ = d.db.Close()
}
