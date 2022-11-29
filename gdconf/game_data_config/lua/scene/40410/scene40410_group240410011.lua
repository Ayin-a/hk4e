-- 基础信息
local base_info = {
	group_id = 240410011
}

-- DEFS_MISCS
local GroupID = 240410011

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
	{ config_id = 11001, gadget_id = 70360010, pos = { x = 0.076, y = 0.119, z = 3.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 11003, gadget_id = 70350091, pos = { x = 10.000, y = 0.000, z = 13.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, gadget_id = 70350091, pos = { x = 0.000, y = 0.000, z = 13.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11005, gadget_id = 70350091, pos = { x = -10.000, y = 0.000, z = 13.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11006, gadget_id = 70350091, pos = { x = 0.000, y = 0.000, z = 3.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11007, gadget_id = 70350091, pos = { x = -10.000, y = 0.000, z = 3.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11008, gadget_id = 70350091, pos = { x = 10.000, y = 0.000, z = 3.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11009, gadget_id = 70350091, pos = { x = -10.000, y = 0.000, z = -7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11010, gadget_id = 70350091, pos = { x = 0.000, y = 0.000, z = -7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11011, gadget_id = 70350091, pos = { x = 10.000, y = 0.000, z = -7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011002, name = "SELECT_OPTION_11002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11002", action = "action_EVENT_SELECT_OPTION_11002", trigger_count = 0 },
	{ config_id = 1011012, name = "SELECT_OPTION_11012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11012", action = "action_EVENT_SELECT_OPTION_11012", trigger_count = 0 },
	{ config_id = 1011013, name = "TIMER_EVENT_11013", event = EventType.EVENT_TIMER_EVENT, source = "Snow_Timer", condition = "", action = "action_EVENT_TIMER_EVENT_11013", trigger_count = 0 }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 11001, 11003, 11004, 11005, 11006, 11007, 11008, 11009, 11010, 11011 },
		regions = { },
		triggers = { "SELECT_OPTION_11002", "SELECT_OPTION_11012", "TIMER_EVENT_11013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_11002(context, evt)
	-- 判断是gadgetid 11001 option_id 7
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240410010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240410016, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11012(context, evt)
	-- 判断是gadgetid 11001 option_id 7
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11012(context, evt)
	RandomArea(context, 1)
	ScriptLib.CreateGroupTimerEvent(context, 240410011, "Snow_Timer", 20)
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_11013(context, evt)
	RandomArea(context, 1)
	ScriptLib.CreateGroupTimerEvent(context, 240410011, "Snow_Timer", 20)
	return 0
end

require "SnowDungeon"