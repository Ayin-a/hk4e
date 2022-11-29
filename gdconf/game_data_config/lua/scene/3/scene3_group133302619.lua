-- 基础信息
local base_info = {
	group_id = 133302619
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 619003
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
	[619001] = { config_id = 619001, gadget_id = 70330229, pos = { x = -160.672, y = 206.721, z = 2983.334 }, rot = { x = 16.732, y = 10.049, z = 49.713 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[619002] = { config_id = 619002, gadget_id = 70330251, pos = { x = -175.104, y = 223.596, z = 3004.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[619003] = { config_id = 619003, gadget_id = 70220103, pos = { x = -175.104, y = 223.596, z = 3004.073 }, rot = { x = 0.000, y = 315.675, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1619005, name = "GADGET_STATE_CHANGE_619005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_619005", action = "action_EVENT_GADGET_STATE_CHANGE_619005" }
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
		gadgets = { 619001, 619002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_619005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 619003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_619005(context, evt)
	if 619001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_619005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302619, 2)
	
	return 0
end

require "V3_0/HookLook"