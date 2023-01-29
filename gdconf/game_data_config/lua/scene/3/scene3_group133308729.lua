-- 基础信息
local base_info = {
	group_id = 133308729
}

-- Trigger变量
local defs = {
	move_sandworm_id = 729001,
	move_region = 729002,
	attack_region = 729003,
	attack_times = 1,
	move_sandworm_lifetime = 15
}

-- DEFS_MISCS
local region_config = 
{
    alert_by_tick_normal = {20,30},
    alert_by_tick_sandstorm = {70,120},
}



local sandworm_point_array = 
{
    point_array = 330800065, max_point = 8
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
	[729001] = { config_id = 729001, gadget_id = 70290762, pos = { x = -1349.791, y = 62.013, z = 4999.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[729002] = { config_id = 729002, shape = RegionShape.POLYGON, pos = { x = -1332.250, y = 73.485, z = 5012.507 }, height = 86.233, point_array = { { x = -1314.879, y = 4914.149 }, { x = -1281.068, y = 4915.452 }, { x = -1259.478, y = 4951.114 }, { x = -1259.222, y = 5021.823 }, { x = -1294.152, y = 5047.919 }, { x = -1355.533, y = 5110.865 }, { x = -1405.277, y = 5043.452 }, { x = -1384.884, y = 4980.896 }, { x = -1349.701, y = 4938.840 } }, area_id = 32 },
	[729003] = { config_id = 729003, shape = RegionShape.POLYGON, pos = { x = -1331.904, y = 60.840, z = 5009.870 }, height = 54.481, point_array = { { x = -1330.029, y = 4991.827 }, { x = -1360.943, y = 4991.448 }, { x = -1371.836, y = 4992.517 }, { x = -1380.712, y = 5022.095 }, { x = -1356.051, y = 5019.632 }, { x = -1314.938, y = 5043.185 }, { x = -1283.097, y = 5002.162 }, { x = -1303.302, y = 4976.556 } }, area_id = 32 }
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
		regions = { 729002, 729003 },
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