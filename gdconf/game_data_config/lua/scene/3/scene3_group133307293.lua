-- 基础信息
local base_info = {
	group_id = 133307293
}

-- Trigger变量
local defs = {
	move_sandworm_id = 293001,
	move_region = 293002,
	attack_region = 293003,
	attack_times = 1,
	move_sandworm_lifetime = 15
}

-- DEFS_MISCS
local region_config = 
{
    alert_by_tick_normal = {10,15},
    alert_by_tick_sandstorm = {60,100},
}



local sandworm_point_array = 
{
    point_array = 330700006, max_point = 9
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
	[293001] = { config_id = 293001, gadget_id = 70290762, pos = { x = -1483.776, y = 66.560, z = 5113.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[293002] = { config_id = 293002, shape = RegionShape.POLYGON, pos = { x = -1462.202, y = 60.308, z = 5148.948 }, height = 70.821, point_array = { { x = -1497.845, y = 5065.537 }, { x = -1448.123, y = 5082.507 }, { x = -1393.387, y = 5080.872 }, { x = -1394.139, y = 5130.827 }, { x = -1437.374, y = 5197.855 }, { x = -1487.167, y = 5232.360 }, { x = -1511.177, y = 5202.684 }, { x = -1517.289, y = 5173.259 }, { x = -1531.017, y = 5138.999 }, { x = -1525.742, y = 5128.098 }, { x = -1508.689, y = 5090.027 } }, area_id = 32 },
	[293003] = { config_id = 293003, shape = RegionShape.POLYGON, pos = { x = -1480.028, y = 66.972, z = 5119.610 }, height = 52.170, point_array = { { x = -1482.504, y = 5152.254 }, { x = -1509.326, y = 5134.850 }, { x = -1498.583, y = 5105.369 }, { x = -1493.884, y = 5088.905 }, { x = -1472.331, y = 5086.967 }, { x = -1450.729, y = 5103.180 }, { x = -1462.110, y = 5128.483 } }, area_id = 32 }
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
		regions = { 293002, 293003 },
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