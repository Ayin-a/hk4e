-- 基础信息
local base_info = {
	group_id = 133301261
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 261003
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
	[261001] = { config_id = 261001, gadget_id = 70330229, pos = { x = -1029.642, y = 273.198, z = 3886.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[261002] = { config_id = 261002, gadget_id = 70330251, pos = { x = -1037.337, y = 280.499, z = 3901.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[261003] = { config_id = 261003, gadget_id = 70220103, pos = { x = -1041.927, y = 289.199, z = 3911.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[261006] = { config_id = 261006, gadget_id = 70220103, pos = { x = -1056.128, y = 307.742, z = 3930.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261005, name = "GADGET_STATE_CHANGE_261005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261005", action = "action_EVENT_GADGET_STATE_CHANGE_261005" }
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
		gadgets = { 261001, 261002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_261005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 261003, 261006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_261005(context, evt)
	if 261001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301261, 2)
	
	return 0
end

require "V3_0/HookLook"