-- 基础信息
local base_info = {
	group_id = 220023014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14011, monster_id = 21010301, pos = { x = 293.459, y = 42.056, z = 23.988 }, rot = { x = 0.000, y = 131.550, z = 0.000 }, level = 1 },
	{ config_id = 14012, monster_id = 21010301, pos = { x = 290.513, y = 42.381, z = -18.466 }, rot = { x = 0.000, y = 63.814, z = 0.000 }, level = 1 },
	{ config_id = 14013, monster_id = 21010301, pos = { x = 293.531, y = 42.942, z = -21.719 }, rot = { x = 0.000, y = 32.365, z = 0.000 }, level = 1 },
	{ config_id = 14014, monster_id = 21010301, pos = { x = 293.156, y = 42.056, z = 25.762 }, rot = { x = 0.000, y = 131.550, z = 0.000 }, level = 1 },
	{ config_id = 14015, monster_id = 23020101, pos = { x = 294.145, y = 42.189, z = 4.004 }, rot = { x = 0.000, y = 267.628, z = 0.000 }, level = 1, affix = { 1008, 1018 }, special_name_id = 10010 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14004, gadget_id = 70220014, pos = { x = 265.630, y = 42.057, z = -23.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14005, gadget_id = 70220014, pos = { x = 266.544, y = 42.056, z = -27.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14006, gadget_id = 70211001, pos = { x = 265.842, y = 42.057, z = -25.024 }, rot = { x = 0.000, y = 90.951, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 14007, gadget_id = 70220013, pos = { x = 266.990, y = 42.056, z = -22.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14008, gadget_id = 70220013, pos = { x = 268.824, y = 42.056, z = -22.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14016, gadget_id = 70350004, pos = { x = 265.297, y = 41.922, z = 3.940 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14017, gadget_id = 70350004, pos = { x = 296.192, y = 42.330, z = 4.029 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14018, gadget_id = 70350004, pos = { x = 301.766, y = 42.336, z = 3.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14019, gadget_id = 70350004, pos = { x = 298.931, y = 42.284, z = 7.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14020, gadget_id = 70350004, pos = { x = 299.116, y = 42.300, z = 0.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14021, gadget_id = 70350004, pos = { x = 281.908, y = 42.251, z = 21.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14022, gadget_id = 70350004, pos = { x = 294.140, y = 42.229, z = 21.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14023, gadget_id = 70350004, pos = { x = 306.536, y = 40.187, z = 21.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14024, gadget_id = 70350004, pos = { x = 306.539, y = 40.118, z = -13.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14025, gadget_id = 70350004, pos = { x = 294.340, y = 42.223, z = -13.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14026, gadget_id = 70350004, pos = { x = 281.869, y = 42.343, z = -13.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14027, gadget_id = 70220014, pos = { x = 265.600, y = 42.057, z = -26.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16, shape = RegionShape.SPHERE, radius = 3.1, pos = { x = 261.489, y = 40.439, z = 4.002 } },
	{ config_id = 17, shape = RegionShape.SPHERE, radius = 21.2, pos = { x = 290.626, y = 42.060, z = 3.450 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 3.1, pos = { x = 258.564, y = 21.766, z = 3.696 } },
	{ config_id = 14001, shape = RegionShape.SPHERE, radius = 2.1, pos = { x = 298.950, y = 44.215, z = 4.117 } }
}

-- 触发器
triggers = {
	{ config_id = 1000016, name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000017, name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", forbid_guest = false },
	{ config_id = 1000019, name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19" },
	{ config_id = 1000056, name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56", trigger_count = 0, forbid_guest = false },
	{ config_id = 1014001, name = "ENTER_REGION_14001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14001", action = "action_EVENT_ENTER_REGION_14001", trigger_count = 0, forbid_guest = false },
	{ config_id = 1014002, name = "TIMER_EVENT_14002", event = EventType.EVENT_TIMER_EVENT, source = "delay_open", condition = "", action = "action_EVENT_TIMER_EVENT_14002" },
	{ config_id = 1014003, name = "TIMER_EVENT_14003", event = EventType.EVENT_TIMER_EVENT, source = "delay_look", condition = "", action = "action_EVENT_TIMER_EVENT_14003" },
	{ config_id = 1014010, name = "GADGET_STATE_CHANGE_14010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14010", action = "action_EVENT_GADGET_STATE_CHANGE_14010" }
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
		gadgets = { 14004, 14005, 14006, 14007, 14008, 14016, 14017, 14018, 14019, 14020, 14021, 14022, 14023, 14024, 14025, 14026, 14027 },
		regions = { 16, 17, 56, 14001 },
		triggers = { "ENTER_REGION_16", "ENTER_REGION_17", "ANY_MONSTER_DIE_19", "ENTER_REGION_56", "ENTER_REGION_14001", "TIMER_EVENT_14002", "TIMER_EVENT_14003", "GADGET_STATE_CHANGE_14010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 将configid为 14016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 将configid为 14016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=291, y=43, z=4}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 调用提示id为 200230201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200230201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 14015, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 14015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023014") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：220023014的对象,请求一次调用,并将string参数："delay_open" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220023014, "delay_open", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220023014的对象,请求一次调用,并将string参数："delay_look" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220023014, "delay_look", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if evt.param1 ~= 56 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56(context, evt)
	-- 将configid为 14016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14001(context, evt)
	if evt.param1 ~= 14001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14001(context, evt)
	-- 将configid为 14017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14002(context, evt)
	-- 将configid为 14017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14003(context, evt)
	-- 触发镜头注目，注目位置为坐标（298，44，4），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=298, y=44, z=4}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14010(context, evt)
	if 14006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14010(context, evt)
	-- 将configid为 14026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end