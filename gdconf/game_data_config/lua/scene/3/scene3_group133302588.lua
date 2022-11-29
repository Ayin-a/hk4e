-- 基础信息
local base_info = {
	group_id = 133302588
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 588007
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
	[588001] = { config_id = 588001, gadget_id = 70330229, pos = { x = -691.291, y = 199.614, z = 2727.204 }, rot = { x = 347.122, y = 2.031, z = 348.977 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[588002] = { config_id = 588002, gadget_id = 70330251, pos = { x = -659.694, y = 204.517, z = 2730.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[588004] = { config_id = 588004, gadget_id = 70220103, pos = { x = -636.967, y = 205.389, z = 2726.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[588006] = { config_id = 588006, gadget_id = 70220103, pos = { x = -598.797, y = 206.094, z = 2728.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[588007] = { config_id = 588007, gadget_id = 70220103, pos = { x = -659.694, y = 204.517, z = 2730.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1588005, name = "GADGET_STATE_CHANGE_588005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588005", action = "action_EVENT_GADGET_STATE_CHANGE_588005" }
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
		gadgets = { 588001, 588002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_588005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 588004, 588006, 588007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_588005(context, evt)
	if 588001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302588, 2)
	
	return 0
end

require "V3_0/HookLook"