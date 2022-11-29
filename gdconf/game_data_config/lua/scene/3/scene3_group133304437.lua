-- 基础信息
local base_info = {
	group_id = 133304437
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 437003
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
	[437001] = { config_id = 437001, gadget_id = 70330229, pos = { x = -1204.587, y = 315.286, z = 2772.904 }, rot = { x = 4.598, y = 74.923, z = 345.833 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[437002] = { config_id = 437002, gadget_id = 70330251, pos = { x = -1209.869, y = 301.450, z = 2746.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[437003] = { config_id = 437003, gadget_id = 70220103, pos = { x = -1209.869, y = 301.450, z = 2746.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[437004] = { config_id = 437004, gadget_id = 70220103, pos = { x = -1210.147, y = 286.529, z = 2724.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[437006] = { config_id = 437006, gadget_id = 70220103, pos = { x = -1208.383, y = 263.680, z = 2706.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[437007] = { config_id = 437007, gadget_id = 70220103, pos = { x = -1198.557, y = 252.941, z = 2686.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[437008] = { config_id = 437008, gadget_id = 70220103, pos = { x = -1184.364, y = 240.274, z = 2672.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[437009] = { config_id = 437009, gadget_id = 70220103, pos = { x = -1173.239, y = 230.383, z = 2657.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[437010] = { config_id = 437010, gadget_id = 70220103, pos = { x = -1156.301, y = 218.220, z = 2638.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1437005, name = "GADGET_STATE_CHANGE_437005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_437005", action = "action_EVENT_GADGET_STATE_CHANGE_437005" }
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
		gadgets = { 437001, 437002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_437005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 437003, 437004, 437006, 437007, 437008, 437009, 437010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_437005(context, evt)
	if 437001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_437005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304437, 2)
	
	return 0
end

require "V3_0/HookLook"