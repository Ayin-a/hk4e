package random

import (
	"fmt"
	"testing"
)

func TestGetRandomStr(t *testing.T) {
	str := GetRandomStr(16)
	fmt.Println(str)
}
