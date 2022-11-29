-- 基础信息
local base_info = {
	group_id = 199003100
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
	{ config_id = 100001, gadget_id = 70360001, pos = { x = -724.612, y = 133.458, z = -0.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	{ config_id = 100004, gadget_id = 70360001, pos = { x = -800.608, y = 120.326, z = 152.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100005, gadget_id = 70360001, pos = { x = -671.002, y = 132.148, z = -151.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 风2
	{ config_id = 1100002, name = "VARIABLE_CHANGE_100002", event = EventType.EVENT_VARIABLE_CHANGE, source = "weather", condition = "", action = "action_EVENT_VARIABLE_CHANGE_100002", trigger_count = 0 },
	-- 雾1
	{ config_id = 1100003, name = "VARIABLE_CHANGE_100003", event = EventType.EVENT_VARIABLE_CHANGE, source = "weather", condition = "", action = "action_EVENT_VARIABLE_CHANGE_100003", trigger_count = 0 },
	-- 1
	{ config_id = 1100006, name = "GROUP_LOAD_100006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100006", action = "action_EVENT_GROUP_LOAD_100006", trigger_count = 0 },
	-- 2
	{ config_id = 1100007, name = "GROUP_LOAD_100007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100007", action = "action_EVENT_GROUP_LOAD_100007", trigger_count = 0 },
	-- 3
	{ config_id = 1100008, name = "GROUP_LOAD_100008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100008", action = "action_EVENT_GROUP_LOAD_100008", trigger_count = 0 },
	-- 4
	{ config_id = 1100009, name = "GROUP_LOAD_100009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100009", action = "action_EVENT_GROUP_LOAD_100009", trigger_count = 0 },
	-- 水4
	{ config_id = 1100010, name = "VARIABLE_CHANGE_100010", event = EventType.EVENT_VARIABLE_CHANGE, source = "weather", condition = "", action = "action_EVENT_VARIABLE_CHANGE_100010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "weather", value = 3, no_refresh = true },
	{ config_id = 2, name = "star", value = 0, no_refresh = true },
	{ config_id = 3, name = "door", value = 0, no_refresh = true }
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
		gadgets = { 100001, 100004, 100005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_100002", "VARIABLE_CHANGE_100003", "GROUP_LOAD_100006", "GROUP_LOAD_100007", "GROUP_LOAD_100008", "GROUP_LOAD_100009", "VARIABLE_CHANGE_100010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "weather") == 2 then
	
	ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 1 })
		
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 1 }) 
	
	
	else
	
	ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 2 })
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 2 }) 
	
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100003(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "weather") == 1 then
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 1 then
	ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 2 })
	end
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
	ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 2 }) 
	end
	 if ScriptLib.GetGroupVariableValueByGroup(context, "isFinished", 199003060) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003060, 1)
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then
	 ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 2 })
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003131) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003131, 2)
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003116, 2)
	   ScriptLib.GoToFlowSuite(context, 199003118, 2)
	  ScriptLib.GoToFlowSuite(context, 199003121, 2)
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003149, 2)
	end
	
	else
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
	ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 1 }) 
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then
	 ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 1 })
	end
	ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 1 })
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003131) == 0 then
	ScriptLib.GoToFlowSuite(context, 199003131, 1)
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "isFinished", 199003060) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003060, 2)
	end
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003116, 1)
	  ScriptLib.GoToFlowSuite(context, 199003118, 1)
	  ScriptLib.GoToFlowSuite(context, 199003121, 1)
	
	
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
	   ScriptLib.GoToFlowSuite(context, 199003149, 1)
	end
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100006(context, evt)
	-- 判断变量"weather"为1
	if ScriptLib.GetGroupVariableValue(context, "weather") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100006(context, evt)
	ScriptLib.SetWeatherAreaState(context, 9007, 1)
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	
	
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
	ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 2 }) 
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then
	 ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 2 })
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003131) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003131, 2)
	end
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003116, 2)
	   ScriptLib.GoToFlowSuite(context, 199003118, 2)
	  ScriptLib.GoToFlowSuite(context, 199003121, 2)
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
	  ScriptLib.GoToFlowSuite(context, 199003149, 2)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100007(context, evt)
	-- 判断变量"weather"为2
	if ScriptLib.GetGroupVariableValue(context, "weather") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100007(context, evt)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	
	
	
	ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 1 })
		
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 1 }) 
	
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
		ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 1 }) 
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then
		 ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 1 })
		end
		ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 1 })
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003131) == 0 then
		ScriptLib.GoToFlowSuite(context, 199003131, 1)
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
		  ScriptLib.GoToFlowSuite(context, 199003116, 1)
		  ScriptLib.GoToFlowSuite(context, 199003118, 1)
		  ScriptLib.GoToFlowSuite(context, 199003121, 1)
		
		
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
		   ScriptLib.GoToFlowSuite(context, 199003149, 1)
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100008(context, evt)
	-- 判断变量"weather"为3
	if ScriptLib.GetGroupVariableValue(context, "weather") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100008(context, evt)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	
	
	
	--雾
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
		ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 1 }) 
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then
		 ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 1 })
		end
		ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 1 })
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003131) == 0 then
		ScriptLib.GoToFlowSuite(context, 199003131, 1)
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
		  ScriptLib.GoToFlowSuite(context, 199003116, 1)
		  ScriptLib.GoToFlowSuite(context, 199003118, 1)
		  ScriptLib.GoToFlowSuite(context, 199003121, 1)
		
		
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
		   ScriptLib.GoToFlowSuite(context, 199003149, 1)
		end
	--风
	ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 2 })
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 2 }) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100009(context, evt)
	-- 判断变量"weather"为4
	if ScriptLib.GetGroupVariableValue(context, "weather") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100009(context, evt)
	ScriptLib.SetWeatherAreaState(context, 9006, 1)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	
	
	
	--雾
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
		ScriptLib.RefreshGroup(context, { group_id = 199003108, suite = 1 }) 
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then
		 ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 1 })
		end
		ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 1 })
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003131) == 0 then
		ScriptLib.GoToFlowSuite(context, 199003131, 1)
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 0 then
		  ScriptLib.GoToFlowSuite(context, 199003116, 1)
		  ScriptLib.GoToFlowSuite(context, 199003118, 1)
		  ScriptLib.GoToFlowSuite(context, 199003121, 1)
		
		
		end
		
		 if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003149) == 0 then
		   ScriptLib.GoToFlowSuite(context, 199003149, 1)
		end
	--风
	ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 2 })
	ScriptLib.RefreshGroup(context, { group_id = 199003047, suite = 2 }) 
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100010(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "weather") == 4 then
	
	ScriptLib.RefreshGroup(context, { group_id = 199003151, suite = 1 })
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 4, 199003164)
	
	
	
	else
	
	ScriptLib.RefreshGroup(context, { group_id = 199003151, suite = 2 })
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 0, 199003164)
	end
	
	
	
	return 0
end