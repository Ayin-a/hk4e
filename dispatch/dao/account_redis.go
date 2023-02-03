package dao

import (
	"context"
)

const RedisPlayerKeyPrefix = "HK4E"

const (
	AccountIdRedisKey          = "AccountId"
	AccountIdBegin      uint64 = 10000
	YuanShenUidRedisKey        = "YuanShenUid"
	YuanShenUidBegin    uint64 = 100000000
)

func (d *Dao) GetNextAccountId() (uint64, error) {
	return d.redisInc(RedisPlayerKeyPrefix + ":" + AccountIdRedisKey)
}

func (d *Dao) GetNextYuanShenUid() (uint64, error) {
	return d.redisInc(RedisPlayerKeyPrefix + ":" + YuanShenUidRedisKey)
}

func (d *Dao) redisInc(keyName string) (uint64, error) {
	exist, err := d.redis.Exists(context.TODO(), keyName).Result()
	if err != nil {
		return 0, err
	}
	if exist == 0 {
		var value uint64 = 0
		if keyName == RedisPlayerKeyPrefix+":"+AccountIdRedisKey {
			value = AccountIdBegin
		} else if keyName == RedisPlayerKeyPrefix+":"+YuanShenUidRedisKey {
			value = YuanShenUidBegin
		}
		err := d.redis.Set(context.TODO(), keyName, value, 0).Err()
		if err != nil {
			return 0, err
		}
	}
	id, err := d.redis.Incr(context.TODO(), keyName).Result()
	if err != nil {
		return 0, err
	}
	return uint64(id), nil
}
