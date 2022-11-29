-- 基础信息
local base_info = {
	group_id = 133309720
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
	{ config_id = 720001, gadget_id = 70330282, pos = { x = -2107.073, y = -56.474, z = 5724.486 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, server_global_value_config = {SGV_ChiWangLevelRequire = 4}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 射线开门
	{ config_id = 1720006, name = "VARIABLE_CHANGE_720006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_720006", action = "action_EVENT_VARIABLE_CHANGE_720006" },
	-- 射线保底开门
	{ config_id = 1720007, name = "GROUP_LOAD_720007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_720007", action = "action_EVENT_GROUP_LOAD_720007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 720002, gadget_id = 70330283, pos = { x = -2109.835, y = -56.263, z = 5727.563 }, rot = { x = 0.000, y = 15.302, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 4}, area_id = 27 }
	},
	triggers = {
		{ config_id = 1720003, name = "SELECT_OPTION_720003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_720003", action = "action_EVENT_SELECT_OPTION_720003", trigger_count = 0 },
		{ config_id = 1720004, name = "GADGET_STATE_CHANGE_720004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720004", action = "action_EVENT_GADGET_STATE_CHANGE_720004", trigger_count = 0 },
		{ config_id = 1720005, name = "GROUP_LOAD_720005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_720005", action = "action_EVENT_GROUP_LOAD_720005", trigger_count = 0 }
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
		gadgets = { 720001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_720006", "GROUP_LOAD_720007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_720006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_720006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 720001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_720007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_720007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 720001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end