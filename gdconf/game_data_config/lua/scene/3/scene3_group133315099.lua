-- 基础信息
local base_info = {
	group_id = 133315099
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 99003
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
	[99001] = { config_id = 99001, gadget_id = 70330229, pos = { x = 37.406, y = 252.961, z = 2329.630 }, rot = { x = 3.847, y = 0.000, z = 353.638 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[99002] = { config_id = 99002, gadget_id = 70330251, pos = { x = 51.389, y = 266.282, z = 2316.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[99003] = { config_id = 99003, gadget_id = 70220103, pos = { x = 51.389, y = 266.282, z = 2316.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[99004] = { config_id = 99004, gadget_id = 70220103, pos = { x = 68.819, y = 281.605, z = 2291.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[99006] = { config_id = 99006, gadget_id = 70220103, pos = { x = 59.881, y = 279.548, z = 2305.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099005, name = "GADGET_STATE_CHANGE_99005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99005", action = "action_EVENT_GADGET_STATE_CHANGE_99005" }
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
		gadgets = { 99001, 99002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_99005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 99003, 99004, 99006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_99005(context, evt)
	if 99001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315099, 2)
	
	return 0
end

require "V3_0/HookLook"