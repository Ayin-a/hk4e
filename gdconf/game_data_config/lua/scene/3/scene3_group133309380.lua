-- 基础信息
local base_info = {
	group_id = 133309380
}

-- Trigger变量
local defs = {
	wait = {0},
	duration = 6,
	interval = 6,
	gadget_fan_1 = 380001
}

-- DEFS_MISCS
defs.fans = {
	defs.gadget_fan_1,
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "isRefresh", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 380001, gadget_id = 70330308, pos = { x = -2255.840, y = -40.283, z = 5891.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 380003, gadget_id = 70220103, pos = { x = -2222.323, y = 42.112, z = 5874.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 380007, gadget_id = 70690001, pos = { x = -2255.549, y = 11.158, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 380008, gadget_id = 70690001, pos = { x = -2255.549, y = -13.413, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 380009, gadget_id = 70690001, pos = { x = -2255.549, y = -4.424, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 380010, gadget_id = 70690001, pos = { x = -2255.549, y = 3.657, z = 5890.456 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
	},
	regions = {
		{ config_id = 380002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2255.840, y = -38.282, z = 5891.209 }, area_id = 27 },
		{ config_id = 380006, shape = RegionShape.CUBIC, size = { x = 28.000, y = 28.000, z = 28.000 }, pos = { x = -2256.268, y = -26.969, z = 5889.384 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1380002, name = "ENTER_REGION_380002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_380002", action = "action_EVENT_ENTER_REGION_380002" },
		{ config_id = 1380004, name = "TIME_AXIS_PASS_380004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_380004", action = "action_EVENT_TIME_AXIS_PASS_380004", trigger_count = 0 },
		{ config_id = 1380005, name = "TIME_AXIS_PASS_380005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_380005", trigger_count = 0 },
		{ config_id = 1380006, name = "ENTER_REGION_380006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_380006" }
	}
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
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================