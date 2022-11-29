-- 基础信息
local base_info = {
	group_id = 201016002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010401, pos = { x = 141.545, y = 9.530, z = -60.100 }, rot = { x = 0.000, y = 63.014, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2002, monster_id = 21010401, pos = { x = 141.683, y = 10.000, z = -36.600 }, rot = { x = 0.000, y = 122.998, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2003, monster_id = 21010901, pos = { x = 141.517, y = 9.500, z = -60.100 }, rot = { x = 0.000, y = 90.064, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2004, monster_id = 21011001, pos = { x = 141.683, y = 10.000, z = -36.600 }, rot = { x = 0.000, y = 85.594, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2005, monster_id = 21011001, pos = { x = 141.812, y = 11.178, z = -48.959 }, rot = { x = 0.000, y = 89.085, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2006, monster_id = 21011001, pos = { x = 141.830, y = 11.200, z = -49.000 }, rot = { x = 0.000, y = 93.800, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2007, monster_id = 20010801, pos = { x = 147.212, y = 4.656, z = -57.335 }, rot = { x = 0.000, y = 87.427, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 20010501, pos = { x = 147.228, y = 4.667, z = -40.983 }, rot = { x = 0.000, y = 98.118, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2009, gadget_id = 70380001, pos = { x = 126.795, y = 8.301, z = -27.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1016004, start_route = false },
	{ config_id = 2010, gadget_id = 70690007, pos = { x = 165.743, y = 4.630, z = -24.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70360002, pos = { x = 154.806, y = 4.630, z = -47.607 }, rot = { x = 0.000, y = 85.535, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2012, gadget_id = 70380001, pos = { x = 128.487, y = 12.430, z = -70.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1016009, start_route = false },
	{ config_id = 2013, gadget_id = 70220005, pos = { x = 141.229, y = 9.530, z = -58.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220005, pos = { x = 138.159, y = 9.530, z = -60.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220005, pos = { x = 138.895, y = 9.964, z = -35.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220005, pos = { x = 141.844, y = 9.987, z = -38.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220005, pos = { x = 141.836, y = 11.186, z = -47.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220005, pos = { x = 141.836, y = 11.186, z = -50.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220005, pos = { x = 137.965, y = 9.493, z = -61.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70220005, pos = { x = 139.367, y = 9.959, z = -34.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70900201, pos = { x = 165.294, y = 9.504, z = -24.352 }, rot = { x = 0.000, y = 354.603, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000007, name = "VARIABLE_CHANGE_7", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7", action = "action_EVENT_VARIABLE_CHANGE_7" },
	{ config_id = 1000026, name = "ANY_MONSTER_DIE_26", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26", action = "action_EVENT_ANY_MONSTER_DIE_26", trigger_count = 4 },
	{ config_id = 1000027, name = "ANY_MONSTER_DIE_27", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27", action = "action_EVENT_ANY_MONSTER_DIE_27", trigger_count = 4 },
	{ config_id = 1000028, name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28", trigger_count = 4 },
	{ config_id = 1000029, name = "ANY_MONSTER_DIE_29", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29", action = "action_EVENT_ANY_MONSTER_DIE_29", trigger_count = 4 },
	{ config_id = 1000030, name = "ANY_MONSTER_DIE_30", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30", action = "action_EVENT_ANY_MONSTER_DIE_30", trigger_count = 4 },
	{ config_id = 1000031, name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31", trigger_count = 4 },
	{ config_id = 1000032, name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32", trigger_count = 4 },
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33", trigger_count = 4 },
	{ config_id = 1000034, name = "VARIABLE_CHANGE_34", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34", action = "action_EVENT_VARIABLE_CHANGE_34", trigger_count = 4 },
	{ config_id = 1000036, name = "SELECT_OPTION_36", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36", action = "action_EVENT_SELECT_OPTION_36", forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 1,
	rand_suite = true
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
		monsters = { 2001, 2002, 2005 },
		gadgets = { 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7", "ANY_MONSTER_DIE_26", "ANY_MONSTER_DIE_27", "ANY_MONSTER_DIE_28", "ANY_MONSTER_DIE_29", "ANY_MONSTER_DIE_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "VARIABLE_CHANGE_34", "SELECT_OPTION_36" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Key"为8
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7(context, evt)
	-- 将configid为 2011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201016002, 2011, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	if 2005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29(context, evt)
	if 2003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30(context, evt)
	if 2004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 2006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 2007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2006, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2007, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2008, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36(context, evt)
	-- 判断是gadgetid 2011 option_id 2
	if 2011 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36(context, evt)
	-- 解锁目标1
	if 0 ~= ScriptLib.UnlockForce(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（165，6，-24），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=165, y=6, z=-24}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 删除指定group： 201016002 ；指定config：2011；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201016002, 2011, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201016008, 2)
	
	return 0
end