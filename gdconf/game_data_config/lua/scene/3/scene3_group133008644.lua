-- 基础信息
local base_info = {
	group_id = 133008644
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
	{ config_id = 644001, gadget_id = 70290047, pos = { x = 999.830, y = 481.934, z = -768.332 }, rot = { x = 354.317, y = 0.000, z = 355.817 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 644002, gadget_id = 70290047, pos = { x = 1140.130, y = 507.095, z = -845.769 }, rot = { x = 348.046, y = 153.216, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 644003, gadget_id = 70290047, pos = { x = 999.793, y = 571.687, z = -860.799 }, rot = { x = 0.001, y = 330.148, z = 352.826 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1644004, name = "VARIABLE_CHANGE_644004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_644004", action = "action_EVENT_VARIABLE_CHANGE_644004" },
	{ config_id = 1644005, name = "VARIABLE_CHANGE_644005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_644005", action = "action_EVENT_VARIABLE_CHANGE_644005" },
	{ config_id = 1644006, name = "VARIABLE_CHANGE_644006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_644006", action = "action_EVENT_VARIABLE_CHANGE_644006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_644004", "VARIABLE_CHANGE_644005", "VARIABLE_CHANGE_644006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_VARIABLE_CHANGE_644004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008644) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_644004(context, evt)
	-- 创建id为644003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_644005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008644) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_644005(context, evt)
	-- 创建id为644002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_644006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008644) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_644006(context, evt)
	-- 创建id为644001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 644001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end