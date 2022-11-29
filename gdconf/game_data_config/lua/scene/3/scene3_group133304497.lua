-- 基础信息
local base_info = {
	group_id = 133304497
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 497003
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
	[497001] = { config_id = 497001, gadget_id = 70330229, pos = { x = -1528.910, y = 392.949, z = 2207.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[497002] = { config_id = 497002, gadget_id = 70330251, pos = { x = -1543.223, y = 405.427, z = 2209.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[497003] = { config_id = 497003, gadget_id = 70220103, pos = { x = -1543.223, y = 405.427, z = 2209.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[497004] = { config_id = 497004, gadget_id = 70220103, pos = { x = -1571.220, y = 425.192, z = 2214.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[497006] = { config_id = 497006, gadget_id = 70220103, pos = { x = -1597.883, y = 444.337, z = 2225.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[497007] = { config_id = 497007, gadget_id = 70220103, pos = { x = -1626.835, y = 462.906, z = 2229.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1497005, name = "GADGET_STATE_CHANGE_497005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_497005", action = "action_EVENT_GADGET_STATE_CHANGE_497005" }
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
		gadgets = { 497001, 497002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_497005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 497003, 497004, 497006, 497007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_497005(context, evt)
	if 497001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_497005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304497, 2)
	
	return 0
end

require "V3_0/HookLook"