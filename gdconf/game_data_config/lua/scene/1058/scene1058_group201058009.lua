-- 基础信息
local base_info = {
	group_id = 201058009
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
	{ config_id = 9001, gadget_id = 70360002, pos = { x = -147.209, y = 104.203, z = 110.313 }, rot = { x = 0.000, y = 224.255, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70900007, pos = { x = -144.457, y = 101.701, z = 124.650 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 9003, gadget_id = 70900007, pos = { x = -140.135, y = 101.707, z = 124.084 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 9004, gadget_id = 70900007, pos = { x = -136.492, y = 101.729, z = 121.496 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 9005, gadget_id = 70900007, pos = { x = -133.860, y = 101.701, z = 117.543 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 9006, gadget_id = 70900007, pos = { x = -133.869, y = 101.706, z = 112.994 }, rot = { x = 0.000, y = 32.393, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 9007, gadget_id = 70211102, pos = { x = -147.093, y = 104.171, z = 105.641 }, rot = { x = 0.000, y = 350.291, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 9008, gadget_id = 70211112, pos = { x = -149.759, y = 104.189, z = 106.127 }, rot = { x = 0.000, y = 31.198, z = 0.000 }, level = 11, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 9009, gadget_id = 70211132, pos = { x = -151.293, y = 104.215, z = 108.225 }, rot = { x = 0.000, y = 94.291, z = 0.000 }, level = 11, drop_tag = "解谜超级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 9011, gadget_id = 70900201, pos = { x = -147.251, y = 105.209, z = 110.276 }, rot = { x = 0.000, y = 104.168, z = 0.000 }, level = 1, showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009010, name = "SELECT_OPTION_9010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9010", action = "action_EVENT_SELECT_OPTION_9010", trigger_count = 0 },
	{ config_id = 1009012, name = "GADGET_CREATE_9012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9012", action = "action_EVENT_GADGET_CREATE_9012" },
	{ config_id = 1009013, name = "GADGET_CREATE_9013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9013", action = "action_EVENT_GADGET_CREATE_9013" },
	{ config_id = 1009014, name = "SELECT_OPTION_9014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9014", action = "action_EVENT_SELECT_OPTION_9014", trigger_count = 0 },
	{ config_id = 1009015, name = "VARIABLE_CHANGE_9015", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_9015", action = "action_EVENT_VARIABLE_CHANGE_9015", trigger_count = 0 },
	{ config_id = 1009016, name = "VARIABLE_CHANGE_9016", event = EventType.EVENT_VARIABLE_CHANGE, source = "type", condition = "condition_EVENT_VARIABLE_CHANGE_9016", action = "action_EVENT_VARIABLE_CHANGE_9016", trigger_count = 0 },
	{ config_id = 1009017, name = "GADGET_STATE_CHANGE_9017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9017", action = "action_EVENT_GADGET_STATE_CHANGE_9017", trigger_count = 0 },
	{ config_id = 1009018, name = "GADGET_STATE_CHANGE_9018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9018", action = "action_EVENT_GADGET_STATE_CHANGE_9018", trigger_count = 0 },
	{ config_id = 1009019, name = "GADGET_STATE_CHANGE_9019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9019", action = "action_EVENT_GADGET_STATE_CHANGE_9019", trigger_count = 0 },
	{ config_id = 1009020, name = "GADGET_STATE_CHANGE_9020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9020", action = "action_EVENT_GADGET_STATE_CHANGE_9020", trigger_count = 0 },
	{ config_id = 1009021, name = "GADGET_STATE_CHANGE_9021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9021", action = "action_EVENT_GADGET_STATE_CHANGE_9021", trigger_count = 0 },
	{ config_id = 1009022, name = "GADGET_STATE_CHANGE_9022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9022", action = "action_EVENT_GADGET_STATE_CHANGE_9022", trigger_count = 0 },
	{ config_id = 1009023, name = "VARIABLE_CHANGE_9023", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "", action = "", trigger_count = 0, tag = "1021" },
	{ config_id = 1009026, name = "CHALLENGE_SUCCESS_9026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9026", trigger_count = 0 },
	{ config_id = 1009027, name = "CHALLENGE_FAIL_9027", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9027", trigger_count = 0 },
	{ config_id = 1009028, name = "SELECT_OPTION_9028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9028", action = "action_EVENT_SELECT_OPTION_9028", trigger_count = 0 },
	{ config_id = 1009029, name = "GADGET_STATE_CHANGE_9029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9029", action = "action_EVENT_GADGET_STATE_CHANGE_9029", trigger_count = 0 },
	{ config_id = 1009030, name = "GADGET_STATE_CHANGE_9030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9030", action = "action_EVENT_GADGET_STATE_CHANGE_9030", trigger_count = 0 },
	{ config_id = 1009031, name = "GADGET_STATE_CHANGE_9031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9031", action = "action_EVENT_GADGET_STATE_CHANGE_9031", trigger_count = 0 },
	{ config_id = 1009032, name = "GADGET_STATE_CHANGE_9032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9032", action = "action_EVENT_GADGET_STATE_CHANGE_9032", trigger_count = 0 },
	{ config_id = 1009034, name = "GADGET_STATE_CHANGE_9034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9034", action = "action_EVENT_GADGET_STATE_CHANGE_9034", trigger_count = 0 },
	{ config_id = 1009035, name = "GADGET_STATE_CHANGE_9035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9035", action = "action_EVENT_GADGET_STATE_CHANGE_9035", trigger_count = 0 },
	{ config_id = 1009036, name = "GADGET_STATE_CHANGE_9036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9036", action = "action_EVENT_GADGET_STATE_CHANGE_9036", trigger_count = 0 },
	{ config_id = 1009037, name = "GADGET_STATE_CHANGE_9037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9037", action = "action_EVENT_GADGET_STATE_CHANGE_9037", trigger_count = 0 },
	{ config_id = 1009039, name = "VARIABLE_CHANGE_9039", event = EventType.EVENT_VARIABLE_CHANGE, source = "type", condition = "condition_EVENT_VARIABLE_CHANGE_9039", action = "action_EVENT_VARIABLE_CHANGE_9039", trigger_count = 0 },
	{ config_id = 1009040, name = "VARIABLE_CHANGE_9040", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_9040", action = "action_EVENT_VARIABLE_CHANGE_9040", trigger_count = 0 },
	{ config_id = 1009041, name = "CHALLENGE_SUCCESS_9041", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9041", trigger_count = 0 },
	{ config_id = 1009042, name = "CHALLENGE_FAIL_9042", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9042", trigger_count = 0 },
	{ config_id = 1009043, name = "SELECT_OPTION_9043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9043", action = "action_EVENT_SELECT_OPTION_9043", trigger_count = 0 },
	{ config_id = 1009044, name = "VARIABLE_CHANGE_9044", event = EventType.EVENT_VARIABLE_CHANGE, source = "type", condition = "condition_EVENT_VARIABLE_CHANGE_9044", action = "action_EVENT_VARIABLE_CHANGE_9044", trigger_count = 0 },
	{ config_id = 1009045, name = "VARIABLE_CHANGE_9045", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_9045", action = "action_EVENT_VARIABLE_CHANGE_9045", trigger_count = 0 },
	{ config_id = 1009046, name = "CHALLENGE_SUCCESS_9046", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "102", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9046", trigger_count = 0 },
	{ config_id = 1009047, name = "CHALLENGE_FAIL_9047", event = EventType.EVENT_CHALLENGE_FAIL, source = "102", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9047", trigger_count = 0 },
	{ config_id = 1009048, name = "GADGET_STATE_CHANGE_9048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9048", action = "action_EVENT_GADGET_STATE_CHANGE_9048", trigger_count = 0 },
	{ config_id = 1009049, name = "GADGET_STATE_CHANGE_9049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9049", action = "action_EVENT_GADGET_STATE_CHANGE_9049", trigger_count = 0 },
	{ config_id = 1009050, name = "GADGET_STATE_CHANGE_9050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9050", action = "action_EVENT_GADGET_STATE_CHANGE_9050", trigger_count = 0 },
	{ config_id = 1009051, name = "GADGET_STATE_CHANGE_9051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9051", action = "action_EVENT_GADGET_STATE_CHANGE_9051", trigger_count = 0 },
	{ config_id = 1009052, name = "GADGET_STATE_CHANGE_9052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9052", action = "action_EVENT_GADGET_STATE_CHANGE_9052", trigger_count = 0 },
	{ config_id = 1009054, name = "GADGET_STATE_CHANGE_9054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9054", action = "action_EVENT_GADGET_STATE_CHANGE_9054", trigger_count = 0 },
	{ config_id = 1009055, name = "GADGET_STATE_CHANGE_9055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9055", action = "action_EVENT_GADGET_STATE_CHANGE_9055", trigger_count = 0 },
	{ config_id = 1009056, name = "GADGET_STATE_CHANGE_9056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9056", action = "action_EVENT_GADGET_STATE_CHANGE_9056", trigger_count = 0 },
	{ config_id = 1009057, name = "GADGET_STATE_CHANGE_9057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9057", action = "action_EVENT_GADGET_STATE_CHANGE_9057", trigger_count = 0 },
	{ config_id = 1009058, name = "GADGET_STATE_CHANGE_9058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9058", action = "action_EVENT_GADGET_STATE_CHANGE_9058", trigger_count = 0 }
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
		gadgets = { 9001 },
		regions = { },
		triggers = { "SELECT_OPTION_9010", "GADGET_CREATE_9013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9017", "GADGET_STATE_CHANGE_9020", "GADGET_STATE_CHANGE_9029", "GADGET_STATE_CHANGE_9034", "GADGET_STATE_CHANGE_9048", "GADGET_STATE_CHANGE_9054" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9018", "GADGET_STATE_CHANGE_9021", "GADGET_STATE_CHANGE_9030", "GADGET_STATE_CHANGE_9035", "GADGET_STATE_CHANGE_9049", "GADGET_STATE_CHANGE_9055" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9019", "GADGET_STATE_CHANGE_9022", "GADGET_STATE_CHANGE_9031", "GADGET_STATE_CHANGE_9036", "GADGET_STATE_CHANGE_9050", "GADGET_STATE_CHANGE_9056" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9032", "GADGET_STATE_CHANGE_9037", "GADGET_STATE_CHANGE_9051", "GADGET_STATE_CHANGE_9057" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9052", "GADGET_STATE_CHANGE_9058" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 9011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 原Suite1,
		monsters = { },
		gadgets = { 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_9015", "VARIABLE_CHANGE_9016", "VARIABLE_CHANGE_9023", "CHALLENGE_SUCCESS_9026", "CHALLENGE_FAIL_9027", "SELECT_OPTION_9028", "VARIABLE_CHANGE_9039", "VARIABLE_CHANGE_9040", "CHALLENGE_SUCCESS_9041", "CHALLENGE_FAIL_9042", "SELECT_OPTION_9043", "VARIABLE_CHANGE_9044", "VARIABLE_CHANGE_9045", "CHALLENGE_SUCCESS_9046", "CHALLENGE_FAIL_9047" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_9010(context, evt)
	-- 判断是gadgetid 9001 option_id 2
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058005, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201058004, 2)
	
	-- 触发镜头注目，注目位置为坐标（-76，84，190），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-76, y=84, z=190}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058016, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201058009, 8)
	
	-- 删除指定group： 201058009 ；指定config：9001；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058009, 9001, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9012(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9013(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9014(context, evt)
	-- 判断是gadgetid 9001 option_id 177
	if 9001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_9014(context, evt)
	-- 删除指定group： 201058009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-136，101，121），持续时间为8秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-136, y=101, z=121}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 8, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9015(context, evt)
	-- 终止识别id为100的挑战，并判定成功
		ScriptLib.StopChallenge(context, 100, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9016(context, evt)
	-- 创建编号为100（该挑战的识别id),挑战内容为50的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 50, 100, 3, 1021, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9017(context, evt)
	if 9002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9017(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9018(context, evt)
	if 9006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9018(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9019(context, evt)
	if 9005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9019(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9020(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 9002 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9020(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9021(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 9006 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9021(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9022(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 1 then
			return false
	end
	
	
	if 9005 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9022(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9026(context, evt)
	-- 针对当前group内变量名为 "step" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "step", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为9011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 9007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为9011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10520401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10520401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9028(context, evt)
	-- 判断是gadgetid 9001 option_id 177
	if 9001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_9028(context, evt)
	-- 删除指定group： 201058009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-136，101，121），持续时间为11秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-136, y=101, z=121}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 11, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9029(context, evt)
	if 9004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9029(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9030(context, evt)
	if 9006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9030(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9031(context, evt)
	if 9002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9031(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9032(context, evt)
	if 9005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9032(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9034(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 9004 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9034(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9035(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 9006 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9035(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9036(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 9002 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9036(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9037(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	
	if 9005 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9037(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9039(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为50的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 50, 100, 3, 1021, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	-- 判断变量"type"为2
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9040(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9041(context, evt)
	-- 针对当前group内变量名为 "step" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "step", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为9011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 9008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9042(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为9011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10520401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10520401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9043(context, evt)
	-- 判断是gadgetid 9001 option_id 177
	if 9001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_9043(context, evt)
	-- 删除指定group： 201058009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-136，101，121），持续时间为13秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-136, y=101, z=121}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 13, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9044(context, evt)
	-- 创建编号为102（该挑战的识别id),挑战内容为50的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 102, 50, 100, 3, 1021, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9045(context, evt)
	-- 终止识别id为102的挑战，并判定成功
		ScriptLib.StopChallenge(context, 102, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9046(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058005, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201058004, 2)
	
	-- 调用提示id为 105200401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 105200401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 9009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-76，84，190），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-76, y=84, z=190}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为9011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10520401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10520401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9048(context, evt)
	if 9003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"type"为3
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9048(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9049(context, evt)
	if 9005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9049(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9050(context, evt)
	if 9002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9050(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9051(context, evt)
	if 9006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9051(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9052(context, evt)
	if 9004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_9052(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058009, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9054(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 9003 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9054(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9055(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 9005 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9055(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9056(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 9002 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9056(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9057(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 9006 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9057(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9058(context, evt)
	-- 判断变量"type"为1
	if ScriptLib.GetGroupVariableValue(context, "type") ~= 3 then
			return false
	end
	
	
	if 9004 == evt.param2 then
		return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9058(context, evt)
	-- 终止识别id为102的挑战，并判定失败
		ScriptLib.StopChallenge(context, 102, 0)
	
	return 0
end