package random

import (
	"fmt"
	"os"
	"testing"
)

func TestKey(t *testing.T) {
	fmt.Println("hw")

	//dispatchEc2b := NewEc2b()
	keyBin, err := os.ReadFile("./static/dispatchSeed.bin")
	if err != nil {
		panic(err)
	}
	dispatchEc2b, err := LoadKey(keyBin)
	if err != nil {
		panic(err)
	}
	dispatchBin := dispatchEc2b.Bytes()
	dispatchSeed := dispatchEc2b.Seed()
	_ = dispatchBin

	gateDispatchEc2b := NewEc2b()
	gateDispatchEc2b.SetSeed(dispatchSeed)

	dispatchKey := make([]byte, 4096)
	dispatchEc2b.Xor(dispatchKey)

	gateDispatchKey := make([]byte, 4096)
	gateDispatchEc2b.Xor(gateDispatchKey)

	gateXorKey := make([]byte, 4096)
	keyBlock := NewKeyBlock(uint64(11468049314633205968))
	keyBlock.Xor(gateXorKey)

	fmt.Println("end")
}
