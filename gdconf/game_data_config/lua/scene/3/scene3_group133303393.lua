-- 基础信息
local base_info = {
	group_id = 133303393
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 393003
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
	[393001] = { config_id = 393001, gadget_id = 70330229, pos = { x = -1944.147, y = 441.289, z = 3555.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[393002] = { config_id = 393002, gadget_id = 70330251, pos = { x = -1981.120, y = 470.054, z = 3546.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[393003] = { config_id = 393003, gadget_id = 70220103, pos = { x = -1981.120, y = 470.054, z = 3546.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[393004] = { config_id = 393004, gadget_id = 70300087, pos = { x = -1939.582, y = 441.445, z = 3552.070 }, rot = { x = 0.000, y = 216.268, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1393005, name = "GADGET_STATE_CHANGE_393005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393005", action = "action_EVENT_GADGET_STATE_CHANGE_393005" }
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
		gadgets = { 393001, 393002, 393004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_393005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 393003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_393005(context, evt)
	if 393001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_393005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303393, 2)
	
	return 0
end

require "V3_0/HookLook"