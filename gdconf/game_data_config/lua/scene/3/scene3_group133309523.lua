-- 基础信息
local base_info = {
	group_id = 133309523
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
	{ config_id = 523001, gadget_id = 70330454, pos = { x = -2752.874, y = -49.989, z = 5327.162 }, rot = { x = 0.000, y = 5.305, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1523002, name = "VARIABLE_CHANGE_523002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_523002", action = "action_EVENT_VARIABLE_CHANGE_523002" },
	{ config_id = 1523003, name = "GROUP_LOAD_523003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_523003", action = "action_EVENT_GROUP_LOAD_523003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "zhayao", value = 0, no_refresh = true }
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
		gadgets = { 523001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_523002", "GROUP_LOAD_523003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_523002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"zhayao"为1
	if ScriptLib.GetGroupVariableValue(context, "zhayao") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_523002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 523001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_523003(context, evt)
	-- 判断变量"zhayao"为1
	if ScriptLib.GetGroupVariableValue(context, "zhayao") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_523003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 523001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end