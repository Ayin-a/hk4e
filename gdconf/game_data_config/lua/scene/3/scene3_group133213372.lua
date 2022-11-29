-- 基础信息
local base_info = {
	group_id = 133213372
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
	{ config_id = 372001, gadget_id = 70330105, pos = { x = -3405.741, y = 199.637, z = -2996.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 372002, gadget_id = 70330064, pos = { x = -3415.865, y = 199.167, z = -2979.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 372004, gadget_id = 70900380, pos = { x = -3415.790, y = 211.212, z = -2979.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 372006, gadget_id = 70330064, pos = { x = -3415.865, y = 199.167, z = -2979.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372003, name = "VARIABLE_CHANGE_372003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_372003", action = "action_EVENT_VARIABLE_CHANGE_372003" },
	{ config_id = 1372005, name = "GROUP_LOAD_372005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_372005", action = "action_EVENT_GROUP_LOAD_372005", trigger_count = 0 },
	{ config_id = 1372007, name = "GROUP_LOAD_372007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_372007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count1", value = 0, no_refresh = true },
	{ config_id = 2, name = "count2", value = 0, no_refresh = true },
	{ config_id = 3, name = "count3", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 372001, 372006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_372003", "GROUP_LOAD_372005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 372001, 372002, 372004 },
		regions = { },
		triggers = { "GROUP_LOAD_372007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_372003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	-- 判断变量"count3"为1
	if ScriptLib.GetGroupVariableValue(context, "count3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_372003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213372, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_372005(context, evt)
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	-- 判断变量"count3"为1
	if ScriptLib.GetGroupVariableValue(context, "count3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_372005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213372, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_372007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213090, 3)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213091, 3)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213093, 3)
	
	return 0
end

require "V2_0/ElectricCore"