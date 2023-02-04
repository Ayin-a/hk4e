package dao

import (
	"bytes"
	"context"
	"io"
	"strconv"
	"time"

	"hk4e/gs/model"
	"hk4e/pkg/logger"

	"github.com/pierrec/lz4/v4"
	"github.com/vmihailenco/msgpack/v5"
)

const RedisPlayerKeyPrefix = "HK4E"

func (d *Dao) GetRedisPlayerKey(userId uint32) string {
	return RedisPlayerKeyPrefix + ":USER:" + strconv.Itoa(int(userId))
}

func (d *Dao) GetRedisPlayer(userId uint32) *model.Player {
	playerDataLz4, err := d.redis.Get(context.TODO(), d.GetRedisPlayerKey(userId)).Result()
	if err != nil {
		logger.Error("get player from redis error: %v", err)
		return nil
	}
	// 解压
	startTime := time.Now().UnixNano()
	in := bytes.NewReader([]byte(playerDataLz4))
	out := new(bytes.Buffer)
	lz4Reader := lz4.NewReader(in)
	_, err = io.Copy(out, lz4Reader)
	if err != nil {
		logger.Error("lz4 decode player data error: %v", err)
		return nil
	}
	playerData := out.Bytes()
	endTime := time.Now().UnixNano()
	costTime := endTime - startTime
	logger.Debug("lz4 decode cost time: %v ns, before len: %v, after len: %v, ratio lz4/raw: %v",
		costTime, len(playerDataLz4), len(playerData), float64(len(playerDataLz4))/float64(len(playerData)))
	player := new(model.Player)
	err = msgpack.Unmarshal(playerData, player)
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
	// 压缩
	startTime := time.Now().UnixNano()
	in := bytes.NewReader(playerData)
	out := new(bytes.Buffer)
	lz4Writer := lz4.NewWriter(out)
	_, err = io.Copy(lz4Writer, in)
	if err != nil {
		logger.Error("lz4 encode player data error: %v", err)
		return
	}
	err = lz4Writer.Close()
	if err != nil {
		logger.Error("lz4 encode player data error: %v", err)
		return
	}
	playerDataLz4 := out.Bytes()
	endTime := time.Now().UnixNano()
	costTime := endTime - startTime
	logger.Debug("lz4 encode cost time: %v ns, before len: %v, after len: %v, ratio lz4/raw: %v",
		costTime, len(playerData), len(playerDataLz4), float64(len(playerDataLz4))/float64(len(playerData)))
	err = d.redis.Set(context.TODO(), d.GetRedisPlayerKey(player.PlayerID), playerDataLz4, time.Hour*24*30).Err()
	if err != nil {
		logger.Error("set player to redis error: %v", err)
		return
	}
}

func (d *Dao) SetRedisPlayerList(playerList []*model.Player) {
	// TODO 换成redis批量命令执行
	for _, player := range playerList {
		d.SetRedisPlayer(player)
	}
}
