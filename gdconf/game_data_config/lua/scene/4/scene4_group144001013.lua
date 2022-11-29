-- 基础信息
local base_info = {
	group_id = 144001013
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
	-- 第一扇门
	{ config_id = 13001, gadget_id = 70350006, pos = { x = -714.108, y = 105.607, z = 406.847 }, rot = { x = 0.480, y = 265.747, z = 341.022 }, level = 1, persistent = true, area_id = 103 },
	-- 天窗
	{ config_id = 13002, gadget_id = 70350006, pos = { x = -725.531, y = 119.857, z = 402.519 }, rot = { x = 89.363, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 13006, gadget_id = 70360005, pos = { x = -709.845, y = 107.665, z = 407.416 }, rot = { x = 18.337, y = 359.887, z = 7.336 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 13012, gadget_id = 70220021, pos = { x = -732.754, y = 102.399, z = 398.374 }, rot = { x = 9.314, y = 197.711, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 13016, gadget_id = 70710071, pos = { x = -725.893, y = 103.084, z = 396.964 }, rot = { x = 0.000, y = 8.461, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 13017, gadget_id = 70710071, pos = { x = -712.033, y = 108.513, z = 403.335 }, rot = { x = 12.368, y = 53.099, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 13019, gadget_id = 70710071, pos = { x = -735.499, y = 90.765, z = 414.962 }, rot = { x = 0.000, y = 70.505, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 13026, gadget_id = 70211131, pos = { x = -733.587, y = 114.890, z = 411.974 }, rot = { x = 356.757, y = 175.840, z = 359.658 }, level = 16, drop_tag = "解谜超级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 13046, gadget_id = 70360005, pos = { x = -732.003, y = 103.447, z = 398.131 }, rot = { x = 1.393, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 }
}

-- 区域
regions = {
	{ config_id = 13005, shape = RegionShape.SPHERE, radius = 9, pos = { x = -726.734, y = 88.179, z = 406.700 }, area_id = 103 },
	{ config_id = 13010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -739.906, y = 92.202, z = 418.071 }, area_id = 103 },
	{ config_id = 13011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -727.604, y = 103.849, z = 401.307 }, area_id = 103 },
	{ config_id = 13015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -727.604, y = 103.849, z = 401.307 }, area_id = 103 },
	{ config_id = 13023, shape = RegionShape.SPHERE, radius = 5, pos = { x = -764.376, y = 119.888, z = 368.963 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "GADGET_STATE_CHANGE_13003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13003", action = "action_EVENT_GADGET_STATE_CHANGE_13003", trigger_count = 0 },
	{ config_id = 1013005, name = "ENTER_REGION_13005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13005", action = "action_EVENT_ENTER_REGION_13005" },
	{ config_id = 1013007, name = "GADGET_STATE_CHANGE_13007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13007", action = "action_EVENT_GADGET_STATE_CHANGE_13007", trigger_count = 0 },
	{ config_id = 1013008, name = "VARIABLE_CHANGE_13008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_13008", action = "action_EVENT_VARIABLE_CHANGE_13008", trigger_count = 0 },
	{ config_id = 1013009, name = "VARIABLE_CHANGE_13009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_13009", action = "action_EVENT_VARIABLE_CHANGE_13009", trigger_count = 0 },
	{ config_id = 1013010, name = "ENTER_REGION_13010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13010", action = "action_EVENT_ENTER_REGION_13010", trigger_count = 0 },
	{ config_id = 1013011, name = "ENTER_REGION_13011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13011", action = "action_EVENT_ENTER_REGION_13011", trigger_count = 0 },
	{ config_id = 1013013, name = "QUEST_START_13013", event = EventType.EVENT_QUEST_START, source = "7900602", condition = "", action = "action_EVENT_QUEST_START_13013" },
	{ config_id = 1013014, name = "ANY_GADGET_DIE_13014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_13014", action = "action_EVENT_ANY_GADGET_DIE_13014", trigger_count = 0 },
	{ config_id = 1013015, name = "ENTER_REGION_13015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13015", action = "action_EVENT_ENTER_REGION_13015" },
	{ config_id = 1013020, name = "TIMER_EVENT_13020", event = EventType.EVENT_TIMER_EVENT, source = "openthetopdoor", condition = "", action = "action_EVENT_TIMER_EVENT_13020" },
	{ config_id = 1013021, name = "TIMER_EVENT_13021", event = EventType.EVENT_TIMER_EVENT, source = "rockborken", condition = "", action = "action_EVENT_TIMER_EVENT_13021" },
	{ config_id = 1013022, name = "TIMER_EVENT_13022", event = EventType.EVENT_TIMER_EVENT, source = "paimengkaiche2", condition = "", action = "action_EVENT_TIMER_EVENT_13022", trigger_count = 0 },
	{ config_id = 1013023, name = "ENTER_REGION_13023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13023", action = "action_EVENT_ENTER_REGION_13023", trigger_count = 0 },
	{ config_id = 1013027, name = "TIMER_EVENT_13027", event = EventType.EVENT_TIMER_EVENT, source = "huitou", condition = "", action = "action_EVENT_TIMER_EVENT_13027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "dooropen", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 13004, shape = RegionShape.SPHERE, radius = 11, pos = { x = -725.539, y = 106.859, z = 403.894 }, area_id = 103 }
	},
	triggers = {
		{ config_id = 1013004, name = "ENTER_REGION_13004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
		{ config_id = 1013018, name = "TIMER_EVENT_13018", event = EventType.EVENT_TIMER_EVENT, source = "paimengkaiche2", condition = "", action = "action_EVENT_TIMER_EVENT_13018" },
		{ config_id = 1013024, name = "GROUP_LOAD_13024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_13024", action = "action_EVENT_GROUP_LOAD_13024", trigger_count = 0 },
		{ config_id = 1013025, name = "TIMER_EVENT_13025", event = EventType.EVENT_TIMER_EVENT, source = "paimengkaiche2", condition = "", action = "action_EVENT_TIMER_EVENT_13025" }
	}
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
		gadgets = { 13001, 13002, 13006, 13012, 13016, 13017, 13019, 13026 },
		regions = { 13005, 13010, 13011, 13015, 13023 },
		triggers = { "GADGET_STATE_CHANGE_13003", "ENTER_REGION_13005", "GADGET_STATE_CHANGE_13007", "VARIABLE_CHANGE_13008", "VARIABLE_CHANGE_13009", "ENTER_REGION_13010", "ENTER_REGION_13011", "QUEST_START_13013", "ANY_GADGET_DIE_13014", "ENTER_REGION_13015", "TIMER_EVENT_13020", "TIMER_EVENT_13021", "TIMER_EVENT_13022", "ENTER_REGION_13023", "TIMER_EVENT_13027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	if 13046 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13005(context, evt)
	if evt.param1 ~= 13005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13005(context, evt)
	-- 调用提示id为 1110237 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110237) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	if 13006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	-- 将本组内变量名为 "dooropen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dooropen", 1, 144001013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"dooropen"为1
	if ScriptLib.GetGroupVariableValue(context, "dooropen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13008(context, evt)
	-- 将configid为 13001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"dooropen"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "dooropen", 144001013) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13009(context, evt)
	-- 将configid为 13001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13010(context, evt)
	if evt.param1 ~= 13010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13010(context, evt)
	-- 将本组内变量名为 "dooropen" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dooropen", 0, 144001013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13011(context, evt)
	if evt.param1 ~= 13011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13011(context, evt)
	-- 延迟2秒后,向groupId为：144001013的对象,请求一次调用,并将string参数："paimengkaiche2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001013, "paimengkaiche2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13013(context, evt)
	-- 将configid为 13002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-725.5314，119.8572，402.5192），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-725.5314, y=119.8572, z=402.5192}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 延迟1秒后,向groupId为：144001013的对象,请求一次调用,并将string参数："openthetopdoor" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001013, "openthetopdoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_13014(context, evt)
	if 13012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_13014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001013, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001123, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 延迟4秒后,向groupId为：144001013的对象,请求一次调用,并将string参数："rockborken" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001013, "rockborken", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13015(context, evt)
	if evt.param1 ~= 13015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13015(context, evt)
	-- 调用提示id为 1110300 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：144001013的对象,请求一次调用,并将string参数："huitou" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001013, "huitou", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13020(context, evt)
	-- 调用提示id为 1110239 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110239) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13021(context, evt)
	-- 调用提示id为 1110303 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110303) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13022(context, evt)
	-- 将本组内变量名为 "dooropen" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dooropen", 0, 144001013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13023(context, evt)
	if evt.param1 ~= 13023 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"finishyishi"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finishyishi", 144001122) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13023(context, evt)
	-- 创建id为13012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13027(context, evt)
	-- 触发镜头注目，注目位置为坐标（-714.3528，107.4609，407.367），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-714.3528, y=107.4609, z=407.367}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end