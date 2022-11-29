-- 基础信息
local base_info = {
	group_id = 220147002
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
	{ config_id = 2001, gadget_id = 70290506, pos = { x = 770.951, y = 73.943, z = 399.299 }, rot = { x = 0.000, y = 227.939, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70360001, pos = { x = 770.488, y = 74.680, z = 398.942 }, rot = { x = 0.000, y = 218.278, z = 0.000 }, level = 1, worktop_config = { init_options = { 769 } } },
	{ config_id = 2003, gadget_id = 70900201, pos = { x = 771.498, y = 77.715, z = 398.647 }, rot = { x = 0.000, y = 218.278, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "SELECT_OPTION_2004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2004", action = "action_EVENT_SELECT_OPTION_2004" },
	{ config_id = 1002005, name = "GADGET_STATE_CHANGE_2005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2005", action = "action_EVENT_GADGET_STATE_CHANGE_2005" },
	{ config_id = 1002006, name = "VARIABLE_CHANGE_2006", event = EventType.EVENT_VARIABLE_CHANGE, source = "KeyNum", condition = "condition_EVENT_VARIABLE_CHANGE_2006", action = "action_EVENT_VARIABLE_CHANGE_2006" },
	{ config_id = 1002007, name = "VARIABLE_CHANGE_2007", event = EventType.EVENT_VARIABLE_CHANGE, source = "KeyNum", condition = "condition_EVENT_VARIABLE_CHANGE_2007", action = "action_EVENT_VARIABLE_CHANGE_2007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "KeyNum", value = 0, no_refresh = false }
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
		gadgets = { 2001 },
		regions = { },
		triggers = { "SELECT_OPTION_2004", "GADGET_STATE_CHANGE_2005", "VARIABLE_CHANGE_2006", "VARIABLE_CHANGE_2007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2002 },
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
function condition_EVENT_SELECT_OPTION_2004(context, evt)
	-- 判断是gadgetid 2002 option_id 769
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 769 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2004(context, evt)
	-- 删除指定group： 220147002 ；指定config：2002；物件身上指定option：769；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220147002, 2002, 769) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2005(context, evt)
	if 2001 ~= evt.param2 or GadgetState.Action03 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"KeyNum"为3
	if ScriptLib.GetGroupVariableValue(context, "KeyNum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2006(context, evt)
	-- 调用提示id为 33010166 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010166) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"KeyNum"为2
	if ScriptLib.GetGroupVariableValue(context, "KeyNum") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2007(context, evt)
	-- 调用提示id为 33010162 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010162) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end