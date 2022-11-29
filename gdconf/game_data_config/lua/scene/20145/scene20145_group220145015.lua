-- 基础信息
local base_info = {
	group_id = 220145015
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 15003
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
	[15001] = { config_id = 15001, gadget_id = 70330229, pos = { x = 482.146, y = 98.282, z = 522.783 }, rot = { x = 0.000, y = 278.927, z = 0.000 }, level = 30, mark_flag = 3 },
	[15002] = { config_id = 15002, gadget_id = 70330251, pos = { x = 470.345, y = 104.134, z = 525.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3 },
	[15003] = { config_id = 15003, gadget_id = 70220103, pos = { x = 470.345, y = 104.134, z = 525.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015005, name = "GADGET_STATE_CHANGE_15005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15005", action = "action_EVENT_GADGET_STATE_CHANGE_15005" }
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
		gadgets = { 15001, 15002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_15005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	if 15001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145015, 2)
	
	return 0
end

require "V3_0/HookLook"