package object

import (
	"bytes"
	"encoding/gob"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/pkg/errors"
	"github.com/vmihailenco/msgpack/v5"
	"google.golang.org/protobuf/encoding/protojson"
	pb "google.golang.org/protobuf/proto"
)

func FullDeepCopy(dst, src any) error {
	var buf bytes.Buffer
	err := gob.NewEncoder(&buf).Encode(src)
	if err != nil {
		return err
	}
	err = gob.NewDecoder(bytes.NewBuffer(buf.Bytes())).Decode(dst)
	if err != nil {
		return err
	}
	return nil
}

func FastDeepCopy(dst, src any) error {
	data, err := msgpack.Marshal(src)
	if err != nil {
		return err
	}
	err = msgpack.Unmarshal(data, dst)
	if err != nil {
		return err
	}
	return nil
}

func CopyProtoBufSameField(dst, src pb.Message) ([]string, error) {
	date, err := protojson.Marshal(src)
	if err != nil {
		return nil, err
	}
	delList := make([]string, 0)
	loopCount := 0
	for {
		loopCount++
		if loopCount > 1000 {
			return nil, errors.New("loop count limit")
		}
		err = protojson.Unmarshal(date, dst)
		if err != nil {
			if !strings.Contains(err.Error(), "unknown field") {
				return nil, err
			}
			split := strings.Split(err.Error(), "\"")
			if len(split) != 3 {
				return nil, err
			}
			fieldName := split[1]
			jsonObj := make(map[string]any)
			err = json.Unmarshal(date, &jsonObj)
			if err != nil {
				return nil, err
			}
			DeleteAllKeyNameFromStringAnyMap(jsonObj, fieldName)
			delList = append(delList, fieldName)
			date, err = json.Marshal(jsonObj)
			if err != nil {
				return nil, err
			}
			continue
		} else {
			break
		}
	}
	return delList, nil
}

func DeleteAllKeyNameFromStringAnyMap(src map[string]any, keyName string) {
	for key, value := range src {
		vm, ok := value.(map[string]any)
		if ok {
			DeleteAllKeyNameFromStringAnyMap(vm, keyName)
		}
		vs, ok := value.([]any)
		if ok {
			DeleteAllKeyNameFromAnyList(vs, keyName)
		}
		if key == keyName {
			delete(src, key)
		}
	}
}

func DeleteAllKeyNameFromAnyList(src []any, keyName string) {
	for _, value := range src {
		vm, ok := value.(map[string]any)
		if ok {
			DeleteAllKeyNameFromStringAnyMap(vm, keyName)
		}
		vs, ok := value.([]any)
		if ok {
			DeleteAllKeyNameFromAnyList(vs, keyName)
		}
	}
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
