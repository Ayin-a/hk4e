-- 基础信息
local base_info = {
	group_id = 133301044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44002, monster_id = 28040101, pos = { x = -1319.169, y = 176.500, z = 3129.896 }, rot = { x = 0.000, y = 331.561, z = 0.000 }, level = 30, drop_tag = "水族", isOneoff = true, area_id = 23 },
	{ config_id = 44003, monster_id = 28040101, pos = { x = -1298.455, y = 176.500, z = 3096.082 }, rot = { x = 0.000, y = 358.027, z = 0.000 }, level = 30, drop_tag = "水族", isOneoff = true, area_id = 23 },
	{ config_id = 44004, monster_id = 28040101, pos = { x = -1316.481, y = 176.500, z = 3084.565 }, rot = { x = 0.000, y = 318.197, z = 0.000 }, level = 30, drop_tag = "水族", isOneoff = true, area_id = 21 },
	{ config_id = 44012, monster_id = 28040101, pos = { x = -1297.706, y = 176.500, z = 3094.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", isOneoff = true, area_id = 23 },
	{ config_id = 44013, monster_id = 28040101, pos = { x = -1320.308, y = 176.500, z = 3132.095 }, rot = { x = 0.000, y = 320.559, z = 0.000 }, level = 30, drop_tag = "水族", isOneoff = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44005, gadget_id = 70210102, pos = { x = -1337.120, y = 177.632, z = 3100.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 44006, gadget_id = 70210102, pos = { x = -1317.619, y = 178.117, z = 3108.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 44007, gadget_id = 70210102, pos = { x = -1348.716, y = 177.071, z = 3121.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2
	{ config_id = 1044001, name = "VARIABLE_CHANGE_44001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_44001", action = "action_EVENT_VARIABLE_CHANGE_44001" },
	-- 1
	{ config_id = 1044008, name = "VARIABLE_CHANGE_44008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_44008", action = "action_EVENT_VARIABLE_CHANGE_44008" },
	{ config_id = 1044018, name = "GADGET_STATE_CHANGE_44018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44018", action = "action_EVENT_GADGET_STATE_CHANGE_44018", trigger_count = 0 },
	{ config_id = 1044026, name = "GADGET_STATE_CHANGE_44026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44026", action = "action_EVENT_GADGET_STATE_CHANGE_44026", trigger_count = 0 },
	{ config_id = 1044027, name = "GADGET_STATE_CHANGE_44027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44027", action = "action_EVENT_GADGET_STATE_CHANGE_44027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_44001", "VARIABLE_CHANGE_44008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 44002, 44003, 44004, 44012, 44013 },
		gadgets = { 44005, 44006, 44007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_44001", "VARIABLE_CHANGE_44008", "GADGET_STATE_CHANGE_44018", "GADGET_STATE_CHANGE_44026", "GADGET_STATE_CHANGE_44027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_44001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为2
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_44001(context, evt)
	-- 调用提示id为 33010024 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010024) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_44008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_44008(context, evt)
	-- 调用提示id为 33010023 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44018(context, evt)
	if 44005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44018(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44026(context, evt)
	if 44006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44026(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44027(context, evt)
	if 44007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44027(context, evt)
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end