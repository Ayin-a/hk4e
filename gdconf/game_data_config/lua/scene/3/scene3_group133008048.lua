-- 基础信息
local base_info = {
	group_id = 133008048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48002, monster_id = 24010101, pos = { x = 1167.231, y = 285.623, z = -567.528 }, rot = { x = 0.000, y = 5.076, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 100, climate_area_id = 1, area_id = 10 },
	{ config_id = 48003, monster_id = 24010101, pos = { x = 1177.036, y = 285.663, z = -528.304 }, rot = { x = 0.000, y = 188.034, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 100, climate_area_id = 1, area_id = 10 },
	{ config_id = 48004, monster_id = 24010301, pos = { x = 1151.498, y = 285.623, z = -543.257 }, rot = { x = 0.000, y = 96.573, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1007, 1010, 1019 }, pose_id = 100, climate_area_id = 1, area_id = 10 },
	{ config_id = 48013, monster_id = 24010101, pos = { x = 1167.231, y = 285.623, z = -567.528 }, rot = { x = 0.000, y = 5.076, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5009 }, pose_id = 101, climate_area_id = 1, area_id = 10 },
	{ config_id = 48014, monster_id = 24010301, pos = { x = 1151.498, y = 285.623, z = -543.257 }, rot = { x = 0.000, y = 96.573, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1007, 1010, 1019, 5009 }, pose_id = 101, climate_area_id = 1, area_id = 10 },
	{ config_id = 48015, monster_id = 24010101, pos = { x = 1177.036, y = 285.663, z = -528.304 }, rot = { x = 0.000, y = 188.034, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5009 }, pose_id = 101, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48017, gadget_id = 70360105, pos = { x = 1172.420, y = 285.623, z = -549.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 48027, gadget_id = 70310017, pos = { x = 1189.592, y = 285.663, z = -537.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 48028, gadget_id = 70310017, pos = { x = 1160.392, y = 285.623, z = -530.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 48029, gadget_id = 70310017, pos = { x = 1153.421, y = 285.709, z = -559.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 48030, gadget_id = 70310017, pos = { x = 1182.607, y = 285.663, z = -565.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048001, name = "ANY_MONSTER_DIE_48001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48001", action = "action_EVENT_ANY_MONSTER_DIE_48001", trigger_count = 0 },
	{ config_id = 1048005, name = "ANY_MONSTER_LIVE_48005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_48005", action = "action_EVENT_ANY_MONSTER_LIVE_48005" },
	{ config_id = 1048006, name = "ANY_MONSTER_LIVE_48006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_48006", action = "action_EVENT_ANY_MONSTER_LIVE_48006" },
	{ config_id = 1048007, name = "ANY_MONSTER_LIVE_48007", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_48007", action = "action_EVENT_ANY_MONSTER_LIVE_48007" },
	{ config_id = 1048008, name = "ANY_MONSTER_DIE_48008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48008", action = "action_EVENT_ANY_MONSTER_DIE_48008" },
	{ config_id = 1048009, name = "GADGET_CREATE_48009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48009", action = "action_EVENT_GADGET_CREATE_48009", trigger_count = 0 },
	{ config_id = 1048010, name = "GADGET_CREATE_48010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48010", action = "action_EVENT_GADGET_CREATE_48010", trigger_count = 0 },
	{ config_id = 1048011, name = "GADGET_CREATE_48011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48011", action = "action_EVENT_GADGET_CREATE_48011", trigger_count = 0 },
	{ config_id = 1048012, name = "GADGET_CREATE_48012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48012", action = "action_EVENT_GADGET_CREATE_48012", trigger_count = 0 },
	{ config_id = 1048016, name = "ANY_MONSTER_DIE_48016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48016", action = "action_EVENT_ANY_MONSTER_DIE_48016" },
	{ config_id = 1048018, name = "GADGET_CREATE_48018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48018", action = "action_EVENT_GADGET_CREATE_48018", trigger_count = 0 },
	{ config_id = 1048019, name = "TIMER_EVENT_48019", event = EventType.EVENT_TIMER_EVENT, source = "interval_0", condition = "", action = "action_EVENT_TIMER_EVENT_48019", trigger_count = 0 },
	{ config_id = 1048020, name = "TIMER_EVENT_48020", event = EventType.EVENT_TIMER_EVENT, source = "interval_1", condition = "", action = "action_EVENT_TIMER_EVENT_48020", trigger_count = 0 },
	{ config_id = 1048021, name = "TIMER_EVENT_48021", event = EventType.EVENT_TIMER_EVENT, source = "interval_2", condition = "", action = "action_EVENT_TIMER_EVENT_48021", trigger_count = 0 },
	{ config_id = 1048022, name = "TIMER_EVENT_48022", event = EventType.EVENT_TIMER_EVENT, source = "interval_3", condition = "", action = "action_EVENT_TIMER_EVENT_48022", trigger_count = 0 },
	{ config_id = 1048023, name = "VARIABLE_CHANGE_48023", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_48023", action = "action_EVENT_VARIABLE_CHANGE_48023", trigger_count = 0 },
	{ config_id = 1048024, name = "GADGET_CREATE_48024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48024", action = "action_EVENT_GADGET_CREATE_48024" },
	{ config_id = 1048025, name = "GADGET_CREATE_48025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48025", action = "action_EVENT_GADGET_CREATE_48025" },
	{ config_id = 1048026, name = "GADGET_CREATE_48026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48026", action = "action_EVENT_GADGET_CREATE_48026" },
	{ config_id = 1048031, name = "GROUP_LOAD_48031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_48031", action = "action_EVENT_GROUP_LOAD_48031", trigger_count = 0 },
	{ config_id = 1048032, name = "ANY_MONSTER_DIE_48032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48032", action = "action_EVENT_ANY_MONSTER_DIE_48032", trigger_count = 2 },
	{ config_id = 1048033, name = "VARIABLE_CHANGE_48033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_48033", action = "action_EVENT_VARIABLE_CHANGE_48033", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "monster_die_count", value = 0, no_refresh = true },
	{ config_id = 3, name = "baodi_count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 4,
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
		monsters = { 48013, 48014, 48015 },
		gadgets = { 48027, 48028, 48029, 48030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48008", "ANY_MONSTER_DIE_48016", "VARIABLE_CHANGE_48023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 48014 },
		gadgets = { 48017, 48027, 48028, 48029, 48030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48001", "ANY_MONSTER_LIVE_48005", "ANY_MONSTER_LIVE_48007", "GADGET_CREATE_48018", "TIMER_EVENT_48019", "TIMER_EVENT_48020", "TIMER_EVENT_48021", "TIMER_EVENT_48022", "GADGET_CREATE_48024", "GADGET_CREATE_48025", "GADGET_CREATE_48026", "ANY_MONSTER_DIE_48032", "VARIABLE_CHANGE_48033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 48027, 48028, 48029, 48030 },
		regions = { },
		triggers = { "GADGET_CREATE_48009", "GADGET_CREATE_48010", "GADGET_CREATE_48011", "GADGET_CREATE_48012", "GROUP_LOAD_48031" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 48017, 48027, 48028, 48029, 48030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48001", "ANY_MONSTER_LIVE_48006", "GADGET_CREATE_48018", "TIMER_EVENT_48019", "TIMER_EVENT_48020", "TIMER_EVENT_48021", "TIMER_EVENT_48022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48001(context, evt)
	if 48014 ~= evt.param1 and 48004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300804801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008048, "interval_0") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008048, "interval_1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008048, "interval_2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008048, "interval_3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 48027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008048, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 48017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_48005(context, evt)
	if 48013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_48005(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133008048, EntityType.MONSTER, 48013)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_48006(context, evt)
	if 48014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_48006(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133008048, EntityType.MONSTER, 48014)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_48007(context, evt)
	if 48015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_48007(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133008048, EntityType.MONSTER, 48015)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48008(context, evt)
	if 48013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48008(context, evt)
	-- 针对当前group内变量名为 "baodi_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48009(context, evt)
	if 48027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48009(context, evt)
	-- 将configid为 48027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48010(context, evt)
	if 48028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48010(context, evt)
	-- 将configid为 48028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48011(context, evt)
	if 48029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48011(context, evt)
	-- 将configid为 48029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48012(context, evt)
	if 48030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48012(context, evt)
	-- 将configid为 48030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48016(context, evt)
	if 48015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48016(context, evt)
	-- 针对当前group内变量名为 "baodi_count" 的变量，进行修改，变化值为 2
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi_count", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48018(context, evt)
	if 48017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48018(context, evt)
	-- 将configid为 48027 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48027, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48028 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48028, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48029 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48029, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48030 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48030, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：133008048的对象,请求一次调用,并将string参数："interval_0" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008048, "interval_0", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_48019(context, evt)
	-- 将configid为 48030 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48030, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟25秒后,向groupId为：133008048的对象,请求一次调用,并将string参数："interval_1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008048, "interval_1", 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_48020(context, evt)
	-- 将configid为 48027 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48027, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟25秒后,向groupId为：133008048的对象,请求一次调用,并将string参数："interval_2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008048, "interval_2", 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_48021(context, evt)
	-- 将configid为 48028 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48028, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟25秒后,向groupId为：133008048的对象,请求一次调用,并将string参数："interval_3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008048, "interval_3", 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_48022(context, evt)
	-- 将configid为 48029 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48029, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟25秒后,向groupId为：133008048的对象,请求一次调用,并将string参数："interval_0" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008048, "interval_0", 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_48023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 133008048) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48023(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008048, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {48013}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008048中,configid为：48013的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 48013, 133008048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {48015}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008048中,configid为：48015的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 48015, 133008048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48024(context, evt)
	-- 判断变量"baodi_count"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi_count") ~= 1 then
			return false
	end
	
	if 48017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48024(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48025(context, evt)
	-- 判断变量"baodi_count"为2
	if ScriptLib.GetGroupVariableValue(context, "baodi_count") ~= 2 then
			return false
	end
	
	if 48017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_48026(context, evt)
	-- 判断变量"baodi_count"为3
	if ScriptLib.GetGroupVariableValue(context, "baodi_count") ~= 3 then
			return false
	end
	
	if 48017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_48026(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_48031(context, evt)
	if -1 == ScriptLib.GetGadgetStateByConfigId(context, 133008312, 312001) then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_48031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008312, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48032(context, evt)
	if 48015 ~= evt.param1 and 48003 ~= evt.param1 and 48013 ~= evt.param1 and 48002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48032(context, evt)
	-- 针对当前group内变量名为 "monster_die_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_die_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_48033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_die_count"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_die_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48033(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {48014}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008048中,configid为：48014的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 48014, 133008048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008048, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end