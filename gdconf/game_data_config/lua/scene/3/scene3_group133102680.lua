-- 基础信息
local base_info = {
	group_id = 133102680
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
	{ config_id = 680001, gadget_id = 70310004, pos = { x = 1414.716, y = 206.673, z = 305.024 }, rot = { x = 357.205, y = 359.943, z = 2.344 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 680002, gadget_id = 70310004, pos = { x = 1416.295, y = 206.647, z = 305.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 680003, gadget_id = 70310004, pos = { x = 1417.973, y = 206.680, z = 305.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 680004, gadget_id = 70310004, pos = { x = 1415.279, y = 206.625, z = 293.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 680005, gadget_id = 70310004, pos = { x = 1417.514, y = 206.805, z = 294.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 680006, gadget_id = 70310004, pos = { x = 1419.468, y = 206.642, z = 294.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 680012, gadget_id = 70211011, pos = { x = 1414.880, y = 205.162, z = 303.381 }, rot = { x = 0.000, y = 176.549, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1680007, name = "GADGET_STATE_CHANGE_680007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680007", action = "action_EVENT_GADGET_STATE_CHANGE_680007", trigger_count = 0 },
	{ config_id = 1680008, name = "GADGET_STATE_CHANGE_680008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680008", action = "action_EVENT_GADGET_STATE_CHANGE_680008", trigger_count = 0 },
	{ config_id = 1680009, name = "GADGET_STATE_CHANGE_680009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680009", action = "action_EVENT_GADGET_STATE_CHANGE_680009", trigger_count = 0 },
	{ config_id = 1680010, name = "VARIABLE_CHANGE_680010", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_680010", action = "action_EVENT_VARIABLE_CHANGE_680010" },
	{ config_id = 1680011, name = "VARIABLE_CHANGE_680011", event = EventType.EVENT_VARIABLE_CHANGE, source = "correct", condition = "", action = "action_EVENT_VARIABLE_CHANGE_680011", trigger_count = 0 },
	{ config_id = 1680013, name = "GADGET_STATE_CHANGE_680013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680013", action = "action_EVENT_GADGET_STATE_CHANGE_680013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "correct", value = 0, no_refresh = true },
	{ config_id = 2, name = "incorrect", value = 0, no_refresh = true },
	{ config_id = 3, name = "count", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_680007", "GADGET_STATE_CHANGE_680008", "GADGET_STATE_CHANGE_680009", "VARIABLE_CHANGE_680010", "VARIABLE_CHANGE_680011", "GADGET_STATE_CHANGE_680013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680007(context, evt)
	if 680001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680007(context, evt)
	-- 将本组内变量名为 "correct" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680008(context, evt)
	if 680001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680008(context, evt)
	-- 将本组内变量名为 "correct" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "correct", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680009(context, evt)
	if 680002 ~= evt.param2 and
	680003 ~= evt.param2 and
	680004 ~= evt.param2 and
	680005 ~= evt.param2 and
	680006 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680009(context, evt)
	if GadgetState.GearStart == evt.param1 then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	elseif GadgetState.Default == evt.param1 then
	ScriptLib.ChangeGroupVariableValue(context, "count", -1)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_680010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"correct"为1
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 1 then
			return false
	end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_680010(context, evt)
	-- 创建id为680012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 680012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_680011(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	
	if ScriptLib.GetGroupVariableValue(context, "correct") == 1 then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	elseif ScriptLib.GetGroupVariableValue(context, "correct") == 0 then
	ScriptLib.ChangeGroupVariableValue(context, "count", -1)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680013(context, evt)
	if 680012 ~= evt.param2 or GadgetState.ChestLocked ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102680, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end