-- 基础信息
local base_info = {
	group_id = 133302313
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 313003
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
	[313001] = { config_id = 313001, gadget_id = 70330229, pos = { x = -651.104, y = 132.982, z = 2259.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[313002] = { config_id = 313002, gadget_id = 70330251, pos = { x = -646.064, y = 143.572, z = 2280.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[313003] = { config_id = 313003, gadget_id = 70220103, pos = { x = -646.064, y = 143.572, z = 2280.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[313004] = { config_id = 313004, gadget_id = 70220103, pos = { x = -621.545, y = 151.608, z = 2289.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[313006] = { config_id = 313006, gadget_id = 70220103, pos = { x = -643.777, y = 150.169, z = 2298.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[313007] = { config_id = 313007, gadget_id = 70220103, pos = { x = -568.416, y = 132.961, z = 2277.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[313008] = { config_id = 313008, gadget_id = 70220103, pos = { x = -597.269, y = 145.042, z = 2282.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313005, name = "GADGET_STATE_CHANGE_313005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313005", action = "action_EVENT_GADGET_STATE_CHANGE_313005" }
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
		gadgets = { 313001, 313002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_313005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 313003, 313004, 313006, 313007, 313008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	if 313001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302313, 2)
	
	return 0
end

require "V3_0/HookLook"