-- 基础信息
local base_info = {
	group_id = 133302317
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 317003
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
	[317001] = { config_id = 317001, gadget_id = 70330229, pos = { x = -352.241, y = 133.170, z = 2228.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[317002] = { config_id = 317002, gadget_id = 70330251, pos = { x = -329.704, y = 134.380, z = 2221.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[317003] = { config_id = 317003, gadget_id = 70220103, pos = { x = -329.704, y = 134.380, z = 2221.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[317004] = { config_id = 317004, gadget_id = 70220103, pos = { x = -311.273, y = 136.548, z = 2214.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1317005, name = "GADGET_STATE_CHANGE_317005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317005", action = "action_EVENT_GADGET_STATE_CHANGE_317005" }
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
		gadgets = { 317001, 317002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_317005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 317003, 317004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_317005(context, evt)
	if 317001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302317, 2)
	
	return 0
end

require "V3_0/HookLook"