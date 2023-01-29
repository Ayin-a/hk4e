-- 基础信息
local base_info = {
	group_id = 220138015
}

-- Trigger变量
local defs = {
	rotate_queue = {1,2,3,2}
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
	{ config_id = 15004, gadget_id = 70360002, pos = { x = -15.173, y = -25.279, z = -36.730 }, rot = { x = 0.000, y = 248.516, z = 0.000 }, level = 1 },
	{ config_id = 15005, gadget_id = 70360002, pos = { x = -12.347, y = 9.116, z = -78.934 }, rot = { x = 0.000, y = 265.125, z = 0.000 }, level = 1 },
	{ config_id = 15006, gadget_id = 70360002, pos = { x = 64.855, y = 25.382, z = -4.205 }, rot = { x = 0.000, y = 182.799, z = 0.000 }, level = 1 },
	{ config_id = 15014, gadget_id = 70590071, pos = { x = 27.300, y = -0.749, z = -38.800 }, rot = { x = 0.000, y = 0.034, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 15015, gadget_id = 70310442, pos = { x = 55.756, y = 41.551, z = -39.965 }, rot = { x = 0.000, y = 179.395, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 31 } },
	{ config_id = 15016, gadget_id = 70310385, pos = { x = 38.421, y = 46.455, z = 11.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 15018, gadget_id = 70690011, pos = { x = 54.598, y = 21.393, z = -29.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15023, gadget_id = 70310429, pos = { x = 27.985, y = 48.842, z = 11.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 15027, gadget_id = 70310429, pos = { x = 48.696, y = 48.842, z = 11.109 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 15028, gadget_id = 70240001, pos = { x = 60.241, y = 25.385, z = -6.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015001, name = "VARIABLE_CHANGE_15001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15001", action = "action_EVENT_VARIABLE_CHANGE_15001", trigger_count = 0 },
	{ config_id = 1015002, name = "VARIABLE_CHANGE_15002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15002", action = "action_EVENT_VARIABLE_CHANGE_15002", trigger_count = 0 },
	{ config_id = 1015003, name = "VARIABLE_CHANGE_15003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15003", action = "action_EVENT_VARIABLE_CHANGE_15003", trigger_count = 0 },
	{ config_id = 1015007, name = "GADGET_CREATE_15007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15007", action = "action_EVENT_GADGET_CREATE_15007", trigger_count = 0 },
	{ config_id = 1015008, name = "GADGET_CREATE_15008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15008", action = "action_EVENT_GADGET_CREATE_15008", trigger_count = 0 },
	{ config_id = 1015009, name = "GADGET_CREATE_15009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15009", action = "action_EVENT_GADGET_CREATE_15009", trigger_count = 0 },
	-- 操作最下面操作台
	{ config_id = 1015010, name = "SELECT_OPTION_15010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15010", action = "action_EVENT_SELECT_OPTION_15010", trigger_count = 0 },
	-- 操作中间操作台
	{ config_id = 1015011, name = "SELECT_OPTION_15011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15011", action = "action_EVENT_SELECT_OPTION_15011", trigger_count = 0 },
	-- 操作最上方操作台
	{ config_id = 1015012, name = "SELECT_OPTION_15012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15012", action = "action_EVENT_SELECT_OPTION_15012", trigger_count = 0 },
	{ config_id = 1015013, name = "VARIABLE_CHANGE_15013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15013", action = "action_EVENT_VARIABLE_CHANGE_15013", trigger_count = 0 },
	{ config_id = 1015017, name = "OBSERVATION_POINT_NOTIFY_15017", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_15017", trigger_count = 0 },
	-- 运营埋点-补全物件
	{ config_id = 1015019, name = "GADGET_STATE_CHANGE_15019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15019", action = "action_EVENT_GADGET_STATE_CHANGE_15019", trigger_count = 0 },
	-- 操作最下方镜头
	{ config_id = 1015020, name = "SELECT_OPTION_15020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15020", action = "action_EVENT_SELECT_OPTION_15020" },
	-- 操作最下方镜头
	{ config_id = 1015021, name = "SELECT_OPTION_15021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15021", action = "action_EVENT_SELECT_OPTION_15021" },
	-- 操作最下方镜头
	{ config_id = 1015022, name = "SELECT_OPTION_15022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15022", action = "action_EVENT_SELECT_OPTION_15022" },
	{ config_id = 1015024, name = "OBSERVATION_POINT_NOTIFY_15024", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_15024", trigger_count = 0 },
	{ config_id = 1015025, name = "PLATFORM_ARRIVAL_15025", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_EVENT_PLATFORM_ARRIVAL_15025", trigger_count = 0 },
	{ config_id = 1015026, name = "GROUP_LOAD_15026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_15026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "weizhi1", value = 0, no_refresh = false },
	{ config_id = 2, name = "weizhi2", value = 0, no_refresh = false },
	{ config_id = 3, name = "weizhi3", value = 0, no_refresh = false },
	{ config_id = 4, name = "rotate_index", value = 1, no_refresh = false }
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
		gadgets = { 15004, 15005, 15006, 15014, 15015, 15016, 15018, 15023, 15027, 15028 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_15001", "VARIABLE_CHANGE_15002", "VARIABLE_CHANGE_15003", "GADGET_CREATE_15007", "GADGET_CREATE_15008", "GADGET_CREATE_15009", "SELECT_OPTION_15010", "SELECT_OPTION_15011", "SELECT_OPTION_15012", "VARIABLE_CHANGE_15013", "OBSERVATION_POINT_NOTIFY_15017", "GADGET_STATE_CHANGE_15019", "SELECT_OPTION_15020", "SELECT_OPTION_15021", "SELECT_OPTION_15022", "OBSERVATION_POINT_NOTIFY_15024", "PLATFORM_ARRIVAL_15025", "GROUP_LOAD_15026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"rotate_index"为2
	if ScriptLib.GetGroupVariableValue(context, "rotate_index") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15001(context, evt)
	-- 改变指定group组220138011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138010, 10001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138009, 9001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 15015 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15015, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"rotate_index"为1
	if ScriptLib.GetGroupVariableValue(context, "rotate_index") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15002(context, evt)
	-- 改变指定group组220138009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138010, 10001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138011, 11001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 15015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"rotate_index"为4
	if ScriptLib.GetGroupVariableValue(context, "rotate_index") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15003(context, evt)
	-- 改变指定group组220138011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138010, 10001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138009, 9001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 15015 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15015, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15007(context, evt)
	if 15004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15008(context, evt)
	if 15005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15009(context, evt)
	if 15006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15010(context, evt)
	-- 判断是gadgetid 15004 option_id 31
	if 15004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15010(context, evt)
			local rotate_index = ScriptLib.GetGroupVariableValue(context, "rotate_index")
	
			if rotate_index >= #defs.rotate_queue or rotate_index < 0 then
				rotate_index = 0
			end
			local next_index = rotate_index + 1
			-- 设置移动平台点阵,点阵id为point_array_id
			-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
			-- turn_mode = true/false 开启/关闭
			local tempParam = {route_type = 0, turn_mode = true}
			if 0 ~= ScriptLib.SetPlatformPointArray(context, 15014, 3, {defs.rotate_queue[next_index]}, tempParam) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
			  return -1
			end
			rotate_index = rotate_index + 1
			ScriptLib.SetGroupVariableValue(context, "rotate_index", rotate_index)
	ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, 31)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15011(context, evt)
	-- 判断是gadgetid 15005 option_id 31
	if 15005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15011(context, evt)
			local rotate_index = ScriptLib.GetGroupVariableValue(context, "rotate_index")
	
			if rotate_index >= #defs.rotate_queue or rotate_index < 0 then
				rotate_index = 0
			end
			local next_index = rotate_index + 1
			-- 设置移动平台点阵,点阵id为point_array_id
			-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
			-- turn_mode = true/false 开启/关闭
			local tempParam = {route_type = 0, turn_mode = true}
			if 0 ~= ScriptLib.SetPlatformPointArray(context, 15014, 3, {defs.rotate_queue[next_index]}, tempParam) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
			  return -1
			end
			rotate_index = rotate_index + 1
			ScriptLib.SetGroupVariableValue(context, "rotate_index", rotate_index)
	ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, 31)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15012(context, evt)
	-- 判断是gadgetid 15006 option_id 31
	if 15006 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15012(context, evt)
			local rotate_index = ScriptLib.GetGroupVariableValue(context, "rotate_index")
	
			if rotate_index >= #defs.rotate_queue or rotate_index < 0 then
				rotate_index = 0
			end
			local next_index = rotate_index + 1
			-- 设置移动平台点阵,点阵id为point_array_id
			-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
			-- turn_mode = true/false 开启/关闭
			local tempParam = {route_type = 0, turn_mode = true}
			if 0 ~= ScriptLib.SetPlatformPointArray(context, 15014, 3, {defs.rotate_queue[next_index]}, tempParam) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
			  return -1
			end
			rotate_index = rotate_index + 1
			ScriptLib.SetGroupVariableValue(context, "rotate_index", rotate_index)
	ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, 31)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"rotate_index"为3
	if ScriptLib.GetGroupVariableValue(context, "rotate_index") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15013(context, evt)
	-- 改变指定group组220138010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138010, 10001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138009, 9001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138011, 11001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 15015 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15015, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_15017(context, evt)
	if 15015 == evt.param1 and 404 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,15016, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,15015, GadgetState.ChestOpened)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138015, config_id=15023, entity_type=EntityType.GADGET})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138015, config_id=15027, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15019(context, evt)
	if 15016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15019(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 2, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15020(context, evt)
	-- 判断是gadgetid 15004 option_id 31
	if 15004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15020(context, evt)
	-- 触发镜头注目，注目位置为坐标（-9.28，-17.28，-38.32），持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-9.28, y=-17.28, z=-38.32}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15021(context, evt)
	-- 判断是gadgetid 15005 option_id 31
	if 15005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15021(context, evt)
	-- 触发镜头注目，注目位置为坐标（3.77，19.03，-65.71），持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=3.77, y=19.03, z=-65.71}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15022(context, evt)
	-- 判断是gadgetid 15006 option_id 31
	if 15006 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15022(context, evt)
	-- 触发镜头注目，注目位置为坐标（43.79，34.47，-24.79），持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=43.79, y=34.47, z=-24.79}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_15024(context, evt)
	if 15015 == evt.param1 and 0 == 0 then
		ScriptLib.SetGadgetStateByConfigId(context,15014, GadgetState.ChestOpened)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_15025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220138015, 15004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220138015, 15005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220138015, 15006, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15026(context, evt)
	-- 将本组内变量名为 "rotate_index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rotate_index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组220138009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138010, 10001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220138011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220138011, 11001, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 15015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end