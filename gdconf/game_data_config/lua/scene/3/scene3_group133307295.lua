-- 基础信息
local base_info = {
	group_id = 133307295
}

-- Trigger变量
local defs = {
	move_sandworm_id = 295001,
	move_region = 295002,
	attack_region = 295003,
	attack_times = 2,
	move_sandworm_lifetime = 15
}

-- DEFS_MISCS
local region_config = 
{
    alert_by_tick_normal = {20,35},
    alert_by_tick_sandstorm = {80,100},
}



local sandworm_point_array = 
{
    point_array = 330700018, max_point = 9
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
	[295001] = { config_id = 295001, gadget_id = 70290762, pos = { x = -1291.558, y = 62.049, z = 5226.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[295002] = { config_id = 295002, shape = RegionShape.POLYGON, pos = { x = -1282.311, y = 62.246, z = 5231.781 }, height = 54.859, point_array = { { x = -1286.663, y = 5263.597 }, { x = -1300.931, y = 5252.901 }, { x = -1304.017, y = 5236.807 }, { x = -1305.526, y = 5215.961 }, { x = -1294.450, y = 5199.966 }, { x = -1273.940, y = 5208.696 }, { x = -1279.886, y = 5230.198 }, { x = -1264.199, y = 5232.183 }, { x = -1259.096, y = 5246.839 }, { x = -1269.030, y = 5259.459 } }, area_id = 32 },
	[295003] = { config_id = 295003, shape = RegionShape.POLYGON, pos = { x = -1288.333, y = 62.769, z = 5238.016 }, height = 46.251, point_array = { { x = -1277.915, y = 5244.265 }, { x = -1281.498, y = 5233.881 }, { x = -1285.457, y = 5227.095 }, { x = -1292.281, y = 5228.341 }, { x = -1298.750, y = 5238.355 }, { x = -1298.084, y = 5248.936 }, { x = -1286.874, y = 5248.040 } }, area_id = 32 }
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
		regions = { 295002, 295003 },
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