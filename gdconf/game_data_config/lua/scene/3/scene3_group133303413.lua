-- 基础信息
local base_info = {
	group_id = 133303413
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 413003
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
	[413001] = { config_id = 413001, gadget_id = 70330229, pos = { x = -1309.427, y = 286.380, z = 3695.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[413002] = { config_id = 413002, gadget_id = 70330251, pos = { x = -1342.453, y = 311.355, z = 3691.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[413003] = { config_id = 413003, gadget_id = 70220103, pos = { x = -1342.453, y = 311.355, z = 3691.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[413004] = { config_id = 413004, gadget_id = 70220103, pos = { x = -1365.942, y = 330.202, z = 3674.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1413005, name = "GADGET_STATE_CHANGE_413005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413005", action = "action_EVENT_GADGET_STATE_CHANGE_413005" }
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
		gadgets = { 413001, 413002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_413005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 413003, 413004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_413005(context, evt)
	if 413001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303413, 2)
	
	return 0
end

require "V3_0/HookLook"