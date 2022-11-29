-- 基础信息
local base_info = {
	group_id = 133304537
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 537003
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
	[537001] = { config_id = 537001, gadget_id = 70330229, pos = { x = -1137.697, y = 310.804, z = 2420.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[537002] = { config_id = 537002, gadget_id = 70330251, pos = { x = -1129.629, y = 317.866, z = 2434.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[537003] = { config_id = 537003, gadget_id = 70220103, pos = { x = -1160.944, y = 317.163, z = 2434.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[537004] = { config_id = 537004, gadget_id = 70220103, pos = { x = -1181.636, y = 335.356, z = 2449.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[537006] = { config_id = 537006, gadget_id = 70220103, pos = { x = -1141.834, y = 303.526, z = 2450.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[537007] = { config_id = 537007, gadget_id = 70220103, pos = { x = -1139.298, y = 299.378, z = 2484.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[537008] = { config_id = 537008, gadget_id = 70220103, pos = { x = -1114.531, y = 302.926, z = 2432.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[537009] = { config_id = 537009, gadget_id = 70220103, pos = { x = -1088.244, y = 288.209, z = 2450.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1537005, name = "GADGET_STATE_CHANGE_537005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_537005", action = "action_EVENT_GADGET_STATE_CHANGE_537005" }
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
		gadgets = { 537001, 537002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_537005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 537003, 537004, 537006, 537007, 537008, 537009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_537005(context, evt)
	if 537001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_537005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304537, 2)
	
	return 0
end

require "V3_0/HookLook"