-- 基础信息
local base_info = {
	group_id = 133304257
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 257003
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
	[257001] = { config_id = 257001, gadget_id = 70330229, pos = { x = -1250.564, y = 276.532, z = 2595.370 }, rot = { x = 5.874, y = 2.154, z = -0.001 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[257002] = { config_id = 257002, gadget_id = 70330251, pos = { x = -1244.655, y = 273.993, z = 2617.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[257003] = { config_id = 257003, gadget_id = 70220103, pos = { x = -1237.806, y = 270.275, z = 2645.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[257004] = { config_id = 257004, gadget_id = 70220103, pos = { x = -1230.465, y = 266.725, z = 2674.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[257006] = { config_id = 257006, gadget_id = 70220103, pos = { x = -1244.655, y = 273.993, z = 2617.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257005, name = "GADGET_STATE_CHANGE_257005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_257005", action = "action_EVENT_GADGET_STATE_CHANGE_257005" }
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
		gadgets = { 257001, 257002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_257005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 257003, 257004, 257006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_257005(context, evt)
	if 257001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304257, 2)
	
	return 0
end

require "V3_0/HookLook"