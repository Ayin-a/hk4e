-- 基础信息
local base_info = {
	group_id = 133303485
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 485003
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
	[485001] = { config_id = 485001, gadget_id = 70330229, pos = { x = -1161.214, y = 265.381, z = 3461.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[485002] = { config_id = 485002, gadget_id = 70330251, pos = { x = -1180.014, y = 261.916, z = 3485.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[485003] = { config_id = 485003, gadget_id = 70220103, pos = { x = -1180.014, y = 261.916, z = 3485.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[485004] = { config_id = 485004, gadget_id = 70220103, pos = { x = -1194.714, y = 250.647, z = 3513.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1485005, name = "GADGET_STATE_CHANGE_485005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_485005", action = "action_EVENT_GADGET_STATE_CHANGE_485005" }
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
		gadgets = { 485001, 485002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_485005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 485003, 485004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_485005(context, evt)
	if 485001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_485005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303485, 2)
	
	return 0
end

require "V3_0/HookLook"