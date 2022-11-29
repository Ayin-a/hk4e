-- 基础信息
local base_info = {
	group_id = 133008087
}

-- Trigger变量
local defs = {
	group_id = 133008087
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
	{ config_id = 87001, gadget_id = 70230026, pos = { x = 1101.468, y = 384.461, z = -998.087 }, rot = { x = 359.970, y = 89.008, z = 359.518 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87002, gadget_id = 70230008, pos = { x = 1101.622, y = 384.383, z = -996.289 }, rot = { x = 0.000, y = 102.627, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87003, gadget_id = 70230022, pos = { x = 1102.012, y = 384.425, z = -994.322 }, rot = { x = 0.000, y = 112.652, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87004, gadget_id = 70230008, pos = { x = 1102.669, y = 384.490, z = -991.978 }, rot = { x = 0.000, y = 120.837, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87005, gadget_id = 70230017, pos = { x = 1109.850, y = 384.338, z = -989.575 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87006, gadget_id = 70230012, pos = { x = 1111.744, y = 384.125, z = -991.530 }, rot = { x = 0.000, y = 251.060, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87007, gadget_id = 70230018, pos = { x = 1113.677, y = 383.848, z = -994.005 }, rot = { x = 0.000, y = 225.690, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87008, gadget_id = 70230012, pos = { x = 1114.583, y = 383.650, z = -995.817 }, rot = { x = 0.000, y = 214.900, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87009, gadget_id = 70360123, pos = { x = 1102.829, y = 393.270, z = -978.998 }, rot = { x = 354.537, y = 163.555, z = 359.585 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 87013, gadget_id = 70350081, pos = { x = 1109.019, y = 382.536, z = -998.851 }, rot = { x = 358.996, y = 85.995, z = 3.361 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087010, name = "GADGET_STATE_CHANGE_87010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_87010", trigger_count = 0 },
	{ config_id = 1087012, name = "SELECT_OPTION_87012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_87012", action = "action_EVENT_SELECT_OPTION_87012", trigger_count = 0 },
	{ config_id = 1087014, name = "VARIABLE_CHANGE_87014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_87014", action = "action_EVENT_VARIABLE_CHANGE_87014", trigger_count = 0 },
	{ config_id = 1087015, name = "GROUP_LOAD_87015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_87015", action = "action_EVENT_GROUP_LOAD_87015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activateCount", value = 0, no_refresh = true },
	{ config_id = 2, name = "isGearOperated", value = 0, no_refresh = true }
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
		gadgets = { 87001, 87002, 87003, 87004, 87005, 87006, 87007, 87008, 87009, 87013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_87010", "SELECT_OPTION_87012", "VARIABLE_CHANGE_87014", "GROUP_LOAD_87015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87010(context, evt)
	-- 针对当前group内变量名为 "activateCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activateCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_87012(context, evt)
	-- 判断是gadgetid 87013 option_id 7
	if 87013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_87012(context, evt)
	-- 将configid为 87009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 87013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008557, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008523, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除指定group： 133008087 ；指定config：87013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008087, 87013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "isGearOperated" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isGearOperated", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1103，389，-981），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1103, y=389, z=-981}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_87014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activateCount"为8
	if ScriptLib.GetGroupVariableValue(context, "activateCount") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_87014(context, evt)
	-- 将configid为 87013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008087, 87013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_87015(context, evt)
	local sum = 0
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87001) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87002) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87003) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87004) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87005) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87006) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87007) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, 87008) == GadgetState.GearStart then
	sum = sum + 1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "isGearOperated") ~= 1 and sum == 8 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_87015(context, evt)
	-- 将configid为 87013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008087, 87013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end