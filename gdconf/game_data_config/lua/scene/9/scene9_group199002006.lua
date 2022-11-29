-- 基础信息
local base_info = {
	group_id = 199002006
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
	{ config_id = 6001, gadget_id = 70310332, pos = { x = 556.608, y = 126.268, z = -556.647 }, rot = { x = 0.000, y = 231.604, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006002, name = "QUEST_FINISH_6002", event = EventType.EVENT_QUEST_FINISH, source = "7902613", condition = "", action = "action_EVENT_QUEST_FINISH_6002", trigger_count = 0 },
	{ config_id = 1006003, name = "GROUP_LOAD_6003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6003", action = "action_EVENT_GROUP_LOAD_6003", trigger_count = 0 },
	{ config_id = 1006004, name = "VARIABLE_CHANGE_6004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6004", action = "action_EVENT_VARIABLE_CHANGE_6004", trigger_count = 0 }
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
		gadgets = { 6001 },
		regions = { },
		triggers = { "QUEST_FINISH_6002", "GROUP_LOAD_6003", "VARIABLE_CHANGE_6004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_6002(context, evt)
	-- 将本组内变量名为 "DramaOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DramaOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6003(context, evt)
	-- 判断变量"DramaOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DramaOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DramaOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DramaOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end