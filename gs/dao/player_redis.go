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

// RedisPlayerKeyPrefix key前缀
const RedisPlayerKeyPrefix = "HK4E"

// GetRedisPlayerKey 获取玩家数据key
func (d *Dao) GetRedisPlayerKey(userId uint32) string {
	return RedisPlayerKeyPrefix + ":USER:" + strconv.Itoa(int(userId))
}

// GetRedisPlayerLockKey 获取玩家分布式锁key
func (d *Dao) GetRedisPlayerLockKey(userId uint32) string {
	return RedisPlayerKeyPrefix + ":USER_LOCK:" + strconv.Itoa(int(userId))
}

// GetRedisPlayer 获取玩家数据
func (d *Dao) GetRedisPlayer(userId uint32) *model.Player {
	startTime := time.Now().UnixNano()
	playerDataLz4, err := d.redis.Get(context.TODO(), d.GetRedisPlayerKey(userId)).Result()
	if err != nil {
		logger.Error("get player from redis error: %v", err)
		return nil
	}
	endTime := time.Now().UnixNano()
	costTime := endTime - startTime
	logger.Debug("get player from redis cost time: %v ns", costTime)
	// 解压
	startTime = time.Now().UnixNano()
	in := bytes.NewReader([]byte(playerDataLz4))
	out := new(bytes.Buffer)
	lz4Reader := lz4.NewReader(in)
	_, err = io.Copy(out, lz4Reader)
	if err != nil {
		logger.Error("lz4 decode player data error: %v", err)
		return nil
	}
	playerData := out.Bytes()
	endTime = time.Now().UnixNano()
	costTime = endTime - startTime
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

// SetRedisPlayer 写入玩家数据
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
	startTime = time.Now().UnixNano()
	err = d.redis.Set(context.TODO(), d.GetRedisPlayerKey(player.PlayerID), playerDataLz4, time.Hour*24*30).Err()
	if err != nil {
		logger.Error("set player to redis error: %v", err)
		return
	}
	endTime = time.Now().UnixNano()
	costTime = endTime - startTime
	logger.Debug("set player to redis cost time: %v ns", costTime)
}

// SetRedisPlayerList 批量写入玩家数据
func (d *Dao) SetRedisPlayerList(playerList []*model.Player) {
	// TODO 换成redis批量命令执行
	for _, player := range playerList {
		d.SetRedisPlayer(player)
	}
}

// 基于redis的玩家离线数据分布式锁实现

const (
	MaxLockAliveTime  = 10000 // 单个锁的最大存活时间 毫秒
	LockRetryWaitTime = 50    // 同步加锁重试间隔时间 毫秒
	MaxLockRetryTimes = 2     // 同步加锁最大重试次数
)

// DistLock 加锁并返回是否成功
func (d *Dao) DistLock(userId uint32) bool {
	result, err := d.redis.SetNX(context.TODO(),
		d.GetRedisPlayerLockKey(userId),
		time.Now().UnixMilli(),
		time.Millisecond*time.Duration(MaxLockAliveTime)).Result()
	if err != nil {
		logger.Error("redis lock setnx error: %v", err)
		return false
	}
	return result
}

// DistLockSync 加锁同步阻塞直到成功或超时
func (d *Dao) DistLockSync(userId uint32) bool {
	for i := 0; i < MaxLockRetryTimes; i++ {
		result, err := d.redis.SetNX(context.TODO(),
			d.GetRedisPlayerLockKey(userId),
			time.Now().UnixMilli(),
			time.Millisecond*time.Duration(MaxLockAliveTime)).Result()
		if err != nil {
			logger.Error("redis lock setnx error: %v", err)
			return false
		}
		if result == true {
			break
		}
		time.Sleep(time.Millisecond * time.Duration(LockRetryWaitTime))
	}
	return true
}

// DistUnlock 解锁
func (d *Dao) DistUnlock(userId uint32) {
	result, err := d.redis.Del(context.TODO(), d.GetRedisPlayerLockKey(userId)).Result()
	if err != nil {
		logger.Error("redis lock del error: %v", err)
		return
	}
	if result == 0 {
		logger.Error("redis lock del result is fail")
		return
	}
}
