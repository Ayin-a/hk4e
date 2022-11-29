-- 基础信息
local base_info = {
	group_id = 133107206
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
	{ config_id = 206001, gadget_id = 70300110, pos = { x = -893.100, y = 226.310, z = 655.570 }, rot = { x = 0.590, y = 29.013, z = 4.250 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	-- 1
	{ config_id = 206002, gadget_id = 70360001, pos = { x = -893.068, y = 226.252, z = 655.561 }, rot = { x = 0.000, y = 16.846, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	-- 2
	{ config_id = 206003, gadget_id = 70360001, pos = { x = -908.863, y = 228.361, z = 667.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 206004, gadget_id = 70300110, pos = { x = -908.843, y = 228.323, z = 667.604 }, rot = { x = 14.909, y = 35.150, z = 353.078 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 206014, gadget_id = 70310148, pos = { x = -893.085, y = 226.257, z = 655.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 206015, gadget_id = 70310148, pos = { x = -908.852, y = 228.359, z = 667.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1206005, name = "GADGET_CREATE_206005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_206005", action = "action_EVENT_GADGET_CREATE_206005", trigger_count = 0 },
	{ config_id = 1206006, name = "SELECT_OPTION_206006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_206006", action = "action_EVENT_SELECT_OPTION_206006", trigger_count = 0 },
	{ config_id = 1206007, name = "GADGET_CREATE_206007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_206007", action = "action_EVENT_GADGET_CREATE_206007", trigger_count = 0 },
	{ config_id = 1206008, name = "SELECT_OPTION_206008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_206008", action = "action_EVENT_SELECT_OPTION_206008", trigger_count = 0 },
	{ config_id = 1206009, name = "VARIABLE_CHANGE_206009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_206009", action = "action_EVENT_VARIABLE_CHANGE_206009", trigger_count = 0 },
	{ config_id = 1206010, name = "VARIABLE_CHANGE_206010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_206010", action = "action_EVENT_VARIABLE_CHANGE_206010", trigger_count = 0 },
	-- 如果已经拿过A了就删掉A的东西
	{ config_id = 1206011, name = "GROUP_REFRESH_206011", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_206011", action = "action_EVENT_GROUP_REFRESH_206011", trigger_count = 0 },
	-- 如果已经拿过B了就删掉B的东西
	{ config_id = 1206012, name = "GROUP_REFRESH_206012", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_206012", action = "action_EVENT_GROUP_REFRESH_206012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "letter1", value = 0, no_refresh = true },
	{ config_id = 2, name = "letter2", value = 0, no_refresh = true }
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
		gadgets = { 206001, 206002, 206003, 206004, 206014, 206015 },
		regions = { },
		triggers = { "GADGET_CREATE_206005", "SELECT_OPTION_206006", "GADGET_CREATE_206007", "SELECT_OPTION_206008", "VARIABLE_CHANGE_206009", "VARIABLE_CHANGE_206010", "GROUP_REFRESH_206011", "GROUP_REFRESH_206012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_206005(context, evt)
	if 206002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_206005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107206, 206002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_206006(context, evt)
	-- 判断是gadgetid 206002 option_id 68
	if 206002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_206006(context, evt)
	-- 将本组内变量名为 "letter1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "letter1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072061") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133107206 ；指定config：206002；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107206, 206002, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_206007(context, evt)
	if 206003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_206007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107206, 206003, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_206008(context, evt)
	-- 判断是gadgetid 206003 option_id 68
	if 206003 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_206008(context, evt)
	-- 将本组内变量名为 "letter2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "letter2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133107206 ；指定config：206003；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107206, 206003, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_206009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"letter1"为1
	if ScriptLib.GetGroupVariableValue(context, "letter1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_206009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072061") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_206010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"letter2"为1
	if ScriptLib.GetGroupVariableValue(context, "letter2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_206010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072062") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_206011(context, evt)
	-- 判断变量"letter1"为1
	if ScriptLib.GetGroupVariableValue(context, "letter1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_206011(context, evt)
	ScriptLib.AddQuestProgress(context, "1331072061")
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206001 )
		
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206014 )
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206002 )
	
	-- 删除指定group： 133107206 ；指定config：206002；物件身上指定option：68；
	ScriptLib.DelWorktopOptionByGroupId(context, 133107206, 206002, 68)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_206012(context, evt)
	-- 判断变量"letter2"为1
	if ScriptLib.GetGroupVariableValue(context, "letter2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_206012(context, evt)
	ScriptLib.AddQuestProgress(context, "1331072062")
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206004 )
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206015 )
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 133107206, EntityType.GADGET, 206003 )
	
	-- 删除指定group： 133107206 ；指定config：206002；物件身上指定option：68；
	ScriptLib.DelWorktopOptionByGroupId(context, 133107206, 206003, 68)
	
	return 0
end