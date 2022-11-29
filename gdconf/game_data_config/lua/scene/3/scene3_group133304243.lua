-- 基础信息
local base_info = {
	group_id = 133304243
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 243003
}

-- DEFS_MISCS
local RequireSuite = {1}

local HookLookPlay = {
    HookPoint = defs.gadget_LookHookCid,
    Duration = 3,
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
	[243003] = { config_id = 243003, gadget_id = 70220103, pos = { x = -1252.635, y = 269.084, z = 2531.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[243004] = { config_id = 243004, gadget_id = 70220103, pos = { x = -1258.665, y = 286.336, z = 2518.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[243006] = { config_id = 243006, gadget_id = 70220103, pos = { x = -1254.493, y = 300.512, z = 2494.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[243007] = { config_id = 243007, gadget_id = 70220103, pos = { x = -1250.016, y = 327.184, z = 2471.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 243001, gadget_id = 70330229, pos = { x = -1248.374, y = 251.798, z = 2541.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
		{ config_id = 243002, gadget_id = 70330251, pos = { x = -1240.306, y = 258.859, z = 2555.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 }
	},
	triggers = {
		{ config_id = 1243005, name = "GADGET_STATE_CHANGE_243005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243005", action = "action_EVENT_GADGET_STATE_CHANGE_243005" }
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
		gadgets = { 243003, 243004, 243006, 243007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 243003, 243004, 243006, 243007 },
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

require "V3_0/HookLook"