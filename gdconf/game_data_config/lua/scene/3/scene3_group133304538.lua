-- 基础信息
local base_info = {
	group_id = 133304538
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 538003
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
	[538001] = { config_id = 538001, gadget_id = 70330229, pos = { x = -1105.116, y = 287.617, z = 2108.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[538002] = { config_id = 538002, gadget_id = 70330251, pos = { x = -1129.434, y = 295.604, z = 2117.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 21 },
	[538003] = { config_id = 538003, gadget_id = 70220103, pos = { x = -1135.209, y = 300.457, z = 2082.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[538004] = { config_id = 538004, gadget_id = 70220103, pos = { x = -1159.798, y = 314.260, z = 2068.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[538006] = { config_id = 538006, gadget_id = 70220103, pos = { x = -1075.466, y = 282.771, z = 2105.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[538007] = { config_id = 538007, gadget_id = 70220103, pos = { x = -1054.231, y = 263.117, z = 2099.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[538008] = { config_id = 538008, gadget_id = 70220103, pos = { x = -1129.434, y = 295.604, z = 2117.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[538009] = { config_id = 538009, gadget_id = 70220103, pos = { x = -1156.624, y = 306.916, z = 2127.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[538010] = { config_id = 538010, gadget_id = 70220103, pos = { x = -1188.572, y = 314.991, z = 2048.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1538005, name = "GADGET_STATE_CHANGE_538005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_538005", action = "action_EVENT_GADGET_STATE_CHANGE_538005" }
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
		gadgets = { 538001, 538002, 538010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_538005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 538003, 538004, 538006, 538007, 538008, 538009 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_538005(context, evt)
	if 538001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_538005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304538, 2)
	
	return 0
end

require "V3_0/HookLook"