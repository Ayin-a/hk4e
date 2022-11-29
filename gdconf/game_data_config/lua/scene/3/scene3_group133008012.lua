-- 基础信息
local base_info = {
	group_id = 133008012
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
	{ config_id = 12003, gadget_id = 70290046, pos = { x = 1294.815, y = 297.391, z = -1045.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 12004, gadget_id = 70290045, pos = { x = 1294.866, y = 295.910, z = -1045.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 12008, gadget_id = 70360001, pos = { x = 1294.750, y = 297.374, z = -1045.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 12005, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1289.485, y = 295.438, z = -1039.970 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "GADGET_STATE_CHANGE_12001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12001", action = "action_EVENT_GADGET_STATE_CHANGE_12001" },
	{ config_id = 1012002, name = "GADGET_STATE_CHANGE_12002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12002", action = "action_EVENT_GADGET_STATE_CHANGE_12002" },
	{ config_id = 1012005, name = "ENTER_REGION_12005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12005", action = "action_EVENT_ENTER_REGION_12005" },
	{ config_id = 1012006, name = "GADGET_STATE_CHANGE_12006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12006", action = "action_EVENT_GADGET_STATE_CHANGE_12006" },
	{ config_id = 1012007, name = "ANY_GADGET_DIE_12007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_12007", action = "action_EVENT_ANY_GADGET_DIE_12007" },
	{ config_id = 1012009, name = "GADGET_CREATE_12009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12009", action = "action_EVENT_GADGET_CREATE_12009", trigger_count = 0 },
	{ config_id = 1012010, name = "SELECT_OPTION_12010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12010", action = "action_EVENT_SELECT_OPTION_12010" },
	{ config_id = 1012011, name = "TIMER_EVENT_12011", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_12011", trigger_count = 0 },
	{ config_id = 1012012, name = "GROUP_LOAD_12012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12012", action = "action_EVENT_GROUP_LOAD_12012", trigger_count = 0 }
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
		gadgets = { 12004, 12008 },
		regions = { 12005 },
		triggers = { "GADGET_STATE_CHANGE_12001", "GADGET_STATE_CHANGE_12002", "ENTER_REGION_12005", "GADGET_STATE_CHANGE_12006", "ANY_GADGET_DIE_12007", "GADGET_CREATE_12009", "SELECT_OPTION_12010", "TIMER_EVENT_12011", "GROUP_LOAD_12012" },
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
function condition_EVENT_GADGET_STATE_CHANGE_12001(context, evt)
	if 12004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12001(context, evt)
	-- 将本组内变量名为 "progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133008317) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 133008081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12002(context, evt)
	if 12004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12002(context, evt)
	-- 将本组内变量名为 "progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 2, 133008317) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 2, 133008081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12005(context, evt)
	if evt.param1 ~= 12005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12005(context, evt)
	-- 触发镜头注目，注目位置为坐标（1293，298，-1047），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1293, y=298, z=-1047}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 30080110 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12006(context, evt)
	if 12004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12006(context, evt)
	-- 将本组内变量名为 "progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 3, 133008317) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 3, 133008081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_12007(context, evt)
	if 12004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_12007(context, evt)
	-- 创建id为12003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "progress" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 4, 133008317) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 4, 133008081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12009(context, evt)
	if 12003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008012, 12008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12010(context, evt)
	-- 判断是gadgetid 12008 option_id 7
	if 12008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300801201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：133008012的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008012, "delay", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12012(context, evt)
	if -1~=ScriptLib.GetGadgetStateByConfigId(context, 133008012, 12003) or -1~= ScriptLib.GetGadgetStateByConfigId(context, 133008012, 12004) then
		
	return false
		
	end
		
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12012(context, evt)
	-- 创建id为12003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end