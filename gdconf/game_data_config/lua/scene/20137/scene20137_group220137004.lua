-- 基础信息
local base_info = {
	group_id = 220137004
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
	{ config_id = 4001, gadget_id = 70290428, pos = { x = 696.297, y = 73.772, z = -88.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4007, gadget_id = 70360001, pos = { x = 694.383, y = 73.961, z = -89.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 4秒后杀门
	{ config_id = 1004002, name = "TIME_AXIS_PASS_4002", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4002", action = "action_EVENT_TIME_AXIS_PASS_4002", trigger_count = 0 },
	-- timePass保底
	{ config_id = 1004003, name = "GROUP_LOAD_4003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4003", trigger_count = 0 },
	-- 8秒后刷suite
	{ config_id = 1004004, name = "TIME_AXIS_PASS_4004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4004", action = "action_EVENT_TIME_AXIS_PASS_4004", trigger_count = 0 },
	{ config_id = 1004005, name = "GADGET_CREATE_4005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4005", action = "action_EVENT_GADGET_CREATE_4005", trigger_count = 0 },
	{ config_id = 1004006, name = "SELECT_OPTION_4006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4006", action = "action_EVENT_SELECT_OPTION_4006", trigger_count = 0 },
	-- 刷新后设置电梯状态
	{ config_id = 1004008, name = "GROUP_LOAD_4008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4008", trigger_count = 0 },
	-- 刷新后设置电梯状态
	{ config_id = 1004009, name = "GROUP_REFRESH_4009", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_4009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "doorOpen", value = 0, no_refresh = true }
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
		gadgets = { 4001 },
		regions = { },
		triggers = { "GROUP_LOAD_4003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4001, 4007 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_4002", "GROUP_LOAD_4003", "TIME_AXIS_PASS_4004", "GADGET_CREATE_4005", "SELECT_OPTION_4006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_4008", "GROUP_REFRESH_4009" },
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
function condition_EVENT_TIME_AXIS_PASS_4002(context, evt)
	if "dooropen" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4003(context, evt)
	if ScriptLib.GetHostQuestState(context,4007116) == 3 or ScriptLib.GetGroupVariableValue(context, "doorOpen") == 1 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=3})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4004(context, evt)
	if "dooropen" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220137004, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4005(context, evt)
	if 4007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220137004, 4007, {197}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4006(context, evt)
	-- 判断是gadgetid 4007 option_id 197
	if 4007 ~= evt.param1 then
		return false	
	end
	
	if 197 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4006(context, evt)
	-- 调用提示id为 60010367 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010367) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220137004, EntityType.GADGET, 4007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"dooropen"，时间节点为{4,8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "dooropen", {4,8}, false)
	
	
	-- 将本组内变量名为 "DoorOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "DoorOpen", 1, 220137015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组220137015中， configid为15001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220137015, 15001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "doorOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "doorOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4008(context, evt)
	if ScriptLib.GetHostQuestState(context,4007116) == 3 then
		ScriptLib.SetGroupVariableValueByGroup(context, "DoorOpen", 1, 220137015)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220137015, 15001, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_4009(context, evt)
	if ScriptLib.GetHostQuestState(context,4007116) == 3 then
		ScriptLib.SetGroupVariableValueByGroup(context, "DoorOpen", 1, 220137015)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220137015, 15001, GadgetState.Default)
	end
	
	return 0
end