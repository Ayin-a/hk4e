package constant

var StaminaCostConst *StaminaCost

type StaminaCost struct {
	CLIMBING          int32
	CLIMB_START       int32
	CLIMB_JUMP        int32
	DASH              int32
	FLY               int32
	SKIFF_DASH        int32
	SPRINT            int32
	SWIM_DASH_START   int32
	SWIM_DASH         int32
	SWIMMING          int32
	TALENT_DASH       int32
	TALENT_DASH_START int32
	RESTORE           int32 // 回复体力
}

func InitStaminaCostConst() {
	StaminaCostConst = new(StaminaCost)

	StaminaCostConst.CLIMBING = -150
	StaminaCostConst.CLIMB_START = -500
	StaminaCostConst.CLIMB_JUMP = -2500
	StaminaCostConst.DASH = -360
	StaminaCostConst.FLY = -60
	StaminaCostConst.SKIFF_DASH = -204
	StaminaCostConst.SPRINT = -1800
	StaminaCostConst.SWIM_DASH_START = -2000
	StaminaCostConst.SWIM_DASH = -204
	StaminaCostConst.SWIMMING = -80
	StaminaCostConst.TALENT_DASH = -300
	StaminaCostConst.TALENT_DASH_START = -1000
	StaminaCostConst.RESTORE = 500
}
