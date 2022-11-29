-- 基础信息
local base_info = {
	group_id = 220102004
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 220102004,
	gadget_1 = 4001,
	gadget_2 = 4002,
	gadget_3 = 4003,
	gadget_4 = 4005,
	gadget_chest = 4004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4016, monster_id = 21010201, pos = { x = -37.181, y = 1.946, z = 86.620 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9016 },
	{ config_id = 4017, monster_id = 21010201, pos = { x = -54.896, y = 14.702, z = 20.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70900009, pos = { x = -80.723, y = 4.390, z = 13.977 }, rot = { x = 0.000, y = 346.847, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 4002, gadget_id = 70900009, pos = { x = -72.300, y = 4.352, z = 26.902 }, rot = { x = 0.000, y = 345.047, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 4003, gadget_id = 70900009, pos = { x = -69.635, y = 4.348, z = 29.586 }, rot = { x = 0.000, y = 75.147, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 4005, gadget_id = 70900009, pos = { x = -77.894, y = 4.421, z = 11.302 }, rot = { x = 0.000, y = 16.047, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 4010, gadget_id = 70350025, pos = { x = -88.695, y = 12.591, z = 21.593 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70900201, pos = { x = -95.720, y = 8.322, z = 42.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4012, gadget_id = 70211101, pos = { x = -120.837, y = 8.507, z = 50.613 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 4014, gadget_id = 70211101, pos = { x = -9.997, y = 1.931, z = 80.733 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 4015, gadget_id = 70900201, pos = { x = -77.768, y = 15.269, z = 83.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220014, pos = { x = -55.901, y = 14.697, z = 20.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70360002, pos = { x = -74.461, y = 4.334, z = 21.460 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4020, gadget_id = 70220026, pos = { x = -57.130, y = 14.698, z = 20.639 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 4022, gadget_id = 70900201, pos = { x = -76.054, y = 8.086, z = 51.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4024, gadget_id = 70900201, pos = { x = -102.660, y = 8.513, z = 66.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4013, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 10.000 }, pos = { x = -95.865, y = 9.119, z = 46.478 } },
	{ config_id = 4023, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -76.531, y = 7.164, z = 51.744 } },
	{ config_id = 4025, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -102.573, y = 8.332, z = 67.886 } }
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "GADGET_STATE_CHANGE_4004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4004", action = "action_EVENT_GADGET_STATE_CHANGE_4004" },
	{ config_id = 1004006, name = "GADGET_STATE_CHANGE_4006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4006", action = "action_EVENT_GADGET_STATE_CHANGE_4006", trigger_count = 0 },
	{ config_id = 1004007, name = "TIMER_EVENT_4007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_4007", action = "action_EVENT_TIMER_EVENT_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "VARIABLE_CHANGE_4008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4008", action = "action_EVENT_VARIABLE_CHANGE_4008", trigger_count = 0 },
	{ config_id = 1004009, name = "GADGET_STATE_CHANGE_4009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4009", action = "action_EVENT_GADGET_STATE_CHANGE_4009" },
	{ config_id = 1004013, name = "ENTER_REGION_4013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4013", action = "action_EVENT_ENTER_REGION_4013" },
	{ config_id = 1004021, name = "SELECT_OPTION_4021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4021", action = "action_EVENT_SELECT_OPTION_4021" },
	{ config_id = 1004023, name = "ENTER_REGION_4023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4023", action = "action_EVENT_ENTER_REGION_4023" },
	{ config_id = 1004025, name = "ENTER_REGION_4025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4025", action = "action_EVENT_ENTER_REGION_4025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { 4016, 4017 },
		gadgets = { 4001, 4002, 4003, 4005, 4010, 4012, 4014, 4018, 4019, 4020 },
		regions = { 4013, 4023, 4025 },
		triggers = { "GADGET_STATE_CHANGE_4004", "GADGET_STATE_CHANGE_4006", "TIMER_EVENT_4007", "VARIABLE_CHANGE_4008", "ENTER_REGION_4013", "SELECT_OPTION_4021", "ENTER_REGION_4023", "ENTER_REGION_4025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4004(context, evt)
	if 4019 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Action01  then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_4007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	
	if defs.gadget_1 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStart)
	end
	
	if defs.gadget_2 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStart)
	end
	
	if defs.gadget_3 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStart)
	end
	
	if defs.gadget_4 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.GearStart)
	end
	
	-- 改变指定group组220102004中， configid为4019的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102004, 4019, GadgetState.ChestOpened) then
			return -1
		end
	
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4009(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4009(context, evt)
	-- 改变指定group组220102004中， configid为4010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102004, 4010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4013(context, evt)
	if evt.param1 ~= 4013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为4022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4021(context, evt)
	-- 判断是gadgetid 4019 option_id 7
	if 4019 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4021(context, evt)
	-- 删除指定group： 220102004 ；指定config：4019；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220102004, 4019, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220102004中， configid为4010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102004, 4010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220102003, monsters = {}, gadgets = {3024} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为4011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 4019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4023(context, evt)
	if evt.param1 ~= 4023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4023(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220102004, monsters = {}, gadgets = {4022} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为4024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4025(context, evt)
	if evt.param1 ~= 4025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4025(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220102004, monsters = {}, gadgets = {4024} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为4015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end