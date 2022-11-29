-- 基础信息
local base_info = {
	group_id = 220147005
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 5002
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
	[5001] = { config_id = 5001, gadget_id = 70330229, pos = { x = 721.990, y = 75.882, z = 350.790 }, rot = { x = 0.000, y = 324.627, z = 0.000 }, level = 1, mark_flag = 3 },
	[5002] = { config_id = 5002, gadget_id = 70330251, pos = { x = 738.891, y = 91.412, z = 348.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	[5003] = { config_id = 5003, gadget_id = 70220103, pos = { x = 740.755, y = 91.918, z = 348.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005005, name = "GADGET_STATE_CHANGE_5005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5005", action = "action_EVENT_GADGET_STATE_CHANGE_5005" }
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
		gadgets = { 5001, 5002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_5005(context, evt)
	if 5001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147005, 2)
	
	return 0
end

require "V3_0/HookLook"