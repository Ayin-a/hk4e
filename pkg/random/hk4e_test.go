package random

import (
	"encoding/hex"
	"fmt"
	"testing"
)

func TestKey(t *testing.T) {
	dispatchEc2b := NewEc2b()
	dispatchEc2bData := dispatchEc2b.Bytes()
	dispatchEc2bSeed := dispatchEc2b.Seed()
	_ = dispatchEc2bData

	dispatchXorKey := dispatchEc2b.XorKey()

	gateDispatchEc2b := NewEc2b()
	gateDispatchEc2b.SetSeed(dispatchEc2bSeed)

	gateDispatchXorKey := gateDispatchEc2b.XorKey()

	fmt.Printf("dispatchXorKey: %v\n", hex.EncodeToString(dispatchXorKey))
	fmt.Printf("gateDispatchXorKey: %v\n", hex.EncodeToString(gateDispatchXorKey))

	keyBlock := NewKeyBlock(uint64(11468049314633205968), false)
	gateXorKey := keyBlock.XorKey()

	fmt.Printf("gateXorKey: %v\n", hex.EncodeToString(gateXorKey[:]))
}
