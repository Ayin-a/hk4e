-- 基础信息
local base_info = {
	group_id = 241017004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011001, pos = { x = 2.909, y = -0.058, z = -10.464 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4002, monster_id = 20011001, pos = { x = -3.229, y = -0.056, z = -10.437 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4003, monster_id = 20011001, pos = { x = 6.306, y = -0.056, z = -9.021 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4004, monster_id = 20011001, pos = { x = -6.884, y = -0.056, z = -8.812 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4005, monster_id = 20011001, pos = { x = 8.700, y = -0.056, z = -6.645 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4006, monster_id = 20011001, pos = { x = -0.191, y = -0.057, z = -10.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4007, monster_id = 20011101, pos = { x = 5.127, y = -0.057, z = -11.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4008, monster_id = 20011001, pos = { x = 1.837, y = -0.055, z = -13.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4009, monster_id = 20011001, pos = { x = -5.408, y = -0.054, z = -11.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4010, monster_id = 20011001, pos = { x = -8.872, y = -0.057, z = -6.462 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4011, monster_id = 20011001, pos = { x = -2.109, y = -0.054, z = -13.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4012, monster_id = 20011001, pos = { x = 8.562, y = -0.060, z = -10.485 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4013, monster_id = 20011001, pos = { x = 5.313, y = -0.057, z = -6.962 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4014, monster_id = 20011101, pos = { x = 1.364, y = -0.058, z = -8.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4015, monster_id = 20011001, pos = { x = -4.042, y = -0.058, z = -7.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4016, monster_id = 20011001, pos = { x = -8.783, y = -0.053, z = -10.714 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4017, monster_id = 20011001, pos = { x = 11.129, y = -0.060, z = -8.234 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4018, monster_id = 20011001, pos = { x = -10.683, y = -0.054, z = -8.648 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4019, monster_id = 20011001, pos = { x = -0.209, y = -0.055, z = -12.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 4020, monster_id = 20011101, pos = { x = -0.428, y = -0.055, z = -13.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4021, gadget_id = 70900205, pos = { x = 4.805, y = -2.068, z = 0.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004022, name = "ANY_MONSTER_LIVE_4022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4022", action = "action_EVENT_ANY_MONSTER_LIVE_4022" },
	{ config_id = 1004023, name = "CHALLENGE_SUCCESS_4023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4023" },
	{ config_id = 1004024, name = "CHALLENGE_FAIL_4024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4024" },
	{ config_id = 1004025, name = "MONSTER_TIDE_DIE_4025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_4025", action = "action_EVENT_MONSTER_TIDE_DIE_4025", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4022", "CHALLENGE_SUCCESS_4023", "CHALLENGE_FAIL_4024", "MONSTER_TIDE_DIE_4025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 241017004, 20, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4023(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 241017006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241017005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241017005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241017004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4025(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 241017006) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241017005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 开启通用UI提示,标题和文本内容配置ID对应TextMapData表中的ID名，0字段控制该UI提示栏的显示时间，填为0时为一直显示
	if 0 ~= ScriptLib.sendShowCommonTipsToClient(context, "", "UI_COMMON_TIPS_TEXT_AVATAR_TRY_OUT", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : show_common_tips")
		return -1
	end
	
	return 0
end