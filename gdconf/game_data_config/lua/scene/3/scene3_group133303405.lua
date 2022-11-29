-- 基础信息
local base_info = {
	group_id = 133303405
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 405003
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
	[405001] = { config_id = 405001, gadget_id = 70330229, pos = { x = -1472.378, y = 130.858, z = 3342.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[405002] = { config_id = 405002, gadget_id = 70330251, pos = { x = -1472.840, y = 151.385, z = 3307.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[405003] = { config_id = 405003, gadget_id = 70220103, pos = { x = -1472.840, y = 151.385, z = 3307.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[405004] = { config_id = 405004, gadget_id = 70220103, pos = { x = -1444.506, y = 166.420, z = 3314.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[405006] = { config_id = 405006, gadget_id = 70220103, pos = { x = -1455.184, y = 182.468, z = 3288.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1405005, name = "GADGET_STATE_CHANGE_405005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_405005", action = "action_EVENT_GADGET_STATE_CHANGE_405005" }
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
		gadgets = { 405001, 405002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_405005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 405003, 405004, 405006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_405005(context, evt)
	if 405001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_405005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303405, 2)
	
	return 0
end

require "V3_0/HookLook"