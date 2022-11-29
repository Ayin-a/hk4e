-- 基础信息
local base_info = {
	group_id = 133303046
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
	{ config_id = 46002, gadget_id = 70360286, pos = { x = -2015.907, y = 470.571, z = 3649.960 }, rot = { x = 0.000, y = 350.164, z = 0.000 }, level = 30, worktop_config = { is_persistent = true, init_options = { 99 } }, area_id = 23 },
	{ config_id = 46004, gadget_id = 70211121, pos = { x = -2015.884, y = 470.758, z = 3650.011 }, rot = { x = 27.849, y = 345.323, z = 349.825 }, level = 26, chest_drop_id = 1050226, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 46005, gadget_id = 70950101, pos = { x = -2015.915, y = 470.690, z = 3650.166 }, rot = { x = 299.880, y = 7.381, z = 274.992 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "SELECT_OPTION_46003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46003", action = "action_EVENT_SELECT_OPTION_46003" },
	{ config_id = 1046006, name = "GADGET_STATE_CHANGE_46006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46006", action = "action_EVENT_GADGET_STATE_CHANGE_46006" },
	-- 保底，宝箱开启后创阅读物
	{ config_id = 1046007, name = "GROUP_LOAD_46007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_46007", action = "action_EVENT_GROUP_LOAD_46007", trigger_count = 0 },
	-- 任务refresh保底，宝箱开启后创阅读物
	{ config_id = 1046008, name = "GROUP_REFRESH_46008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_46008", action = "action_EVENT_GROUP_REFRESH_46008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestOpened", value = 0, no_refresh = true },
	{ config_id = 2, name = "dug", value = 0, no_refresh = true }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 46002 },
		regions = { },
		triggers = { "SELECT_OPTION_46003", "GADGET_STATE_CHANGE_46006", "GROUP_LOAD_46007", "GROUP_REFRESH_46008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 46004, 46005 },
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
function condition_EVENT_SELECT_OPTION_46003(context, evt)
	-- 判断是gadgetid 46002 option_id 99
	if 46002 ~= evt.param1 then
		return false	
	end
	
	if 99 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46003(context, evt)
	-- 创建id为46004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303046, EntityType.GADGET, 46002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dug", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46006(context, evt)
	if 46004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46006(context, evt)
	-- 将本组内变量名为 "chestOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为46005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 1111394 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111394) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_46007(context, evt)
	-- 判断变量"chestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_46007(context, evt)
	-- 创建id为46005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303046, EntityType.GADGET, 46002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_46008(context, evt)
	-- 判断变量"chestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_46008(context, evt)
	-- 创建id为46005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303046, EntityType.GADGET, 46002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end