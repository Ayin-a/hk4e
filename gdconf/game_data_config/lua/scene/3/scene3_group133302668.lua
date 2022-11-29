-- 基础信息
local base_info = {
	group_id = 133302668
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 668003
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
	[668001] = { config_id = 668001, gadget_id = 70330229, pos = { x = -591.426, y = 199.709, z = 2416.064 }, rot = { x = 4.592, y = 359.826, z = 355.665 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[668002] = { config_id = 668002, gadget_id = 70330251, pos = { x = -563.187, y = 202.074, z = 2406.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[668003] = { config_id = 668003, gadget_id = 70220103, pos = { x = -563.187, y = 202.074, z = 2406.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[668004] = { config_id = 668004, gadget_id = 70220103, pos = { x = -541.530, y = 211.883, z = 2387.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[668006] = { config_id = 668006, gadget_id = 70220103, pos = { x = -518.149, y = 218.973, z = 2375.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1668005, name = "GADGET_STATE_CHANGE_668005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_668005", action = "action_EVENT_GADGET_STATE_CHANGE_668005" }
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
		gadgets = { 668001, 668002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_668005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 668003, 668004, 668006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_668005(context, evt)
	if 668001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_668005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302668, 2)
	
	return 0
end

require "V3_0/HookLook"