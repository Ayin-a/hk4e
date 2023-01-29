-- 基础信息
local base_info = {
	group_id = 133308742
}

-- Trigger变量
local defs = {
	move_sandworm_id = 742001,
	move_region = 742002,
	attack_region = 742003,
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
    point_array = 330800066, max_point = 8
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
	[742001] = { config_id = 742001, gadget_id = 70290762, pos = { x = -1421.738, y = 40.652, z = 5164.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[742002] = { config_id = 742002, shape = RegionShape.POLYGON, pos = { x = -1410.946, y = 54.474, z = 5147.398 }, height = 94.452, point_array = { { x = -1377.018, y = 5125.778 }, { x = -1396.914, y = 5126.833 }, { x = -1409.576, y = 5112.924 }, { x = -1425.955, y = 5118.337 }, { x = -1436.063, y = 5135.131 }, { x = -1444.873, y = 5153.996 }, { x = -1443.078, y = 5173.274 }, { x = -1433.446, y = 5181.873 }, { x = -1408.787, y = 5181.579 }, { x = -1393.840, y = 5164.271 } }, area_id = 32 },
	[742003] = { config_id = 742003, shape = RegionShape.POLYGON, pos = { x = -1420.418, y = 48.263, z = 5153.295 }, height = 69.484, point_array = { { x = -1432.253, y = 5135.767 }, { x = -1416.318, y = 5125.447 }, { x = -1405.275, y = 5137.836 }, { x = -1398.869, y = 5146.856 }, { x = -1404.700, y = 5164.536 }, { x = -1411.034, y = 5181.143 }, { x = -1432.575, y = 5179.134 }, { x = -1441.966, y = 5167.302 } }, area_id = 32 }
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
		regions = { 742002, 742003 },
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