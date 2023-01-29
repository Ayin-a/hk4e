-- 基础信息
local base_info = {
	group_id = 133308708
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
	{ config_id = 708001, gadget_id = 70300118, pos = { x = -1258.536, y = 64.914, z = 4824.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	-- 假1
	{ config_id = 708002, gadget_id = 70300118, pos = { x = -1261.928, y = 65.297, z = 4797.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	-- 假1
	{ config_id = 708003, gadget_id = 70210104, pos = { x = -1261.838, y = 65.166, z = 4797.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 32 },
	-- 假2
	{ config_id = 708006, gadget_id = 70300118, pos = { x = -1257.743, y = 65.413, z = 4792.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	-- 假2
	{ config_id = 708007, gadget_id = 70210104, pos = { x = -1257.717, y = 65.432, z = 4792.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 假1死
	{ config_id = 1708004, name = "GADGET_STATE_CHANGE_708004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_708004", action = "action_EVENT_GADGET_STATE_CHANGE_708004" },
	-- 假2死
	{ config_id = 1708005, name = "GADGET_STATE_CHANGE_708005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_708005", action = "action_EVENT_GADGET_STATE_CHANGE_708005" },
	-- 变量为1，播reminder
	{ config_id = 1708008, name = "VARIABLE_CHANGE_708008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_708008", action = "action_EVENT_VARIABLE_CHANGE_708008" },
	-- 变量为2，播reminder
	{ config_id = 1708009, name = "VARIABLE_CHANGE_708009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_708009", action = "action_EVENT_VARIABLE_CHANGE_708009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder", value = 0, no_refresh = true }
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
		gadgets = { 708001, 708002, 708003, 708006, 708007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_708004", "GADGET_STATE_CHANGE_708005", "VARIABLE_CHANGE_708008", "VARIABLE_CHANGE_708009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_708004(context, evt)
	if 708003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_708004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 708002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_708005(context, evt)
	if 708007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_708005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 708006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "reminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_708008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_708008(context, evt)
	-- 调用提示id为 1000160016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000160016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_708009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为2
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_708009(context, evt)
	-- 调用提示id为 1000160017 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000160017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end