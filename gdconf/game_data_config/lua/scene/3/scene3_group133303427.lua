-- 基础信息
local base_info = {
	group_id = 133303427
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 427003
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
	[427001] = { config_id = 427001, gadget_id = 70330229, pos = { x = -1298.926, y = 171.328, z = 3380.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[427002] = { config_id = 427002, gadget_id = 70330251, pos = { x = -1276.508, y = 183.628, z = 3400.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[427003] = { config_id = 427003, gadget_id = 70220103, pos = { x = -1276.508, y = 183.628, z = 3400.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[427004] = { config_id = 427004, gadget_id = 70220103, pos = { x = -1250.811, y = 188.907, z = 3415.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[427006] = { config_id = 427006, gadget_id = 70220103, pos = { x = -1295.819, y = 182.494, z = 3381.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1427005, name = "GADGET_STATE_CHANGE_427005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427005", action = "action_EVENT_GADGET_STATE_CHANGE_427005" }
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
		gadgets = { 427001, 427002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_427005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 427003, 427004, 427006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_427005(context, evt)
	if 427001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303427, 2)
	
	return 0
end

require "V3_0/HookLook"