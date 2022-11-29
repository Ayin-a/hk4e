-- 基础信息
local base_info = {
	group_id = 201060003
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
	{ config_id = 3001, gadget_id = 70710470, pos = { x = -5.088, y = 0.467, z = 6.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1, is_enable_interact = false },
	{ config_id = 3002, gadget_id = 70710470, pos = { x = -4.111, y = 0.467, z = 6.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1, is_enable_interact = false },
	{ config_id = 3003, gadget_id = 70710470, pos = { x = -3.201, y = 0.545, z = 7.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1, is_enable_interact = false },
	{ config_id = 3014, gadget_id = 70360001, pos = { x = -3.207, y = 0.545, z = 6.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 3015, gadget_id = 70360001, pos = { x = -4.110, y = 0.467, z = 6.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 3016, gadget_id = 70360001, pos = { x = -5.118, y = 0.524, z = 6.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "SELECT_OPTION_3004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3004", action = "action_EVENT_SELECT_OPTION_3004", trigger_count = 0 },
	{ config_id = 1003005, name = "GADGET_STATE_CHANGE_3005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3005", action = "action_EVENT_GADGET_STATE_CHANGE_3005", trigger_count = 0 },
	{ config_id = 1003006, name = "GADGET_STATE_CHANGE_3006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3006", action = "action_EVENT_GADGET_STATE_CHANGE_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "SELECT_OPTION_3007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3007", action = "action_EVENT_SELECT_OPTION_3007", trigger_count = 0 },
	{ config_id = 1003008, name = "SELECT_OPTION_3008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3008", action = "action_EVENT_SELECT_OPTION_3008", trigger_count = 0 },
	{ config_id = 1003009, name = "SELECT_OPTION_3009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3009", action = "action_EVENT_SELECT_OPTION_3009", trigger_count = 0 },
	{ config_id = 1003010, name = "SELECT_OPTION_3010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3010", action = "action_EVENT_SELECT_OPTION_3010", trigger_count = 0 },
	{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "SELECT_OPTION_3012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3012", action = "action_EVENT_SELECT_OPTION_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "QUEST_START_3013", event = EventType.EVENT_QUEST_START, source = "2203803", condition = "", action = "action_EVENT_QUEST_START_3013", trigger_count = 0 },
	{ config_id = 1003017, name = "GADGET_CREATE_3017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3017", action = "action_EVENT_GADGET_CREATE_3017", trigger_count = 0 },
	{ config_id = 1003018, name = "GADGET_CREATE_3018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3018", action = "action_EVENT_GADGET_CREATE_3018", trigger_count = 0 },
	{ config_id = 1003019, name = "GADGET_CREATE_3019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3019", action = "action_EVENT_GADGET_CREATE_3019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Progress", value = 0, no_refresh = true }
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
		triggers = { "QUEST_START_3013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3001, 3002, 3003, 3014, 3015, 3016 },
		regions = { },
		triggers = { "SELECT_OPTION_3007", "SELECT_OPTION_3008", "SELECT_OPTION_3009", "SELECT_OPTION_3010", "SELECT_OPTION_3011", "SELECT_OPTION_3012", "QUEST_START_3013", "GADGET_CREATE_3017", "GADGET_CREATE_3018", "GADGET_CREATE_3019" },
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
function condition_EVENT_SELECT_OPTION_3004(context, evt)
	-- 判断是gadgetid 3014 option_id 82
	if 3014 ~= evt.param1 then
		return false	
	end
	
	if 82 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3005(context, evt)
	if 3002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	if 3003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Progress" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Progress", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3007(context, evt)
	-- 判断是gadgetid 3014 option_id 82
	if 3014 ~= evt.param1 then
		return false	
	end
	
	if 82 ~= evt.param2 then
		return false
	end
	
	-- 判断变量""不为0
	if ScriptLib.GetGroupVariableValue(context, "Progress") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600032") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 变量"Progress"赋值为0
	ScriptLib.SetGroupVariableValue(context, "Progress", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3008(context, evt)
	-- 判断是gadgetid 3015 option_id 823
	if 3015 ~= evt.param1 then
		return false	
	end
	
	if 83 ~= evt.param2 then
		return false
	end
	
	-- 判断变量""不为1
	if ScriptLib.GetGroupVariableValue(context, "Progress") == 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600032") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 变量"Progress"赋值为0
	ScriptLib.SetGroupVariableValue(context, "Progress", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3009(context, evt)
	-- 判断是gadgetid 3016 option_id 84
	if 3016 ~= evt.param1 then
		return false	
	end
	
	if 84 ~= evt.param2 then
		return false
	end
	
	-- 判断变量""不为2
	if ScriptLib.GetGroupVariableValue(context, "Progress") == 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600032") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 变量"Progress"赋值为0
	ScriptLib.SetGroupVariableValue(context, "Progress", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3010(context, evt)
	-- 判断是gadgetid 3014 option_id 82
	if 3014 ~= evt.param1 then
		return false	
	end
	
	if 82 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"Progress"为0
	if ScriptLib.GetGroupVariableValue(context, "Progress") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201060003, EntityType.GADGET, 3003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3011(context, evt)
	-- 判断是gadgetid 3015 option_id 83
	if 3015 ~= evt.param1 then
		return false	
	end
	
	if 83 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"Progress"为1
	if ScriptLib.GetGroupVariableValue(context, "Progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201060003, EntityType.GADGET, 3002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3012(context, evt)
	-- 判断是gadgetid 3016 option_id 84
	if 3016 ~= evt.param1 then
		return false	
	end
	
	if 84 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"Progress"为2
	if ScriptLib.GetGroupVariableValue(context, "Progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010600031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Progress" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Progress", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201060003, EntityType.GADGET, 3001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_3013(context, evt)
	-- 变量"Progress"赋值为0
	ScriptLib.SetGroupVariableValue(context, "Progress", 0)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201060003, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201060003, 3014, {82}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201060003, 3015, {83}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201060003, 3016, {84}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3017(context, evt)
	if 3014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201060003, 3014, {82}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3018(context, evt)
	if 3015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201060003, 3015, {83}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3019(context, evt)
	if 3016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201060003, 3016, {84}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end