package object

import (
	"bytes"
	"encoding/gob"
	"fmt"
)

func ObjectDeepCopy(src, dest any) error {
	var buf bytes.Buffer
	if err := gob.NewEncoder(&buf).Encode(src); err != nil {
		return err
	}
	return gob.NewDecoder(bytes.NewBuffer(buf.Bytes())).Decode(dest)
}

func ConvBoolToInt64(v bool) int64 {
	if v {
		return 1
	} else {
		return 0
	}
}

func ConvInt64ToBool(v int64) bool {
	if v != 0 {
		return true
	} else {
		return false
	}
}

func ConvListToMap[T any](l []T) map[uint64]T {
	ret := make(map[uint64]T)
	for index, value := range l {
		ret[uint64(index)] = value
	}
	return ret
}

func ConvMapToList[T any](m map[uint64]T) []T {
	ret := make([]T, 0)
	for _, value := range m {
		ret = append(ret, value)
	}
	return ret
}

func IsUtf8String(value string) bool {
	data := []byte(value)
	for i := 0; i < len(data); {
		str := fmt.Sprintf("%b", data[i])
		num := 0
		for num < len(str) {
			if str[num] != '1' {
				break
			}
			num++
		}
		if data[i]&0x80 == 0x00 {
			i++
			continue
		} else if num > 2 {
			i++
			for j := 0; j < num-1; j++ {
				if data[i]&0xc0 != 0x80 {
					return false
				}
				i++
			}
		} else {
			return false
		}
	}
	return true
}
