-- 基础信息
local base_info = {
	group_id = 220117001
}

-- DEFS_MISCS
local defs = {
    BossConfigID = 1002,
    EnvConfigID = 1001,
    GroupID = 220117001,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1002] = { config_id = 1002, monster_id = 29060102, pos = { x = 492.258, y = 100.542, z = 488.200 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, title_id = 152, special_name_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 70290109, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "GADGET_STATE_CHANGE_1003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1003", action = "action_EVENT_GADGET_STATE_CHANGE_1003" },
	{ config_id = 1001004, name = "GADGET_STATE_CHANGE_1004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1004", action = "action_EVENT_GADGET_STATE_CHANGE_1004" },
	{ config_id = 1001005, name = "QUEST_START_1005", event = EventType.EVENT_QUEST_START, source = "202004", condition = "", action = "action_EVENT_QUEST_START_1005" },
	{ config_id = 1001007, name = "TIMER_EVENT_1007", event = EventType.EVENT_TIMER_EVENT, source = "timer", condition = "", action = "action_EVENT_TIMER_EVENT_1007" },
	{ config_id = 1001008, name = "VARIABLE_CHANGE_1008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1008", action = "action_EVENT_VARIABLE_CHANGE_1008" }
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
		gadgets = { 1001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1003", "GADGET_STATE_CHANGE_1004", "QUEST_START_1005", "TIMER_EVENT_1007", "VARIABLE_CHANGE_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1002 },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	-- 检测config_id为1001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 1001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	ScriptLib.SetWeatherAreaState(context,10060,0)
	
	ScriptLib.SetWeatherAreaState(context,10061,1)
	
	ScriptLib.PrintContextLog(context,"环境物件1001切到201，进入Weather10061")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1004(context, evt)
	-- 检测config_id为1001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 1001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1004(context, evt)
	ScriptLib.SetWeatherAreaState(context,10061,0)
	
	ScriptLib.SetWeatherAreaState(context,10062,1)
	
	ScriptLib.PrintContextLog(context,"环境物件1001切到202，进入Weather10062")
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220117001, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1007(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 220117001, EntityType.MONSTER, 1002)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"PhaseStep"为3
	if ScriptLib.GetGroupVariableValue(context, "PhaseStep") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "202011") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟0.5秒后,向groupId为：220117001的对象,请求一次调用,并将string参数："timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220117001, "timer", 0.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_1/Boss_Shougun"