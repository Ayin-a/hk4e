-- 基础信息
local base_info = {
	group_id = 133314322
}

-- Trigger变量
local defs = {
	move_sandworm_id = 322001,
	move_region = 322002,
	attack_region = 322003,
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
    point_array = 331400016, max_point = 10
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
	[322001] = { config_id = 322001, gadget_id = 70290762, pos = { x = -742.032, y = -89.762, z = 4455.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[322004] = { config_id = 322004, gadget_id = 70290624, pos = { x = -735.072, y = -86.822, z = 4436.408 }, rot = { x = 20.364, y = 3.290, z = 18.168 }, level = 32, area_id = 32 },
	[322005] = { config_id = 322005, gadget_id = 70290624, pos = { x = -739.065, y = -88.590, z = 4455.384 }, rot = { x = 355.096, y = 354.474, z = 29.742 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[322002] = { config_id = 322002, shape = RegionShape.POLYGON, pos = { x = -747.898, y = -86.063, z = 4450.527 }, height = 41.749, point_array = { { x = -723.892, y = 4449.394 }, { x = -731.263, y = 4436.595 }, { x = -749.509, y = 4426.292 }, { x = -746.573, y = 4435.423 }, { x = -749.187, y = 4440.184 }, { x = -755.158, y = 4439.969 }, { x = -756.510, y = 4447.069 }, { x = -771.904, y = 4456.449 }, { x = -766.740, y = 4461.939 }, { x = -757.038, y = 4462.369 }, { x = -753.475, y = 4471.846 }, { x = -745.895, y = 4474.763 }, { x = -739.044, y = 4459.371 } }, area_id = 32 },
	[322003] = { config_id = 322003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -738.992, y = -91.179, z = 4445.491 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1322002, name = "ENTER_REGION_322002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1322003, name = "ENTER_REGION_322003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 322004, 322005 },
		regions = { 322002, 322003 },
		triggers = { "ENTER_REGION_322002", "ENTER_REGION_322003" },
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