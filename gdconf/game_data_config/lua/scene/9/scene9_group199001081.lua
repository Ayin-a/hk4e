-- 基础信息
local base_info = {
	group_id = 199001081
}

-- DEFS_MISCS
local shadowConfigIDList = {81002}

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
	{ config_id = 81001, gadget_id = 70500033, pos = { x = -710.199, y = 168.022, z = 6.758 }, rot = { x = 0.000, y = 331.302, z = 0.000 }, level = 20, arguments = { 44 }, area_id = 403 },
	{ config_id = 81002, gadget_id = 70500049, pos = { x = -713.070, y = 167.872, z = 6.489 }, rot = { x = 0.032, y = 213.588, z = 359.305 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 81003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -713.195, y = 167.854, z = 6.563 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1081003, name = "ENTER_REGION_81003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 81001 },
		regions = { 81003 },
		triggers = { "ENTER_REGION_81003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_8/EchoConch"