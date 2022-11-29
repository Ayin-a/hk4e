-- 基础信息
local base_info = {
	group_id = 220134008
}

-- DEFS_MISCS
local defs = {
    --控制星空灯
    control = { group_id = 220134042, config_id = 42001, light_index = 2, giving_gadget = 8001,}
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
	{ config_id = 8001, gadget_id = 70310252, pos = { x = 492.203, y = 612.254, z = -1598.556 }, rot = { x = 0.000, y = 225.969, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "GROUP_LOAD_8002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_8002", trigger_count = 0 },
	{ config_id = 1008003, name = "VARIABLE_CHANGE_8003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8003", action = "action_EVENT_VARIABLE_CHANGE_8003", trigger_count = 0 },
	{ config_id = 1008004, name = "VARIABLE_CHANGE_8004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8004", action = "action_EVENT_VARIABLE_CHANGE_8004", trigger_count = 0 },
	{ config_id = 1008005, name = "VARIABLE_CHANGE_8005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8005", action = "action_EVENT_VARIABLE_CHANGE_8005", trigger_count = 0 },
	{ config_id = 1008006, name = "VARIABLE_CHANGE_8006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8006", action = "action_EVENT_VARIABLE_CHANGE_8006", trigger_count = 0 },
	{ config_id = 1008007, name = "VARIABLE_CHANGE_8007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8007", action = "action_EVENT_VARIABLE_CHANGE_8007", trigger_count = 0 },
	{ config_id = 1008008, name = "VARIABLE_CHANGE_8008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8008", action = "action_EVENT_VARIABLE_CHANGE_8008", trigger_count = 0 },
	{ config_id = 1008009, name = "VARIABLE_CHANGE_8009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8009", action = "action_EVENT_VARIABLE_CHANGE_8009", trigger_count = 0 },
	{ config_id = 1008010, name = "VARIABLE_CHANGE_8010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8010", action = "action_EVENT_VARIABLE_CHANGE_8010", trigger_count = 0 },
	{ config_id = 1008011, name = "VARIABLE_CHANGE_8011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8011", action = "action_EVENT_VARIABLE_CHANGE_8011", trigger_count = 0 },
	{ config_id = 1008012, name = "VARIABLE_CHANGE_8012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8012", action = "action_EVENT_VARIABLE_CHANGE_8012", trigger_count = 0 },
	-- 镜头
	{ config_id = 1008013, name = "VARIABLE_CHANGE_8013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8013", action = "action_EVENT_VARIABLE_CHANGE_8013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "camera", value = 0, no_refresh = true }
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
		gadgets = { 8001 },
		regions = { },
		triggers = { "GROUP_LOAD_8002", "VARIABLE_CHANGE_8003", "VARIABLE_CHANGE_8004", "VARIABLE_CHANGE_8005", "VARIABLE_CHANGE_8006", "VARIABLE_CHANGE_8007", "VARIABLE_CHANGE_8008", "VARIABLE_CHANGE_8009", "VARIABLE_CHANGE_8010", "VARIABLE_CHANGE_8011", "VARIABLE_CHANGE_8012", "VARIABLE_CHANGE_8013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_8002(context, evt)
			ScriptLib.ActiveGadgetItemGiving(context, 10000102, 220134008, 8001)
		
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101801
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101801 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101802
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101802 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8004(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 2 }) 
	
		    if  ScriptLib.GetGroupVariableValueByGroup(context, "given_item", 220134001) == 101801 then
	
	ScriptLib.RefreshGroup(context, { group_id = 220134005, suite = 2 }) 
	
	ScriptLib.AddQuestProgress(context, "door1complete") 
	ScriptLib.SetGroupVariableValueByGroup(context, "door1", 1, 220134033)
	
	
	    else
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101803
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101803 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101804
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101804 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101805
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101805 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101806
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101806 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101807
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101807 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101808
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101808 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为0
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "door1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door1", 0, 220134033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101834
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101834 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134026, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为0
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8013(context, evt)
	-- 触发镜头注目，注目位置为坐标（469，634，-1607），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=469, y=634, z=-1607}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/HandleGivingResult"