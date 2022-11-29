-- 基础信息
local base_info = {
	group_id = 133304500
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 500003
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
	[500001] = { config_id = 500001, gadget_id = 70330229, pos = { x = -1028.285, y = 215.932, z = 2840.949 }, rot = { x = 6.599, y = 25.598, z = 12.799 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[500002] = { config_id = 500002, gadget_id = 70330251, pos = { x = -1048.729, y = 228.577, z = 2842.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 21 },
	[500003] = { config_id = 500003, gadget_id = 70220103, pos = { x = -1048.729, y = 228.577, z = 2842.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[500004] = { config_id = 500004, gadget_id = 70220103, pos = { x = -1077.845, y = 241.175, z = 2835.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[500006] = { config_id = 500006, gadget_id = 70220103, pos = { x = -1108.808, y = 255.353, z = 2829.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[500007] = { config_id = 500007, gadget_id = 70220103, pos = { x = -1134.112, y = 271.899, z = 2823.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[500008] = { config_id = 500008, gadget_id = 70220103, pos = { x = -1156.720, y = 284.810, z = 2822.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[500010] = { config_id = 500010, gadget_id = 70220103, pos = { x = -1180.675, y = 309.471, z = 2813.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1500005, name = "GADGET_STATE_CHANGE_500005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_500005", action = "action_EVENT_GADGET_STATE_CHANGE_500005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 500009, gadget_id = 70220103, pos = { x = -1168.444, y = 293.772, z = 2819.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
	}
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
		gadgets = { 500001, 500002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_500005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 500003, 500004, 500006, 500007, 500008, 500010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_500005(context, evt)
	if 500001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_500005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304500, 2)
	
	return 0
end

require "V3_0/HookLook"