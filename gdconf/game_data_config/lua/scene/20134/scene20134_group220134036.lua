-- 基础信息
local base_info = {
	group_id = 220134036
}

-- DEFS_MISCS
local defs = {
    --控制星空灯
    control = { group_id = 220134042, config_id = 42001, light_index = 5, giving_gadget = 36001,}
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
	{ config_id = 36001, gadget_id = 70310269, pos = { x = 508.152, y = 612.254, z = -1583.945 }, rot = { x = 0.000, y = 53.721, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036002, name = "GROUP_LOAD_36002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_36002", trigger_count = 0 },
	{ config_id = 1036003, name = "VARIABLE_CHANGE_36003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36003", action = "action_EVENT_VARIABLE_CHANGE_36003", trigger_count = 0 },
	{ config_id = 1036004, name = "VARIABLE_CHANGE_36004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36004", action = "action_EVENT_VARIABLE_CHANGE_36004", trigger_count = 0 },
	{ config_id = 1036005, name = "VARIABLE_CHANGE_36005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36005", action = "action_EVENT_VARIABLE_CHANGE_36005", trigger_count = 0 },
	{ config_id = 1036006, name = "VARIABLE_CHANGE_36006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36006", action = "action_EVENT_VARIABLE_CHANGE_36006", trigger_count = 0 },
	{ config_id = 1036007, name = "VARIABLE_CHANGE_36007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36007", action = "action_EVENT_VARIABLE_CHANGE_36007", trigger_count = 0 },
	{ config_id = 1036008, name = "VARIABLE_CHANGE_36008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36008", action = "action_EVENT_VARIABLE_CHANGE_36008", trigger_count = 0 },
	{ config_id = 1036009, name = "VARIABLE_CHANGE_36009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36009", action = "action_EVENT_VARIABLE_CHANGE_36009", trigger_count = 0 },
	{ config_id = 1036010, name = "VARIABLE_CHANGE_36010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36010", action = "action_EVENT_VARIABLE_CHANGE_36010", trigger_count = 0 },
	{ config_id = 1036011, name = "VARIABLE_CHANGE_36011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36011", action = "action_EVENT_VARIABLE_CHANGE_36011", trigger_count = 0 },
	{ config_id = 1036012, name = "VARIABLE_CHANGE_36012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36012", action = "action_EVENT_VARIABLE_CHANGE_36012", trigger_count = 0 },
	-- 镜头
	{ config_id = 1036013, name = "VARIABLE_CHANGE_36013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36013", action = "action_EVENT_VARIABLE_CHANGE_36013", trigger_count = 0 }
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
		gadgets = { 36001 },
		regions = { },
		triggers = { "GROUP_LOAD_36002", "VARIABLE_CHANGE_36003", "VARIABLE_CHANGE_36004", "VARIABLE_CHANGE_36005", "VARIABLE_CHANGE_36006", "VARIABLE_CHANGE_36007", "VARIABLE_CHANGE_36008", "VARIABLE_CHANGE_36009", "VARIABLE_CHANGE_36010", "VARIABLE_CHANGE_36011", "VARIABLE_CHANGE_36012", "VARIABLE_CHANGE_36013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_36002(context, evt)
			ScriptLib.ActiveGadgetItemGiving(context, 10000105, 220134036, 36001)
		
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101801
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101801 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101802
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101802 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101803
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101803 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101804
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101804 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101805
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101805 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36007(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 5 }) 
	if  ScriptLib.GetGroupVariableValueByGroup(context, "given_item", 220134037) == 101806 then
	
	ScriptLib.RefreshGroup(context, { group_id = 220134020, suite = 2 }) 
	ScriptLib.AddQuestProgress(context, "door3complete") 
	ScriptLib.SetGroupVariableValueByGroup(context, "door3", 1, 220134033)
	
	
	    else
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101806
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101806 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101807
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101807 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101808
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101808 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为0
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134020, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "door3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door3", 0, 220134033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"given_item"为101834
	if ScriptLib.GetGroupVariableValue(context, "given_item") ~= 101834 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134024, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为0
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36013(context, evt)
	-- 触发镜头注目，注目位置为坐标（532，636，-1575.7），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=532, y=636, z=-1575.7}
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