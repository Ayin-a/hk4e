-- 基础信息
local base_info = {
	group_id = 133302469
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 469003
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
	[469001] = { config_id = 469001, gadget_id = 70330229, pos = { x = -633.197, y = 103.219, z = 2279.737 }, rot = { x = 0.000, y = 34.616, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[469002] = { config_id = 469002, gadget_id = 70330251, pos = { x = -615.941, y = 109.861, z = 2278.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[469003] = { config_id = 469003, gadget_id = 70220103, pos = { x = -615.941, y = 109.861, z = 2278.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[469004] = { config_id = 469004, gadget_id = 70220103, pos = { x = -583.567, y = 107.382, z = 2273.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1469005, name = "GADGET_STATE_CHANGE_469005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_469005", action = "action_EVENT_GADGET_STATE_CHANGE_469005" }
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
		gadgets = { 469001, 469002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_469005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 469003, 469004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_469005(context, evt)
	if 469001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_469005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302469, 2)
	
	return 0
end

require "V3_0/HookLook"