package constant

var StaminaCostConst *StaminaCost

type StaminaCost struct {
	// 消耗耐力
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
	// 恢复耐力
	POWERED_FLY   int32
	POWERED_SKIFF int32
	RUN           int32
	SKIFF         int32
	STANDBY       int32
	WALK          int32
}

func InitStaminaCostConst() {
	StaminaCostConst = new(StaminaCost)

	StaminaCostConst.CLIMBING = -110
	StaminaCostConst.CLIMB_START = -500
	StaminaCostConst.CLIMB_JUMP = -2500
	StaminaCostConst.DASH = -360
	StaminaCostConst.FLY = -60
	StaminaCostConst.SKIFF_DASH = -204
	StaminaCostConst.SPRINT = -1800
	StaminaCostConst.SWIM_DASH_START = -2000
	StaminaCostConst.SWIM_DASH = -204
	StaminaCostConst.SWIMMING = -400
	StaminaCostConst.TALENT_DASH = -300
	StaminaCostConst.TALENT_DASH_START = -1000
	StaminaCostConst.POWERED_FLY = 500
	StaminaCostConst.POWERED_SKIFF = 500
	StaminaCostConst.RUN = 500
	StaminaCostConst.SKIFF = 500
	StaminaCostConst.STANDBY = 500
	StaminaCostConst.WALK = 500
}
