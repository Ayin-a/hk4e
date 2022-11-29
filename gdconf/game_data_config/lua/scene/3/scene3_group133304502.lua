-- 基础信息
local base_info = {
	group_id = 133304502
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 502003
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
	[502001] = { config_id = 502001, gadget_id = 70330229, pos = { x = -1484.071, y = 240.184, z = 2962.347 }, rot = { x = 339.397, y = 4.173, z = 358.329 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[502002] = { config_id = 502002, gadget_id = 70330251, pos = { x = -1480.469, y = 252.647, z = 2933.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[502003] = { config_id = 502003, gadget_id = 70220103, pos = { x = -1480.469, y = 252.647, z = 2933.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[502004] = { config_id = 502004, gadget_id = 70220103, pos = { x = -1471.949, y = 263.906, z = 2903.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1502005, name = "GADGET_STATE_CHANGE_502005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502005", action = "action_EVENT_GADGET_STATE_CHANGE_502005" }
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
		gadgets = { 502001, 502002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_502005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 502003, 502004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_502005(context, evt)
	if 502001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304502, 2)
	
	return 0
end

require "V3_0/HookLook"