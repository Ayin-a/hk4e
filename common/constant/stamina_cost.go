package constant

const (
	// 消耗耐力
	STAMINA_COST_CLIMBING_BASE   int32 = -100  // 缓慢攀爬基数
	STAMINA_COST_CLIMB_START     int32 = -500  // 攀爬开始
	STAMINA_COST_CLIMB_JUMP      int32 = -2500 // 攀爬跳跃
	STAMINA_COST_DASH            int32 = -360  // 快速跑步
	STAMINA_COST_FLY             int32 = -60   // 滑翔
	STAMINA_COST_SPRINT          int32 = -1800 // 冲刺
	STAMINA_COST_SWIM_DASH_START int32 = -200  // 快速游泳开始
	STAMINA_COST_SWIM_DASH       int32 = -204  // 快速游泳
	STAMINA_COST_SWIMMING        int32 = -400  // 缓慢游泳
	// 恢复耐力
	STAMINA_COST_POWERED_FLY int32 = 500 // 滑翔加速(风圈等)
	STAMINA_COST_RUN         int32 = 500 // 正常跑步
	STAMINA_COST_STANDBY     int32 = 500 // 站立
	STAMINA_COST_WALK        int32 = 500 // 走路
	// 载具浪船
	STAMINA_COST_SKIFF_DASH    int32 = -204 // 浪船加速
	STAMINA_COST_SKIFF_NORMAL  int32 = 500  // 浪船正常移动 (回复耐力)
	STAMINA_COST_POWERED_SKIFF int32 = 500  // 浪船加速(风圈等) (回复耐力)
	STAMINA_COST_IN_SKIFF      int32 = 500  // 处于浪船中回复角色耐力 (回复耐力)
	STAMINA_COST_SKIFF_NOBODY  int32 = 500  // 浪船无人时回复载具耐力 (回复耐力)
)
