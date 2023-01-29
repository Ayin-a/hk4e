-- 基础信息
local base_info = {
	group_id = 220139015
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
	{ config_id = 15001, gadget_id = 70290428, pos = { x = 125.397, y = 136.277, z = 22.226 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 15002, gadget_id = 70360001, pos = { x = 125.725, y = 136.140, z = 22.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015003, name = "GADGET_CREATE_15003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15003", action = "action_EVENT_GADGET_CREATE_15003", trigger_count = 0 },
	{ config_id = 1015004, name = "SELECT_OPTION_15004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15004", action = "action_EVENT_SELECT_OPTION_15004", trigger_count = 0 },
	-- 8秒后切suite
	{ config_id = 1015005, name = "TIME_AXIS_PASS_15005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15005", action = "action_EVENT_TIME_AXIS_PASS_15005", trigger_count = 0 },
	-- 3秒后杀门
	{ config_id = 1015006, name = "TIME_AXIS_PASS_15006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15006", action = "action_EVENT_TIME_AXIS_PASS_15006", trigger_count = 0 },
	-- 重进地城保底
	{ config_id = 1015007, name = "GROUP_LOAD_15007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_15007", trigger_count = 0 }
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
		gadgets = { 15001 },
		regions = { },
		triggers = { "GROUP_LOAD_15007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15001, 15002 },
		regions = { },
		triggers = { "GADGET_CREATE_15003", "SELECT_OPTION_15004", "TIME_AXIS_PASS_15005", "TIME_AXIS_PASS_15006", "GROUP_LOAD_15007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_15003(context, evt)
	if 15002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220139015, 15002, {197}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15004(context, evt)
	-- 判断是gadgetid 15002 option_id 197
	if 15002 ~= evt.param1 then
		return false	
	end
	
	if 197 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220139015, EntityType.GADGET, 15002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 调用提示id为 60010369 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010369) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"dooropen"，时间节点为{3,8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "dooropen", {3,8}, false)
	
	
	-- 将本组内变量名为 "doorOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "doorOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15005(context, evt)
	if "dooropen" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220139015, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15006(context, evt)
	if "dooropen" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15007(context, evt)
	if ScriptLib.GetHostQuestState(context,4007314) == 3 or ScriptLib.GetGroupVariableValue(context, "doorOpen") == 1 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=3})
	end
	
	return 0
end