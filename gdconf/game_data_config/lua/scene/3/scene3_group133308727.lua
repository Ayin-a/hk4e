-- 基础信息
local base_info = {
	group_id = 133308727
}

-- Trigger变量
local defs = {
	move_sandworm_id = 727001,
	move_region = 727002,
	attack_region = 727003,
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
    point_array = 330800064, max_point = 13
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
	[727001] = { config_id = 727001, gadget_id = 70290762, pos = { x = -1456.311, y = 69.608, z = 4982.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
	[727002] = { config_id = 727002, shape = RegionShape.POLYGON, pos = { x = -1455.322, y = 70.713, z = 4995.959 }, height = 61.709, point_array = { { x = -1398.576, y = 4933.816 }, { x = -1391.898, y = 4981.125 }, { x = -1412.531, y = 5030.529 }, { x = -1449.686, y = 5061.224 }, { x = -1500.678, y = 5053.913 }, { x = -1518.746, y = 5021.181 }, { x = -1511.152, y = 4995.522 }, { x = -1489.831, y = 4967.219 }, { x = -1465.501, y = 4938.436 }, { x = -1434.220, y = 4930.694 } }, area_id = 32 },
	[727003] = { config_id = 727003, shape = RegionShape.POLYGON, pos = { x = -1450.921, y = 71.951, z = 4980.874 }, height = 53.674, point_array = { { x = -1427.956, y = 4963.686 }, { x = -1414.789, y = 4979.521 }, { x = -1422.372, y = 5004.456 }, { x = -1448.580, y = 5013.419 }, { x = -1469.890, y = 5003.760 }, { x = -1481.938, y = 4995.833 }, { x = -1487.054, y = 4977.819 }, { x = -1468.570, y = 4948.328 }, { x = -1448.042, y = 4948.745 } }, area_id = 32 }
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
		regions = { 727002, 727003 },
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