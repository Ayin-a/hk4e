-- 基础信息
local base_info = {
	group_id = 241037003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011101, pos = { x = 0.142, y = 0.034, z = -9.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3002, monster_id = 20011201, pos = { x = 2.799, y = 0.034, z = -9.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3003, monster_id = 20011201, pos = { x = -2.537, y = 0.034, z = -9.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3004, monster_id = 20010801, pos = { x = 5.333, y = 0.034, z = -7.762 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3005, monster_id = 20010801, pos = { x = -4.953, y = 0.034, z = -7.735 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3006, monster_id = 20010501, pos = { x = 5.143, y = 0.034, z = -10.096 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3007, monster_id = 21010201, pos = { x = -4.758, y = 0.034, z = -10.025 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3008, monster_id = 20011001, pos = { x = -2.378, y = 0.034, z = -11.810 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3009, monster_id = 21010201, pos = { x = 2.736, y = 0.034, z = -11.926 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3010, monster_id = 20010601, pos = { x = 0.142, y = 0.034, z = -12.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3011, monster_id = 20010801, pos = { x = 7.299, y = 0.034, z = -8.477 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3012, monster_id = 20010801, pos = { x = -6.946, y = 0.034, z = -8.558 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3013, monster_id = 21010201, pos = { x = 7.368, y = 0.026, z = -5.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3014, monster_id = 20011201, pos = { x = -7.015, y = 0.034, z = -5.712 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3015, monster_id = 20011201, pos = { x = 9.592, y = 0.034, z = -3.514 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3016, monster_id = 21010201, pos = { x = -9.116, y = 0.034, z = -3.442 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3017, monster_id = 20010501, pos = { x = 9.508, y = 0.034, z = -6.421 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3019, monster_id = 20010501, pos = { x = -9.636, y = 0.034, z = -6.818 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3020, monster_id = 20011101, pos = { x = 0.142, y = 0.034, z = -7.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3024, monster_id = 20010801, pos = { x = 5.367, y = 0.023, z = -4.856 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3025, monster_id = 20010801, pos = { x = -5.006, y = 0.023, z = -4.763 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3026, monster_id = 21010201, pos = { x = 2.559, y = 0.023, z = -4.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3027, monster_id = 21010201, pos = { x = -2.302, y = 0.023, z = -4.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3028, monster_id = 20011201, pos = { x = 7.415, y = 0.023, z = -2.413 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3029, monster_id = 20011201, pos = { x = -7.082, y = 0.023, z = -2.472 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3031, monster_id = 20010601, pos = { x = 0.206, y = 0.023, z = -11.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3032, monster_id = 20011001, pos = { x = 4.387, y = 0.023, z = -9.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3033, monster_id = 20011001, pos = { x = -4.026, y = 0.023, z = -8.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3034, monster_id = 20011201, pos = { x = 2.882, y = 0.023, z = -6.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3035, monster_id = 20011201, pos = { x = -2.633, y = 0.023, z = -6.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3036, monster_id = 22010201, pos = { x = 0.170, y = 0.023, z = -5.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3030, gadget_id = 70900205, pos = { x = 6.178, y = -1.176, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003018, name = "ANY_MONSTER_LIVE_3018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3018", action = "action_EVENT_ANY_MONSTER_LIVE_3018" },
	{ config_id = 1003021, name = "CHALLENGE_SUCCESS_3021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3021" },
	{ config_id = 1003022, name = "CHALLENGE_FAIL_3022", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3022" },
	{ config_id = 1003023, name = "MONSTER_TIDE_DIE_3023", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_3023", action = "action_EVENT_MONSTER_TIDE_DIE_3023", trigger_count = 0 }
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
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3018", "CHALLENGE_SUCCESS_3021", "CHALLENGE_FAIL_3022", "MONSTER_TIDE_DIE_3023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3018(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3018(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 241037003, 31, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3021(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 241037001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241037002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241037002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241037003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3023(context, evt)
	if 31 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 241037001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241037002, suite = 1 }) then
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