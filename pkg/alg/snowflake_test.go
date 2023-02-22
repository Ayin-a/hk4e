package alg

import (
	"log"
	"sync"
	"testing"
)

type UniqueID interface {
	~int64 | ~string
}

func idDupCheck[T UniqueID](genIdFunc func() T) {
	var wg sync.WaitGroup
	totalIdList := make(map[int]*[]T)
	for i := 0; i < 1000; i++ {
		wg.Add(1)
		_idList := make([]T, 0)
		_idListPtr := &_idList
		totalIdList[i] = _idListPtr
		go func(idListPtr *[]T) {
			defer wg.Done()
			for ii := 0; ii < 10000; ii++ {
				id := genIdFunc()
				*idListPtr = append(*idListPtr, id)
			}
		}(_idListPtr)
	}
	wg.Wait()
	dupCheck := make(map[T]bool)
	for gid, idListPtr := range totalIdList {
		for _, id := range *idListPtr {
			value, exist := dupCheck[id]
			if exist && value == true {
				log.Printf("find dup id, gid: %v, id: %v\n", gid, id)
			} else {
				dupCheck[id] = true
			}
		}
	}
	log.Printf("check finish\n")
}

func TestSnowflakeGenId(t *testing.T) {
	snowflake := NewSnowflakeWorker(1)
	if snowflake == nil {
		panic("create snowflake worker error")
	}
	idDupCheck(snowflake.GenId)
}
