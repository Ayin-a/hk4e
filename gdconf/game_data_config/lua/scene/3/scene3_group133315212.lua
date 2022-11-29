-- 基础信息
local base_info = {
	group_id = 133315212
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 212003
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
	[212001] = { config_id = 212001, gadget_id = 70330229, pos = { x = 30.902, y = 246.407, z = 2952.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[212002] = { config_id = 212002, gadget_id = 70330251, pos = { x = 56.752, y = 257.729, z = 2970.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[212003] = { config_id = 212003, gadget_id = 70220103, pos = { x = 56.752, y = 257.729, z = 2970.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[212004] = { config_id = 212004, gadget_id = 70220103, pos = { x = 84.460, y = 271.728, z = 2979.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[212006] = { config_id = 212006, gadget_id = 70310198, pos = { x = 19.813, y = 246.386, z = 2938.045 }, rot = { x = 0.000, y = 11.520, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1212005, name = "GADGET_STATE_CHANGE_212005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_212005", action = "action_EVENT_GADGET_STATE_CHANGE_212005" }
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
		gadgets = { 212001, 212002, 212006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_212005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 212003, 212004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_212005(context, evt)
	if 212001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_212005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315212, 2)
	
	return 0
end

require "V3_0/HookLook"