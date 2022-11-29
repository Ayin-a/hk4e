-- 基础信息
local base_info = {
	group_id = 133303432
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 432003
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
	[432001] = { config_id = 432001, gadget_id = 70330229, pos = { x = -1422.511, y = 198.957, z = 3484.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[432002] = { config_id = 432002, gadget_id = 70330251, pos = { x = -1438.485, y = 205.679, z = 3496.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[432003] = { config_id = 432003, gadget_id = 70220103, pos = { x = -1438.485, y = 205.679, z = 3496.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[432004] = { config_id = 432004, gadget_id = 70220103, pos = { x = -1466.486, y = 212.047, z = 3497.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1432005, name = "GADGET_STATE_CHANGE_432005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_432005", action = "action_EVENT_GADGET_STATE_CHANGE_432005" }
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
		gadgets = { 432001, 432002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_432005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 432003, 432004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_432005(context, evt)
	if 432001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_432005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303432, 2)
	
	return 0
end

require "V3_0/HookLook"