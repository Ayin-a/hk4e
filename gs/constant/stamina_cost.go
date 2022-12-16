package constant

var StaminaCostConst *StaminaCost

type StaminaCost struct {
	// 消耗耐力
	CLIMBING_BASE   int32 // 缓慢攀爬基数
	CLIMB_START     int32 // 攀爬开始
	CLIMB_JUMP      int32 // 攀爬跳跃
	DASH            int32 // 快速跑步
	FLY             int32 // 滑翔
	SPRINT          int32 // 冲刺
	SWIM_DASH_START int32 // 快速游泳开始
	SWIM_DASH       int32 // 快速游泳
	SWIMMING        int32 // 缓慢游泳
	// 恢复耐力
	POWERED_FLY int32 // 滑翔加速(风圈等)
	RUN         int32 // 正常跑步
	STANDBY     int32 // 站立
	WALK        int32 // 走路
	// 载具浪船
	SKIFF_DASH    int32 // 浪船加速
	SKIFF_NORMAL  int32 // 浪船正常移动 (回复耐力)
	POWERED_SKIFF int32 // 浪船加速(风圈等) (回复耐力)
	IN_SKIFF      int32 // 处于浪船中回复角色耐力 (回复耐力)
	SKIFF_NOBODY  int32 // 浪船无人时回复载具耐力 (回复耐力)
	// 武器消耗默认值
	FIGHT_SWORD_ONE_HAND int32 // 单手剑
	FIGHT_POLE           int32 // 长枪
	FIGHT_CATALYST       int32 // 法器
	FIGHT_CLAYMORE_PER   int32 // 双手剑 (每秒消耗)
	// 技能开始消耗 (目前仅发现绫华与莫娜的冲刺会有开始消耗)
	SKILL_START map[uint32]int32 // [skillId]消耗值
}

func InitStaminaCostConst() {
	StaminaCostConst = new(StaminaCost)

	StaminaCostConst.CLIMBING_BASE = -100
	StaminaCostConst.CLIMB_START = -500
	StaminaCostConst.CLIMB_JUMP = -2500
	StaminaCostConst.DASH = -360
	StaminaCostConst.FLY = -60
	StaminaCostConst.SPRINT = -1800
	StaminaCostConst.SWIM_DASH_START = -2000
	StaminaCostConst.SWIM_DASH = -204
	StaminaCostConst.SWIMMING = -400
	StaminaCostConst.POWERED_FLY = 500
	StaminaCostConst.RUN = 500
	StaminaCostConst.STANDBY = 500
	StaminaCostConst.WALK = 500
	StaminaCostConst.SKIFF_DASH = -204
	StaminaCostConst.SKIFF_NORMAL = 500
	StaminaCostConst.POWERED_SKIFF = 500
	StaminaCostConst.IN_SKIFF = 500
	StaminaCostConst.SKIFF_NOBODY = 500
	StaminaCostConst.FIGHT_SWORD_ONE_HAND = -2000
	StaminaCostConst.FIGHT_POLE = -2500
	StaminaCostConst.FIGHT_CATALYST = -5000
	StaminaCostConst.FIGHT_CLAYMORE_PER = -4000
	StaminaCostConst.SKILL_START = map[uint32]int32{
		10013: -1000, // 绫华冲刺(霰步)
		10413: -1000, // 莫娜冲刺(虚实流动)
	}
}
