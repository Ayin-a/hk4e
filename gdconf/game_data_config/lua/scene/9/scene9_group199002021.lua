-- 基础信息
local base_info = {
	group_id = 199002021
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
	{ config_id = 21001, gadget_id = 70310332, pos = { x = 499.366, y = 126.842, z = -454.905 }, rot = { x = 0.000, y = 85.595, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021002, name = "QUEST_FINISH_21002", event = EventType.EVENT_QUEST_FINISH, source = "7902603", condition = "", action = "action_EVENT_QUEST_FINISH_21002", trigger_count = 0 },
	{ config_id = 1021003, name = "GROUP_LOAD_21003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_21003", action = "action_EVENT_GROUP_LOAD_21003", trigger_count = 0 },
	{ config_id = 1021004, name = "VARIABLE_CHANGE_21004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21004", action = "action_EVENT_VARIABLE_CHANGE_21004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "DramaOpen", value = 0, no_refresh = true }
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
		gadgets = { 21001 },
		regions = { },
		triggers = { "QUEST_FINISH_21002", "GROUP_LOAD_21003", "VARIABLE_CHANGE_21004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_21002(context, evt)
	-- 将本组内变量名为 "DramaOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DramaOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_21003(context, evt)
	-- 判断变量"DramaOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DramaOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DramaOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DramaOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end