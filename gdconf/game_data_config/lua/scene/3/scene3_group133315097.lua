-- 基础信息
local base_info = {
	group_id = 133315097
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 97003
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
	[97001] = { config_id = 97001, gadget_id = 70330229, pos = { x = 169.624, y = 273.290, z = 2285.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[97002] = { config_id = 97002, gadget_id = 70330251, pos = { x = 146.739, y = 286.402, z = 2262.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[97003] = { config_id = 97003, gadget_id = 70220103, pos = { x = 146.739, y = 286.402, z = 2262.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[97004] = { config_id = 97004, gadget_id = 70220103, pos = { x = 118.644, y = 300.685, z = 2294.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[97006] = { config_id = 97006, gadget_id = 70220103, pos = { x = 98.087, y = 301.192, z = 2311.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[97007] = { config_id = 97007, gadget_id = 70220103, pos = { x = 135.618, y = 285.383, z = 2290.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097005, name = "GADGET_STATE_CHANGE_97005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97005", action = "action_EVENT_GADGET_STATE_CHANGE_97005" }
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
		gadgets = { 97001, 97002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_97005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 97003, 97004, 97006, 97007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315097, 2)
	
	return 0
end

require "V3_0/HookLook"