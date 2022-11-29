-- 基础信息
local base_info = {
	group_id = 133302123
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 123003
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
	[123001] = { config_id = 123001, gadget_id = 70330229, pos = { x = -995.019, y = 231.333, z = 2405.714 }, rot = { x = 357.904, y = 359.898, z = 5.566 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[123002] = { config_id = 123002, gadget_id = 70330251, pos = { x = -994.901, y = 239.114, z = 2378.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[123003] = { config_id = 123003, gadget_id = 70220103, pos = { x = -994.901, y = 239.114, z = 2378.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[123004] = { config_id = 123004, gadget_id = 70220103, pos = { x = -1001.261, y = 244.297, z = 2352.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1123005, name = "GADGET_STATE_CHANGE_123005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123005", action = "action_EVENT_GADGET_STATE_CHANGE_123005" }
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
		gadgets = { 123001, 123002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_123005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 123003, 123004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_123005(context, evt)
	if 123001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302123, 2)
	
	return 0
end

require "V3_0/HookLook"