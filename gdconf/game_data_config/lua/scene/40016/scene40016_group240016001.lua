-- 基础信息
local base_info = {
	group_id = 240016001
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
	{ config_id = 1001, gadget_id = 70360002, pos = { x = -63.529, y = 265.608, z = -74.841 }, rot = { x = 0.000, y = 299.353, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70900051, pos = { x = -55.447, y = 251.944, z = -81.157 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1003, gadget_id = 70900051, pos = { x = -55.994, y = 251.921, z = -89.233 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1004, gadget_id = 70900051, pos = { x = -50.206, y = 251.880, z = -84.573 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1005, gadget_id = 70900051, pos = { x = -48.654, y = 251.860, z = -77.203 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1006, gadget_id = 70900051, pos = { x = -55.995, y = 251.550, z = -95.616 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1007, gadget_id = 70900051, pos = { x = -49.676, y = 251.904, z = -93.088 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1008, gadget_id = 70900051, pos = { x = -43.604, y = 251.869, z = -87.001 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1009, gadget_id = 70900051, pos = { x = -41.665, y = 251.840, z = -80.211 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1010, gadget_id = 70900051, pos = { x = -42.790, y = 251.498, z = -73.077 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1058, gadget_id = 70211011, pos = { x = -60.490, y = 251.944, z = -78.484 }, rot = { x = 0.000, y = 104.168, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 1059, gadget_id = 70690006, pos = { x = -62.130, y = 251.467, z = -66.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001011, name = "GADGET_CREATE_1011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1011", action = "action_EVENT_GADGET_CREATE_1011" },
	{ config_id = 1001012, name = "SELECT_OPTION_1012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1012", action = "action_EVENT_SELECT_OPTION_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "VARIABLE_CHANGE_1013", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_1013", action = "action_EVENT_VARIABLE_CHANGE_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "VARIABLE_CHANGE_1014", event = EventType.EVENT_VARIABLE_CHANGE, source = "type", condition = "condition_EVENT_VARIABLE_CHANGE_1014", action = "action_EVENT_VARIABLE_CHANGE_1014", trigger_count = 0 },
	{ config_id = 1001015, name = "GADGET_STATE_CHANGE_1015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1015", action = "action_EVENT_GADGET_STATE_CHANGE_1015", trigger_count = 0 },
	{ config_id = 1001016, name = "GADGET_STATE_CHANGE_1016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1016", action = "action_EVENT_GADGET_STATE_CHANGE_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "GADGET_STATE_CHANGE_1017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1017", action = "action_EVENT_GADGET_STATE_CHANGE_1017", trigger_count = 0 },
	{ config_id = 1001018, name = "GADGET_STATE_CHANGE_1018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1018", action = "action_EVENT_GADGET_STATE_CHANGE_1018", trigger_count = 0 },
	{ config_id = 1001019, name = "GADGET_STATE_CHANGE_1019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1019", action = "action_EVENT_GADGET_STATE_CHANGE_1019", trigger_count = 0 },
	{ config_id = 1001020, name = "GADGET_STATE_CHANGE_1020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1020", action = "action_EVENT_GADGET_STATE_CHANGE_1020", trigger_count = 0 },
	{ config_id = 1001021, name = "VARIABLE_CHANGE_1021", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "", action = "", trigger_count = 0, tag = "1021" },
	{ config_id = 1001022, name = "GADGET_STATE_CHANGE_1022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1022", action = "action_EVENT_GADGET_STATE_CHANGE_1022", trigger_count = 0 },
	{ config_id = 1001023, name = "GADGET_STATE_CHANGE_1023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1023", action = "action_EVENT_GADGET_STATE_CHANGE_1023", trigger_count = 0 },
	{ config_id = 1001024, name = "CHALLENGE_SUCCESS_1024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1024", trigger_count = 0 },
	{ config_id = 1001025, name = "CHALLENGE_FAIL_1025", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1025", trigger_count = 0 },
	{ config_id = 1001026, name = "SELECT_OPTION_1026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1026", action = "action_EVENT_SELECT_OPTION_1026", trigger_count = 0 },
	{ config_id = 1001027, name = "GADGET_STATE_CHANGE_1027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1027", action = "action_EVENT_GADGET_STATE_CHANGE_1027", trigger_count = 0 },
	{ config_id = 1001028, name = "GADGET_STATE_CHANGE_1028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1028", action = "action_EVENT_GADGET_STATE_CHANGE_1028", trigger_count = 0 },
	{ config_id = 1001029, name = "GADGET_STATE_CHANGE_1029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1029", action = "action_EVENT_GADGET_STATE_CHANGE_1029", trigger_count = 0 },
	{ config_id = 1001030, name = "GADGET_STATE_CHANGE_1030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1030", action = "action_EVENT_GADGET_STATE_CHANGE_1030", trigger_count = 0 },
	{ config_id = 1001031, name = "GADGET_STATE_CHANGE_1031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1031", action = "action_EVENT_GADGET_STATE_CHANGE_1031", trigger_count = 0 },
	{ config_id = 1001032, name = "GADGET_STATE_CHANGE_1032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1032", action = "action_EVENT_GADGET_STATE_CHANGE_1032", trigger_count = 0 },
	{ config_id = 1001033, name = "GADGET_STATE_CHANGE_1033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1033", action = "action_EVENT_GADGET_STATE_CHANGE_1033", trigger_count = 0 },
	{ config_id = 1001034, name = "GADGET_STATE_CHANGE_1034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1034", action = "action_EVENT_GADGET_STATE_CHANGE_1034", trigger_count = 0 },
	{ config_id = 1001035, name = "GADGET_STATE_CHANGE_1035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1035", action = "action_EVENT_GADGET_STATE_CHANGE_1035", trigger_count = 0 },
	{ config_id = 1001036, name = "GADGET_STATE_CHANGE_1036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1036", action = "action_EVENT_GADGET_STATE_CHANGE_1036", trigger_count = 0 },
	{ config_id = 1001037, name = "VARIABLE_CHANGE_1037", event = EventType.EVENT_VARIABLE_CHANGE, source = "type", condition = "condition_EVENT_VARIABLE_CHANGE_1037", action = "action_EVENT_VARIABLE_CHANGE_1037", trigger_count = 0 },
	{ config_id = 1001038, name = "VARIABLE_CHANGE_1038", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_1038", action = "action_EVENT_VARIABLE_CHANGE_1038", trigger_count = 0 },
	{ config_id = 1001039, name = "CHALLENGE_SUCCESS_1039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1039", trigger_count = 0 },
	{ config_id = 1001040, name = "CHALLENGE_FAIL_1040", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1040", trigger_count = 0 },
	{ config_id = 1001041, name = "SELECT_OPTION_1041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1041", action = "action_EVENT_SELECT_OPTION_1041", trigger_count = 0 },
	{ config_id = 1001042, name = "VARIABLE_CHANGE_1042", event = EventType.EVENT_VARIABLE_CHANGE, source = "type", condition = "condition_EVENT_VARIABLE_CHANGE_1042", action = "action_EVENT_VARIABLE_CHANGE_1042", trigger_count = 0 },
	{ config_id = 1001043, name = "VARIABLE_CHANGE_1043", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_1043", action = "action_EVENT_VARIABLE_CHANGE_1043", trigger_count = 0 },
	{ config_id = 1001044, name = "CHALLENGE_SUCCESS_1044", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "102", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1044", trigger_count = 0 },
	{ config_id = 1001045, name = "CHALLENGE_FAIL_1045", event = EventType.EVENT_CHALLENGE_FAIL, source = "102", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1045", trigger_count = 0 },
	{ config_id = 1001046, name = "GADGET_STATE_CHANGE_1046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1046", action = "action_EVENT_GADGET_STATE_CHANGE_1046", trigger_count = 0 },
	{ config_id = 1001047, name = "GADGET_STATE_CHANGE_1047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1047", action = "action_EVENT_GADGET_STATE_CHANGE_1047", trigger_count = 0 },
	{ config_id = 1001048, name = "GADGET_STATE_CHANGE_1048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1048", action = "action_EVENT_GADGET_STATE_CHANGE_1048", trigger_count = 0 },
	{ config_id = 1001049, name = "GADGET_STATE_CHANGE_1049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1049", action = "action_EVENT_GADGET_STATE_CHANGE_1049", trigger_count = 0 },
	{ config_id = 1001050, name = "GADGET_STATE_CHANGE_1050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1050", action = "action_EVENT_GADGET_STATE_CHANGE_1050", trigger_count = 0 },
	{ config_id = 1001051, name = "GADGET_STATE_CHANGE_1051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1051", action = "action_EVENT_GADGET_STATE_CHANGE_1051", trigger_count = 0 },
	{ config_id = 1001052, name = "GADGET_STATE_CHANGE_1052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1052", action = "action_EVENT_GADGET_STATE_CHANGE_1052", trigger_count = 0 },
	{ config_id = 1001053, name = "GADGET_STATE_CHANGE_1053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1053", action = "action_EVENT_GADGET_STATE_CHANGE_1053", trigger_count = 0 },
	{ config_id = 1001054, name = "GADGET_STATE_CHANGE_1054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1054", action = "action_EVENT_GADGET_STATE_CHANGE_1054", trigger_count = 0 },
	{ config_id = 1001055, name = "GADGET_STATE_CHANGE_1055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1055", action = "action_EVENT_GADGET_STATE_CHANGE_1055", trigger_count = 0 },
	{ config_id = 1001056, name = "GADGET_STATE_CHANGE_1056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1056", action = "action_EVENT_GADGET_STATE_CHANGE_1056", trigger_count = 0 },
	{ config_id = 1001057, name = "GADGET_STATE_CHANGE_1057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1057", action = "action_EVENT_GADGET_STATE_CHANGE_1057", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "type", value = 0, no_refresh = false },
	{ config_id = 2, name = "count", value = 0, no_refresh = false },
	{ config_id = 3, name = "step", value = 0, no_refresh = true }
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1015", "GADGET_STATE_CHANGE_1018", "GADGET_STATE_CHANGE_1027", "GADGET_STATE_CHANGE_1032", "GADGET_STATE_CHANGE_1046", "GADGET_STATE_CHANGE_1052" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1016", "GADGET_STATE_CHANGE_1019", "GADGET_STATE_CHANGE_1028", "GADGET_STATE_CHANGE_1033", "GADGET_STATE_CHANGE_1047", "GADGET_STATE_CHANGE_1053" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1017", "GADGET_STATE_CHANGE_1020", "GADGET_STATE_CHANGE_1029", "GADGET_STATE_CHANGE_1034", "GADGET_STATE_CHANGE_1048", "GADGET_STATE_CHANGE_1054" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1022", "GADGET_STATE_CHANGE_1023", "GADGET_STATE_CHANGE_1030", "GADGET_STATE_CHANGE_1035", "GADGET_STATE_CHANGE_1049", "GADGET_STATE_CHANGE_1055" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1031", "GADGET_STATE_CHANGE_1036", "GADGET_STATE_CHANGE_1050", "GADGET_STATE_CHANGE_1056" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1051", "GADGET_STATE_CHANGE_1057" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1058 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1059 },
		regions = { },
		triggers = { "GADGET_CREATE_1011", "SELECT_OPTION_1012", "VARIABLE_CHANGE_1013", "VARIABLE_CHANGE_1014", "VARIABLE_CHANGE_1021", "CHALLENGE_SUCCESS_1024", "CHALLENGE_FAIL_1025", "SELECT_OPTION_1026", "VARIABLE_CHANGE_1037", "VARIABLE_CHANGE_1038", "CHALLENGE_SUCCESS_1039", "CHALLENGE_FAIL_1040", "SELECT_OPTION_1041", "VARIABLE_CHANGE_1042", "VARIABLE_CHANGE_1043", "CHALLENGE_SUCCESS_1044", "CHALLENGE_FAIL_1045" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1011(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1012(context, evt)
	-- 判断是gadgetid 1001 option_id 177
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"step"为0
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1012(context, evt)
	-- 删除指定group： 240016001 ；指定config：1001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240016001, 1001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-48，251，-80），持续时间为9秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-48, y=251, z=-80}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 9, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1013(context, evt)
	-- 终止识别id为100的挑战，并判定成功
		ScriptLib.StopChallenge(context, 100, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1014(context, evt)
	-- 创建编号为100（该挑战的识别id),挑战内容为50的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 50, 100, 3, 1021, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1015(context, evt)
	if 1002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1015(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1016(context, evt)
	if 1006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1016(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1017(context, evt)
	if 1010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1017(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1018(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 1002 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1018(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1019(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 1006 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1019(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1020(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 1010 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1020(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1022(context, evt)
	if 1004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1022(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1023(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 1004 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1023(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1024(context, evt)
	-- 针对当前group内变量名为 "step" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "step", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1026(context, evt)
	-- 判断是gadgetid 1001 option_id 177
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"step"为1
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1026(context, evt)
	-- 删除指定group： 240016001 ；指定config：1001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240016001, 1001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-48，251，-80），持续时间为13秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-48, y=251, z=-80}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 13, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1027(context, evt)
	if 1007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1027(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1028(context, evt)
	if 1005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1028(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1029(context, evt)
	if 1008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1029(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1030(context, evt)
	if 1009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1030(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1031(context, evt)
	if 1002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1031(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1032(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 1007 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1032(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1033(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 1005 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1033(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1034(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 1008 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1034(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1035(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 1009 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1035(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1036(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 1002 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1036(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1037(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为50的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 50, 100, 3, 1021, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1038(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1039(context, evt)
	-- 针对当前group内变量名为 "step" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "step", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1040(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1041(context, evt)
	-- 判断是gadgetid 1001 option_id 177
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"step"为2
	if ScriptLib.GetGroupVariableValue(context, "step") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1041(context, evt)
	-- 删除指定group： 240016001 ；指定config：1001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240016001, 1001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-48，251，-80），持续时间为15秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-48, y=251, z=-80}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 15, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1042(context, evt)
	-- 创建编号为102（该挑战的识别id),挑战内容为50的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 102, 50, 100, 3, 1021, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为6
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 6 then
			return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1043(context, evt)
	-- 终止识别id为102的挑战，并判定成功
		ScriptLib.StopChallenge(context, 102, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 8)
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 240016007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1045(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1046(context, evt)
	if 1002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1046(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1047(context, evt)
	if 1008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1047(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1048(context, evt)
	if 1007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1048(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1049(context, evt)
	if 1004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1049(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1050(context, evt)
	if 1010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1050(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1051(context, evt)
	if 1009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1051(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1052(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 1002 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1052(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1053(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 1008 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1053(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1054(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 1007 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1054(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1055(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 1004 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1055(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1056(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 1010 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1056(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1057(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 1009 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1057(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end