-- 基础信息
local base_info = {
	group_id = 133008272
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
	{ config_id = 272001, gadget_id = 70590025, pos = { x = 1149.711, y = 381.614, z = -982.843 }, rot = { x = 349.886, y = 299.963, z = 16.942 }, level = 30, area_id = 10 },
	{ config_id = 272002, gadget_id = 70220046, pos = { x = 1176.882, y = 408.893, z = -1024.399 }, rot = { x = 0.000, y = 339.030, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 272003, gadget_id = 70220046, pos = { x = 1177.728, y = 408.923, z = -1026.067 }, rot = { x = 0.000, y = 162.885, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 272004, gadget_id = 70220046, pos = { x = 1131.745, y = 399.428, z = -1015.307 }, rot = { x = 326.889, y = 89.978, z = 21.100 }, level = 30, area_id = 10 },
	{ config_id = 272005, gadget_id = 70350081, pos = { x = 1132.299, y = 398.579, z = -1015.727 }, rot = { x = 0.000, y = 59.229, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272006, gadget_id = 70360001, pos = { x = 1132.583, y = 399.722, z = -1015.836 }, rot = { x = 338.693, y = 257.825, z = 11.376 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272010, gadget_id = 70690017, pos = { x = 1149.574, y = 381.556, z = -994.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272011, gadget_id = 70350081, pos = { x = 1161.041, y = 399.851, z = -1007.671 }, rot = { x = 28.567, y = 270.250, z = 330.197 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272012, gadget_id = 70350081, pos = { x = 1134.422, y = 399.607, z = -998.031 }, rot = { x = 25.480, y = 36.495, z = 335.396 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272013, gadget_id = 70350081, pos = { x = 1155.009, y = 399.785, z = -979.844 }, rot = { x = 28.592, y = 149.648, z = 332.557 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272014, gadget_id = 70360001, pos = { x = 1154.679, y = 400.492, z = -980.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272015, gadget_id = 70360001, pos = { x = 1160.372, y = 400.486, z = -1006.843 }, rot = { x = 21.099, y = 354.193, z = 6.081 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272016, gadget_id = 70360001, pos = { x = 1135.415, y = 400.362, z = -997.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272024, gadget_id = 70690017, pos = { x = 1149.574, y = 396.255, z = -994.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 272026, gadget_id = 70211111, pos = { x = 1134.663, y = 381.662, z = -997.706 }, rot = { x = 353.538, y = 92.429, z = 5.056 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 272028, gadget_id = 70211111, pos = { x = 1154.348, y = 381.667, z = -982.193 }, rot = { x = 10.506, y = 200.191, z = 21.527 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 272029, gadget_id = 70211111, pos = { x = 1160.584, y = 385.825, z = -1006.883 }, rot = { x = 0.000, y = 324.893, z = 0.000 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 272030, gadget_id = 70590025, pos = { x = 1132.136, y = 407.964, z = -987.507 }, rot = { x = 351.417, y = 65.002, z = 342.251 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272007, name = "ANY_GADGET_DIE_272007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_272007", action = "action_EVENT_ANY_GADGET_DIE_272007" },
	{ config_id = 1272008, name = "GADGET_CREATE_272008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_272008", action = "action_EVENT_GADGET_CREATE_272008", trigger_count = 0 },
	{ config_id = 1272009, name = "SELECT_OPTION_272009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_272009", action = "action_EVENT_SELECT_OPTION_272009" },
	{ config_id = 1272017, name = "GADGET_CREATE_272017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_272017", action = "action_EVENT_GADGET_CREATE_272017", trigger_count = 0 },
	{ config_id = 1272018, name = "GADGET_CREATE_272018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_272018", action = "action_EVENT_GADGET_CREATE_272018", trigger_count = 0 },
	{ config_id = 1272019, name = "GADGET_CREATE_272019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_272019", action = "action_EVENT_GADGET_CREATE_272019", trigger_count = 0 },
	{ config_id = 1272020, name = "SELECT_OPTION_272020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_272020", action = "action_EVENT_SELECT_OPTION_272020" },
	{ config_id = 1272021, name = "SELECT_OPTION_272021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_272021", action = "action_EVENT_SELECT_OPTION_272021" },
	{ config_id = 1272022, name = "SELECT_OPTION_272022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_272022", action = "action_EVENT_SELECT_OPTION_272022" },
	{ config_id = 1272023, name = "VARIABLE_CHANGE_272023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_272023", action = "action_EVENT_VARIABLE_CHANGE_272023" },
	{ config_id = 1272025, name = "ANY_GADGET_DIE_272025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_272025", action = "action_EVENT_ANY_GADGET_DIE_272025" },
	{ config_id = 1272027, name = "ANY_GADGET_DIE_272027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_272027", action = "action_EVENT_ANY_GADGET_DIE_272027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = true },
	{ config_id = 2, name = "killed", value = 0, no_refresh = true }
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
		gadgets = { 272001, 272002, 272003, 272004, 272005, 272030 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_272007", "GADGET_CREATE_272008", "SELECT_OPTION_272009", "GADGET_CREATE_272017", "GADGET_CREATE_272018", "GADGET_CREATE_272019", "SELECT_OPTION_272020", "SELECT_OPTION_272021", "SELECT_OPTION_272022", "VARIABLE_CHANGE_272023", "ANY_GADGET_DIE_272025", "ANY_GADGET_DIE_272027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_272007(context, evt)
	if 272004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_272007(context, evt)
	-- 创建id为272006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_272008(context, evt)
	if 272006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_272008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008272, 272006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_272009(context, evt)
	-- 判断是gadgetid 272006 option_id 7
	if 272006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_272009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为272010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1148，400，-996），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1148, y=400, z=-996}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 272005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_272017(context, evt)
	if 272014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_272017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008272, 272014, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_272018(context, evt)
	if 272015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_272018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008272, 272015, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_272019(context, evt)
	if 272016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_272019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008272, 272016, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_272020(context, evt)
	-- 判断是gadgetid 272014 option_id 7
	if 272014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_272020(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 272013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_272021(context, evt)
	-- 判断是gadgetid 272015 option_id 7
	if 272015 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_272021(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 272011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_272022(context, evt)
	-- 判断是gadgetid 272016 option_id 7
	if 272016 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_272022(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 272012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 272012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_272023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ison"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "ison", 133008272) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_272023(context, evt)
	-- 创建id为272026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为272029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_272025(context, evt)
	if 272002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"killed"为0
	if ScriptLib.GetGroupVariableValue(context, "killed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_272025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "killed" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008051, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_272027(context, evt)
	if 272003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"killed"为0
	if ScriptLib.GetGroupVariableValue(context, "killed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_272027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 272002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "killed" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008051, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end