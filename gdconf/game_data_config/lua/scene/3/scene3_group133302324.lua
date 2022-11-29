-- 基础信息
local base_info = {
	group_id = 133302324
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 324003
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
	[324001] = { config_id = 324001, gadget_id = 70330229, pos = { x = -862.920, y = 219.313, z = 2699.489 }, rot = { x = 8.228, y = 359.774, z = 356.858 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[324002] = { config_id = 324002, gadget_id = 70330251, pos = { x = -870.556, y = 224.215, z = 2709.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[324003] = { config_id = 324003, gadget_id = 70220103, pos = { x = -870.556, y = 224.215, z = 2709.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[324004] = { config_id = 324004, gadget_id = 70220103, pos = { x = -889.695, y = 228.222, z = 2740.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[324006] = { config_id = 324006, gadget_id = 70220103, pos = { x = -900.487, y = 234.587, z = 2777.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1324005, name = "GADGET_STATE_CHANGE_324005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_324005", action = "action_EVENT_GADGET_STATE_CHANGE_324005" }
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
		gadgets = { 324001, 324002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_324005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 324003, 324004, 324006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_324005(context, evt)
	if 324001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_324005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302324, 2)
	
	return 0
end

require "V3_0/HookLook"