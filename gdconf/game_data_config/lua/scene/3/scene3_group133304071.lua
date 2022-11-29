-- 基础信息
local base_info = {
	group_id = 133304071
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 71003
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
	[71001] = { config_id = 71001, gadget_id = 70330229, pos = { x = -1603.207, y = 236.018, z = 2869.549 }, rot = { x = 0.000, y = 0.000, z = 6.281 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[71002] = { config_id = 71002, gadget_id = 70330251, pos = { x = -1621.220, y = 243.230, z = 2862.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[71003] = { config_id = 71003, gadget_id = 70220103, pos = { x = -1621.220, y = 243.230, z = 2862.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[71004] = { config_id = 71004, gadget_id = 70220103, pos = { x = -1635.431, y = 247.584, z = 2853.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[71006] = { config_id = 71006, gadget_id = 70220103, pos = { x = -1657.672, y = 252.977, z = 2842.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071005, name = "GADGET_STATE_CHANGE_71005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71005", action = "action_EVENT_GADGET_STATE_CHANGE_71005" }
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
		gadgets = { 71001, 71002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_71005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 71003, 71004, 71006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_71005(context, evt)
	if 71001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304071, 2)
	
	return 0
end

require "V3_0/HookLook"