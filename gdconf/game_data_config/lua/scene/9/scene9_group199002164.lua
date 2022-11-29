-- 基础信息
local base_info = {
	group_id = 199002164
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
	{ config_id = 164001, gadget_id = 70950134, pos = { x = 498.324, y = 128.012, z = -455.067 }, rot = { x = 0.975, y = 95.508, z = 0.525 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164002, name = "QUEST_FINISH_164002", event = EventType.EVENT_QUEST_FINISH, source = "7902603", condition = "", action = "action_EVENT_QUEST_FINISH_164002", trigger_count = 0 },
	{ config_id = 1164003, name = "VARIABLE_CHANGE_164003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164003", action = "action_EVENT_VARIABLE_CHANGE_164003", trigger_count = 0 },
	{ config_id = 1164004, name = "GROUP_LOAD_164004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164004", action = "action_EVENT_GROUP_LOAD_164004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "kill", value = 0, no_refresh = true }
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
		gadgets = { 164001 },
		regions = { },
		triggers = { "QUEST_FINISH_164002", "VARIABLE_CHANGE_164003", "GROUP_LOAD_164004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_164002(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "kill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"kill"为1
	if ScriptLib.GetGroupVariableValue(context, "kill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002164, EntityType.GADGET, 164001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164004(context, evt)
	-- 判断变量"kill"为1
	if ScriptLib.GetGroupVariableValue(context, "kill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002164, EntityType.GADGET, 164001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end