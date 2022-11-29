package model

import (
	"hk4e/protocol/proto"
)

type StaminaInfo struct {
	PrevState    proto.MotionState
	PrevPos      *Vector
	CurState     proto.MotionState
	CurPos       *Vector
	RestoreDelay uint8
}
