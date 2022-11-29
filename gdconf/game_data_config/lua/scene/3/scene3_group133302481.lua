-- 基础信息
local base_info = {
	group_id = 133302481
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 481003
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
	[481001] = { config_id = 481001, gadget_id = 70330229, pos = { x = -759.445, y = 213.312, z = 2791.682 }, rot = { x = 0.659, y = 0.086, z = 5.406 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[481002] = { config_id = 481002, gadget_id = 70330251, pos = { x = -756.007, y = 210.837, z = 2820.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[481003] = { config_id = 481003, gadget_id = 70220103, pos = { x = -756.007, y = 210.837, z = 2820.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[481004] = { config_id = 481004, gadget_id = 70220103, pos = { x = -758.452, y = 208.483, z = 2850.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[481007] = { config_id = 481007, gadget_id = 70220103, pos = { x = -759.642, y = 207.944, z = 2880.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1481006, name = "GADGET_STATE_CHANGE_481006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_481006", action = "action_EVENT_GADGET_STATE_CHANGE_481006" }
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
		gadgets = { 481001, 481002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_481006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 481003, 481004, 481007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_481006(context, evt)
	if 481001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_481006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302481, 2)
	
	return 0
end

require "V3_0/HookLook"