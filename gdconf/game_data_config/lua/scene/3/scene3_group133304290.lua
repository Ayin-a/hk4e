-- 基础信息
local base_info = {
	group_id = 133304290
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 290003
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
	[290001] = { config_id = 290001, gadget_id = 70330229, pos = { x = -1078.257, y = 238.888, z = 2315.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 21 },
	[290002] = { config_id = 290002, gadget_id = 70330251, pos = { x = -1084.761, y = 243.905, z = 2290.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 21 },
	[290003] = { config_id = 290003, gadget_id = 70220103, pos = { x = -1084.761, y = 243.905, z = 2290.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[290004] = { config_id = 290004, gadget_id = 70220103, pos = { x = -1093.809, y = 250.468, z = 2266.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[290006] = { config_id = 290006, gadget_id = 70220103, pos = { x = -1082.502, y = 242.146, z = 2314.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 },
	[290007] = { config_id = 290007, gadget_id = 70330229, pos = { x = -1093.786, y = 249.672, z = 2263.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 5, area_id = 21 },
	[290008] = { config_id = 290008, gadget_id = 70330251, pos = { x = -1084.761, y = 243.905, z = 2290.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 5, area_id = 21 },
	[290009] = { config_id = 290009, gadget_id = 70330229, pos = { x = -1111.421, y = 244.259, z = 2294.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 6, area_id = 21 },
	[290010] = { config_id = 290010, gadget_id = 70330251, pos = { x = -1084.761, y = 243.905, z = 2290.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 6, area_id = 21 },
	[290011] = { config_id = 290011, gadget_id = 70330229, pos = { x = -1062.037, y = 238.906, z = 2284.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 7, area_id = 24 },
	[290012] = { config_id = 290012, gadget_id = 70330251, pos = { x = -1084.761, y = 243.905, z = 2290.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 7, area_id = 21 },
	[290013] = { config_id = 290013, gadget_id = 70220103, pos = { x = -1063.610, y = 240.132, z = 2286.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[290014] = { config_id = 290014, gadget_id = 70220103, pos = { x = -1111.586, y = 246.158, z = 2297.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1290005, name = "GADGET_STATE_CHANGE_290005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290005", action = "action_EVENT_GADGET_STATE_CHANGE_290005", trigger_count = 0 },
	{ config_id = 1290015, name = "GADGET_STATE_CHANGE_290015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290015", action = "action_EVENT_GADGET_STATE_CHANGE_290015", trigger_count = 0 },
	{ config_id = 1290016, name = "GADGET_STATE_CHANGE_290016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290016", action = "action_EVENT_GADGET_STATE_CHANGE_290016", trigger_count = 0 },
	{ config_id = 1290017, name = "GADGET_STATE_CHANGE_290017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290017", action = "action_EVENT_GADGET_STATE_CHANGE_290017", trigger_count = 0 }
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
		gadgets = { 290001, 290002, 290007, 290008, 290009, 290010, 290011, 290012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_290005", "GADGET_STATE_CHANGE_290015", "GADGET_STATE_CHANGE_290016", "GADGET_STATE_CHANGE_290017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 290003, 290004, 290006, 290013, 290014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_290005(context, evt)
	if 290001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304290, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290015(context, evt)
	if 290007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304290, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290016(context, evt)
	if 290009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304290, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290017(context, evt)
	if 290011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304290, 2)
	
	return 0
end

require "V3_0/HookLook"