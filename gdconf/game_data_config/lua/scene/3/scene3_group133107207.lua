-- 基础信息
local base_info = {
	group_id = 133107207
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
	{ config_id = 207001, gadget_id = 70300110, pos = { x = -922.112, y = 237.076, z = 669.830 }, rot = { x = 0.000, y = 0.000, z = 4.168 }, level = 1, area_id = 8 },
	{ config_id = 207002, gadget_id = 70360001, pos = { x = -922.111, y = 237.028, z = 669.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 207005, gadget_id = 70310148, pos = { x = -922.214, y = 237.016, z = 669.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1207003, name = "GADGET_CREATE_207003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_207003", action = "action_EVENT_GADGET_CREATE_207003", trigger_count = 0 },
	{ config_id = 1207004, name = "SELECT_OPTION_207004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_207004", action = "action_EVENT_SELECT_OPTION_207004", trigger_count = 0 },
	{ config_id = 1207006, name = "VARIABLE_CHANGE_207006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_207006", action = "action_EVENT_VARIABLE_CHANGE_207006", trigger_count = 0 },
	{ config_id = 1207007, name = "GROUP_REFRESH_207007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_207007", action = "action_EVENT_GROUP_REFRESH_207007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "letter", value = 0, no_refresh = true }
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
		gadgets = { 207001, 207002, 207005 },
		regions = { },
		triggers = { "GADGET_CREATE_207003", "SELECT_OPTION_207004", "VARIABLE_CHANGE_207006", "GROUP_REFRESH_207007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_207003(context, evt)
	if 207002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_207003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107207, 207002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_207004(context, evt)
	-- 判断是gadgetid 207002 option_id 68
	if 207002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_207004(context, evt)
	-- 将本组内变量名为 "letter" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "letter", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107207, EntityType.GADGET, 207005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133107207 ；指定config：207002；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107207, 207002, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107207, EntityType.GADGET, 207001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107207, EntityType.GADGET, 207002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_207006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"letter"为1
	if ScriptLib.GetGroupVariableValue(context, "letter") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_207006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_207007(context, evt)
	-- 判断变量"letter"为1
	if ScriptLib.GetGroupVariableValue(context, "letter") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_207007(context, evt)
	ScriptLib.AddQuestProgress(context, "1331072071")
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107207, EntityType.GADGET, 207005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133107207 ；指定config：207002；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107207, 207002, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107207, EntityType.GADGET, 207001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107207, EntityType.GADGET, 207002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end