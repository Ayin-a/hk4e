-- 基础信息
local base_info = {
	group_id = 133315100
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 100003
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
	[100001] = { config_id = 100001, gadget_id = 70330229, pos = { x = 306.382, y = 287.813, z = 2373.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[100002] = { config_id = 100002, gadget_id = 70330251, pos = { x = 344.634, y = 292.574, z = 2371.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[100003] = { config_id = 100003, gadget_id = 70220103, pos = { x = 344.634, y = 292.574, z = 2371.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[100004] = { config_id = 100004, gadget_id = 70220103, pos = { x = 383.209, y = 281.972, z = 2370.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[100006] = { config_id = 100006, gadget_id = 70290543, pos = { x = 306.354, y = 287.782, z = 2373.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[100007] = { config_id = 100007, gadget_id = 70220103, pos = { x = 292.711, y = 286.797, z = 2340.676 }, rot = { x = 0.000, y = 42.982, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[100008] = { config_id = 100008, gadget_id = 70220103, pos = { x = 285.488, y = 277.298, z = 2313.442 }, rot = { x = 0.000, y = 344.066, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100005, name = "GADGET_STATE_CHANGE_100005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100005", action = "action_EVENT_GADGET_STATE_CHANGE_100005" }
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
		gadgets = { 100001, 100002, 100006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_100005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 100003, 100004, 100007, 100008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_100005(context, evt)
	if 100001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_100005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315100, 2)
	
	return 0
end

require "V3_0/HookLook"