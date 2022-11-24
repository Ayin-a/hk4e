package random

import (
	"encoding/hex"
	"math/rand"
	"time"
)

func init() {
	rand.Seed(time.Now().UnixNano())
}

func GetRandomStr(strLen int) (str string) {
	baseStr := "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	for i := 0; i < strLen; i++ {
		index := rand.Intn(len(baseStr))
		str += string(baseStr[index])
	}
	return str
}

func GetRandomByte(len int) []byte {
	ret := make([]byte, 0)
	for i := 0; i < len; i++ {
		r := uint8(rand.Intn(256))
		ret = append(ret, r)
	}
	return ret
}

func GetRandomByteHexStr(len int) string {
	return hex.EncodeToString(GetRandomByte(len))
}

func GetRandomInt32(min int32, max int32) int32 {
	if max <= min {
		return 0
	}
	r := rand.Int31n(max-min+1) + min
	return r
}

func GetRandomFloat32(min float32, max float32) float32 {
	if max <= min {
		return 0.0
	}
	r := rand.Float32()*(max-min) + min
	return r
}

func GetRandomFloat64(min float64, max float64) float64 {
	if max <= min {
		return 0.0
	}
	r := rand.Float64()*(max-min) + min
	return r
}
