package reflection

import (
	"fmt"
	"testing"
)

type XXX struct {
	Time int64
	Date string
}

type YYY struct {
	Ping uint16
}

type AAA struct {
	Name   string
	UserId uint32
	A      uint8
	X      *XXX
	Y      YYY
}

type BBB struct {
	Name   string
	UserId uint32
	B      uint8
	X      *XXX
	Y      YYY
}

func TestCopyStructSameField(t *testing.T) {
	aaa := &AAA{
		Name:   "flswld",
		UserId: 100000001,
		A:      111,
		X: &XXX{
			Time: 150405,
			Date: "2006-01-02",
		},
		Y: YYY{
			Ping: 999,
		},
	}
	bbb := new(BBB)
	ok := CopyStructSameField(bbb, aaa)
	fmt.Println(ok)
}
