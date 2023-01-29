-- 基础信息
local base_info = {
	group_id = 133314245
}

-- Trigger变量
local defs = {
	move_sandworm_id = 245001,
	move_region = 245002,
	attack_region = 245003,
	attack_times = 2,
	move_sandworm_lifetime = 15
}

-- DEFS_MISCS
local region_config = 
{
    alert_by_tick_normal = {15,20},
    alert_by_tick_sandstorm = {80,100},
}



local sandworm_point_array = 
{
    point_array = 331400011, max_point = 10
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
	[245001] = { config_id = 245001, gadget_id = 70290762, pos = { x = -928.868, y = 47.881, z = 4650.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[245002] = { config_id = 245002, shape = RegionShape.POLYGON, pos = { x = -902.657, y = 53.079, z = 4656.526 }, height = 85.467, point_array = { { x = -820.742, y = 4630.342 }, { x = -843.818, y = 4683.382 }, { x = -913.117, y = 4739.820 }, { x = -956.283, y = 4744.694 }, { x = -981.199, y = 4707.972 }, { x = -984.571, y = 4657.903 }, { x = -963.422, y = 4620.490 }, { x = -946.603, y = 4598.502 }, { x = -921.266, y = 4586.501 }, { x = -875.518, y = 4568.359 } }, area_id = 32 },
	[245003] = { config_id = 245003, shape = RegionShape.POLYGON, pos = { x = -911.535, y = 55.452, z = 4679.441 }, height = 67.559, point_array = { { x = -861.396, y = 4659.116 }, { x = -880.696, y = 4626.621 }, { x = -913.809, y = 4661.728 }, { x = -919.774, y = 4677.296 }, { x = -945.636, y = 4684.136 }, { x = -961.674, y = 4703.313 }, { x = -945.016, y = 4732.263 }, { x = -900.994, y = 4720.100 }, { x = -869.672, y = 4693.397 } }, area_id = 32 }
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
		regions = { 245002, 245003 },
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