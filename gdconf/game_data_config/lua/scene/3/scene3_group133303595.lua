-- 基础信息
local base_info = {
	group_id = 133303595
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 595003
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
	[595001] = { config_id = 595001, gadget_id = 70330229, pos = { x = -1406.513, y = 341.152, z = 3673.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[595002] = { config_id = 595002, gadget_id = 70330251, pos = { x = -1404.328, y = 331.395, z = 3692.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[595003] = { config_id = 595003, gadget_id = 70220103, pos = { x = -1404.328, y = 331.395, z = 3692.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[595004] = { config_id = 595004, gadget_id = 70220103, pos = { x = -1408.756, y = 316.468, z = 3715.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[595006] = { config_id = 595006, gadget_id = 70220103, pos = { x = -1413.418, y = 300.663, z = 3747.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[595007] = { config_id = 595007, gadget_id = 70220103, pos = { x = -1416.522, y = 271.961, z = 3787.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1595005, name = "GADGET_STATE_CHANGE_595005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595005", action = "action_EVENT_GADGET_STATE_CHANGE_595005" }
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
		gadgets = { 595001, 595002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_595005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 595003, 595004, 595006, 595007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_595005(context, evt)
	if 595001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303595, 2)
	
	return 0
end

require "V3_0/HookLook"