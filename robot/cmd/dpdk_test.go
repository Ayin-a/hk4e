//go:build linux
// +build linux

package main

import (
	"testing"

	"github.com/FlourishingWorld/dpdk-go/engine"
)

func TestDpdk(t *testing.T) {
	_ = engine.InitEngine("00:0C:29:3E:3E:DF", "192.168.199.199", "255.255.255.0", "192.168.199.1")
}
