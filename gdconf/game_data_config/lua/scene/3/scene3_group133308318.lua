-- 基础信息
local base_info = {
	group_id = 133308318
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
	{ config_id = 318001, gadget_id = 70330341, pos = { x = -2347.090, y = 88.377, z = 4405.209 }, rot = { x = 88.040, y = 313.542, z = 177.367 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 318002, gadget_id = 70330416, pos = { x = -2344.310, y = 85.281, z = 4410.529 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 318003, gadget_id = 70330416, pos = { x = -2352.755, y = 85.281, z = 4419.233 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 318004, gadget_id = 70330416, pos = { x = -2361.202, y = 85.281, z = 4427.733 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 318005, gadget_id = 70330416, pos = { x = -2369.572, y = 85.195, z = 4436.172 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1318006, name = "GROUP_LOAD_318006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_318006", action = "action_EVENT_GROUP_LOAD_318006", trigger_count = 0 },
	{ config_id = 1318007, name = "TIME_AXIS_PASS_318007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_318007", action = "action_EVENT_TIME_AXIS_PASS_318007", trigger_count = 0 },
	{ config_id = 1318008, name = "GADGET_CREATE_318008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_318008", action = "action_EVENT_GADGET_CREATE_318008", trigger_count = 0 },
	{ config_id = 1318009, name = "SELECT_OPTION_318009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_318009", action = "action_EVENT_SELECT_OPTION_318009", trigger_count = 0 },
	{ config_id = 1318010, name = "TIME_AXIS_PASS_318010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_318010", action = "action_EVENT_TIME_AXIS_PASS_318010", trigger_count = 0 },
	{ config_id = 1318011, name = "TIME_AXIS_PASS_318011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_318011", action = "action_EVENT_TIME_AXIS_PASS_318011", trigger_count = 0 },
	{ config_id = 1318012, name = "TIME_AXIS_PASS_318012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_318012", action = "action_EVENT_TIME_AXIS_PASS_318012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 318001, 318002, 318003, 318004, 318005 },
		regions = { },
		triggers = { "GROUP_LOAD_318006", "TIME_AXIS_PASS_318007", "GADGET_CREATE_318008", "SELECT_OPTION_318009", "TIME_AXIS_PASS_318010", "TIME_AXIS_PASS_318011", "TIME_AXIS_PASS_318012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_318006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_318006(context, evt)
	-- 将configid为 318001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 318002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 318003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 318004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 318005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_318007(context, evt)
	if "opendoor" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_318007(context, evt)
	-- 将configid为 318002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_318008(context, evt)
	if 318001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_318008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308318, 318001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_318009(context, evt)
	-- 判断是gadgetid 318001 option_id 7
	if 318001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_318009(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 318001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308318 ；指定config：318001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308318, 318001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"opendoor"，时间节点为{1,3,5,7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "opendoor", {1,3,5,7}, false)
	
	
	-- 触发镜头注目，注目位置为坐标{x=-2344.31, y=85.28073, z=4410.529}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2344.31, y=85.28073, z=4410.529}
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
function condition_EVENT_TIME_AXIS_PASS_318010(context, evt)
	if "opendoor" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_318010(context, evt)
	-- 将configid为 318003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_318011(context, evt)
	if "opendoor" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_318011(context, evt)
	-- 将configid为 318004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_318012(context, evt)
	if "opendoor" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_318012(context, evt)
	-- 将configid为 318005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"opendoor"的时间轴
	ScriptLib.EndTimeAxis(context, "opendoor")
	
	
	return 0
end