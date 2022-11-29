-- 基础信息
local base_info = {
	group_id = 133008014
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
	{ config_id = 14003, gadget_id = 70290045, pos = { x = 975.591, y = 290.535, z = -937.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 14004, gadget_id = 70290046, pos = { x = 975.599, y = 292.101, z = -937.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 14008, gadget_id = 70360001, pos = { x = 975.599, y = 292.101, z = -937.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014001, name = "GADGET_STATE_CHANGE_14001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14001", action = "action_EVENT_GADGET_STATE_CHANGE_14001" },
	{ config_id = 1014002, name = "GADGET_STATE_CHANGE_14002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14002", action = "action_EVENT_GADGET_STATE_CHANGE_14002" },
	{ config_id = 1014005, name = "GADGET_CREATE_14005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14005", action = "action_EVENT_GADGET_CREATE_14005", trigger_count = 0 },
	{ config_id = 1014006, name = "SELECT_OPTION_14006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14006", action = "action_EVENT_SELECT_OPTION_14006" },
	{ config_id = 1014007, name = "ANY_GADGET_DIE_14007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_14007", action = "action_EVENT_ANY_GADGET_DIE_14007" },
	{ config_id = 1014009, name = "GADGET_STATE_CHANGE_14009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14009", action = "action_EVENT_GADGET_STATE_CHANGE_14009" },
	{ config_id = 1014010, name = "TIMER_EVENT_14010", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_14010", trigger_count = 0 },
	{ config_id = 1014011, name = "GROUP_LOAD_14011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_14011", action = "action_EVENT_GROUP_LOAD_14011", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 14003, 14008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_14001", "GADGET_STATE_CHANGE_14002", "GADGET_CREATE_14005", "SELECT_OPTION_14006", "ANY_GADGET_DIE_14007", "GADGET_STATE_CHANGE_14009", "TIMER_EVENT_14010", "GROUP_LOAD_14011" },
		rand_weight = 100,
		ban_refresh = true
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
function condition_EVENT_GADGET_STATE_CHANGE_14001(context, evt)
	if 14003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14001(context, evt)
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133008390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 133008088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14002(context, evt)
	if 14003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14002(context, evt)
	-- 将本组内变量名为 "progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 2, 133008390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 2, 133008088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14005(context, evt)
	if 14004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008014, 14008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14006(context, evt)
	-- 判断是gadgetid 14008 option_id 7
	if 14008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300801401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：133008014的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008014, "delay", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_14007(context, evt)
	if 14003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_14007(context, evt)
	-- 创建id为14004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 4, 133008390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 4, 133008088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14009(context, evt)
	if 14003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14009(context, evt)
	-- 将本组内变量名为 "progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 3, 133008390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 3, 133008088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008014, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_14011(context, evt)
	if -1~=ScriptLib.GetGadgetStateByConfigId(context, 133008014, 14003) or -1~= ScriptLib.GetGadgetStateByConfigId(context, 133008014, 14004) then
		
	return false
		
	end
		
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_14011(context, evt)
	-- 创建id为14004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end