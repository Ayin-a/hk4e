-- 基础信息
local base_info = {
	group_id = 133210511
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1511001, name = "VARIABLE_CHANGE_511001", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue1", condition = "condition_EVENT_VARIABLE_CHANGE_511001", action = "action_EVENT_VARIABLE_CHANGE_511001" },
	{ config_id = 1511002, name = "VARIABLE_CHANGE_511002", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue2", condition = "condition_EVENT_VARIABLE_CHANGE_511002", action = "action_EVENT_VARIABLE_CHANGE_511002" },
	{ config_id = 1511003, name = "VARIABLE_CHANGE_511003", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue3", condition = "condition_EVENT_VARIABLE_CHANGE_511003", action = "action_EVENT_VARIABLE_CHANGE_511003" },
	{ config_id = 1511004, name = "VARIABLE_CHANGE_511004", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue4", condition = "condition_EVENT_VARIABLE_CHANGE_511004", action = "action_EVENT_VARIABLE_CHANGE_511004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Statue1", value = 0, no_refresh = true },
	{ config_id = 2, name = "Statue2", value = 0, no_refresh = true },
	{ config_id = 3, name = "Statue3", value = 0, no_refresh = true },
	{ config_id = 4, name = "Statue4", value = 0, no_refresh = true }
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
function condition_EVENT_VARIABLE_CHANGE_511001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue1"为1
	if ScriptLib.GetGroupVariableValue(context, "Statue1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_511001(context, evt)
	-- 触发镜头注目，注目位置为坐标（-3808.748，149.5，-1094.986），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3808.748, y=149.5, z=-1094.986}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_511002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue2"为1
	if ScriptLib.GetGroupVariableValue(context, "Statue2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_511002(context, evt)
	-- 触发镜头注目，注目位置为坐标（-3754.021，149.5，-1099.194），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3754.021, y=149.5, z=-1099.194}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_511003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue3"为1
	if ScriptLib.GetGroupVariableValue(context, "Statue3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_511003(context, evt)
	-- 触发镜头注目，注目位置为坐标（-3753.264，149.5，-1130.336），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3753.264, y=149.5, z=-1130.336}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_511004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue4"为1
	if ScriptLib.GetGroupVariableValue(context, "Statue4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_511004(context, evt)
	-- 触发镜头注目，注目位置为坐标（-3795.85，149.5，-1125.29），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3795.85, y=149.5, z=-1125.29}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end