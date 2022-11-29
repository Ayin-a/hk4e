-- 基础信息
local base_info = {
	group_id = 240052007
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 7002
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
	[7001] = { config_id = 7001, gadget_id = 70330229, pos = { x = 745.295, y = 57.678, z = 369.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3 },
	[7002] = { config_id = 7002, gadget_id = 70330251, pos = { x = 760.720, y = 79.210, z = 380.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3 },
	[7003] = { config_id = 7003, gadget_id = 70220103, pos = { x = 760.720, y = 79.210, z = 380.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007005, name = "GADGET_STATE_CHANGE_7005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7005", action = "action_EVENT_GADGET_STATE_CHANGE_7005" }
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
		gadgets = { 7001, 7002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_7005(context, evt)
	if 7001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052007, 2)
	
	return 0
end

require "V3_0/HookLook"