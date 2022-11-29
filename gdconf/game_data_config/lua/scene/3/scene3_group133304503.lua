-- 基础信息
local base_info = {
	group_id = 133304503
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 503003
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
	[503001] = { config_id = 503001, gadget_id = 70330229, pos = { x = -1460.315, y = 227.239, z = 2758.986 }, rot = { x = 354.278, y = 29.477, z = 356.145 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[503002] = { config_id = 503002, gadget_id = 70330251, pos = { x = -1465.464, y = 228.393, z = 2744.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[503003] = { config_id = 503003, gadget_id = 70220103, pos = { x = -1465.464, y = 228.393, z = 2744.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[503004] = { config_id = 503004, gadget_id = 70220103, pos = { x = -1460.025, y = 235.247, z = 2694.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[503006] = { config_id = 503006, gadget_id = 70220103, pos = { x = -1462.925, y = 234.171, z = 2659.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[503007] = { config_id = 503007, gadget_id = 70220103, pos = { x = -1459.825, y = 232.776, z = 2721.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1503005, name = "GADGET_STATE_CHANGE_503005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_503005", action = "action_EVENT_GADGET_STATE_CHANGE_503005" }
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
		gadgets = { 503001, 503002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_503005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 503003, 503004, 503006, 503007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_503005(context, evt)
	if 503001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_503005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304503, 2)
	
	return 0
end

require "V3_0/HookLook"