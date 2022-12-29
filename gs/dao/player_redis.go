package dao

import (
	"context"
	"strconv"
	"time"

	"hk4e/gs/model"
	"hk4e/pkg/logger"

	"github.com/vmihailenco/msgpack/v5"
)

const RedisPlayerKeyPrefix = "HK4E"

func (d *Dao) GetRedisPlayerKey(userId uint32) string {
	return RedisPlayerKeyPrefix + ":USER:" + strconv.Itoa(int(userId))
}

func (d *Dao) GetRedisPlayer(userId uint32) *model.Player {
	playerData, err := d.redis.Get(context.TODO(), d.GetRedisPlayerKey(userId)).Result()
	if err != nil {
		logger.Error("get player from redis error: %v", err)
		return nil
	}
	player := new(model.Player)
	err = msgpack.Unmarshal([]byte(playerData), player)
	if err != nil {
		logger.Error("unmarshal player error: %v", err)
		return nil
	}
	return player
}

func (d *Dao) SetRedisPlayer(player *model.Player) {
	playerData, err := msgpack.Marshal(player)
	if err != nil {
		logger.Error("marshal player error: %v", err)
		return
	}
	err = d.redis.Set(context.TODO(), d.GetRedisPlayerKey(player.PlayerID), playerData, time.Hour*24*30).Err()
	if err != nil {
		logger.Error("set player from redis error: %v", err)
		return
	}
}

func (d *Dao) SetRedisPlayerList(playerList []*model.Player) {
	// TODO 换成redis批量命令执行
	for _, player := range playerList {
		d.SetRedisPlayer(player)
	}
}
