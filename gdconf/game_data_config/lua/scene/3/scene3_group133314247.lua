-- 基础信息
local base_info = {
	group_id = 133314247
}

-- Trigger变量
local defs = {
	move_sandworm_id = 247001,
	move_region = 247002,
	attack_region = 247003,
	attack_times = 1,
	move_sandworm_lifetime = 15
}

-- DEFS_MISCS
local region_config = 
{
    alert_by_tick_normal = {15,20},
    alert_by_tick_sandstorm = {70,95},
}



local sandworm_point_array = 
{
    point_array = 331400012, max_point = 10
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[247001] = { config_id = 247001, gadget_id = 70290762, pos = { x = -966.040, y = 50.077, z = 4574.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[247002] = { config_id = 247002, shape = RegionShape.POLYGON, pos = { x = -952.850, y = 49.781, z = 4589.881 }, height = 65.044, point_array = { { x = -883.439, y = 4560.123 }, { x = -911.905, y = 4575.258 }, { x = -941.994, y = 4595.064 }, { x = -962.335, y = 4616.936 }, { x = -985.237, y = 4664.849 }, { x = -1022.261, y = 4639.026 }, { x = -1021.144, y = 4589.771 }, { x = -999.118, y = 4553.693 }, { x = -974.586, y = 4529.959 }, { x = -953.572, y = 4524.504 }, { x = -922.052, y = 4514.914 }, { x = -897.370, y = 4534.282 } }, area_id = 32 },
	[247003] = { config_id = 247003, shape = RegionShape.POLYGON, pos = { x = -968.581, y = 50.051, z = 4587.864 }, height = 57.696, point_array = { { x = -937.507, y = 4576.793 }, { x = -951.732, y = 4559.046 }, { x = -978.729, y = 4558.390 }, { x = -989.641, y = 4569.923 }, { x = -999.655, y = 4587.524 }, { x = -994.228, y = 4617.338 }, { x = -978.805, y = 4616.450 }, { x = -958.642, y = 4584.708 } }, area_id = 32 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 247002, 247003 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_4/SandwormBigworldControl"
require "V3_4/SandwormToolkit"