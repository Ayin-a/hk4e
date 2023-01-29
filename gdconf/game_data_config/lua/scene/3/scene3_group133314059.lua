-- 基础信息
local base_info = {
	group_id = 133314059
}

-- Trigger变量
local defs = {
	move_sandworm_id = 59004,
	move_region = 59001,
	attack_region = 59002,
	attack_times = 2,
	move_sandworm_lifetime = 20
}

-- DEFS_MISCS
local region_config = 
{
    alert_by_tick_normal = {200,300},
    alert_by_tick_sandstorm = {200,300},
}



local sandworm_point_array = 
{
    point_array = 331400010, max_point = 42
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
	[59004] = { config_id = 59004, gadget_id = 70290762, pos = { x = -781.720, y = 55.553, z = 4455.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[59001] = { config_id = 59001, shape = RegionShape.POLYGON, pos = { x = -764.625, y = 56.725, z = 4440.845 }, height = 56.514, point_array = { { x = -635.434, y = 4515.204 }, { x = -598.742, y = 4396.989 }, { x = -717.703, y = 4308.948 }, { x = -911.172, y = 4374.999 }, { x = -930.509, y = 4498.552 }, { x = -793.615, y = 4572.741 } }, area_id = 32 },
	[59002] = { config_id = 59002, shape = RegionShape.POLYGON, pos = { x = -779.902, y = 56.668, z = 4464.553 }, height = 46.873, point_array = { { x = -731.353, y = 4439.766 }, { x = -756.812, y = 4418.515 }, { x = -784.641, y = 4446.429 }, { x = -830.199, y = 4448.144 }, { x = -811.207, y = 4510.590 }, { x = -729.606, y = 4479.255 } }, area_id = 32 }
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
		regions = { 59001, 59002 },
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