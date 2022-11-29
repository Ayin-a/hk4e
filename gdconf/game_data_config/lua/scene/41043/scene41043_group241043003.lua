-- 基础信息
local base_info = {
	group_id = 241043003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011301, pos = { x = 3.248, y = 0.026, z = -8.694 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3002, monster_id = 20011301, pos = { x = -2.890, y = 0.027, z = -8.667 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 6.645, y = 0.027, z = -7.251 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3004, monster_id = 21010201, pos = { x = -6.545, y = 0.027, z = -7.042 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3005, monster_id = 21010101, pos = { x = 9.039, y = 0.027, z = -4.875 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3006, monster_id = 21010401, pos = { x = 0.148, y = 0.026, z = -8.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3007, monster_id = 21010101, pos = { x = 5.466, y = 0.026, z = -9.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3008, monster_id = 20011301, pos = { x = 2.942, y = 0.028, z = -11.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3009, monster_id = 21010501, pos = { x = -5.069, y = 0.029, z = -9.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3010, monster_id = 21011201, pos = { x = -8.533, y = 0.026, z = -4.692 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3011, monster_id = 21010201, pos = { x = -1.770, y = 0.029, z = -11.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3012, monster_id = 20011301, pos = { x = 8.901, y = 0.023, z = -8.715 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3013, monster_id = 21010101, pos = { x = 5.652, y = 0.026, z = -5.192 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3014, monster_id = 21010501, pos = { x = 1.703, y = 0.025, z = -6.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3015, monster_id = 21010201, pos = { x = -3.702, y = 0.025, z = -6.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 3021, monster_id = 21020201, pos = { x = -0.089, y = 0.028, z = -10.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3020, gadget_id = 70900205, pos = { x = 5.183, y = -1.985, z = 0.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003022, name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ config_id = 1003023, name = "CHALLENGE_SUCCESS_3023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3023" },
	{ config_id = 1003024, name = "CHALLENGE_FAIL_3024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3024" },
	{ config_id = 1003025, name = "MONSTER_TIDE_DIE_3025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_3025", action = "action_EVENT_MONSTER_TIDE_DIE_3025", trigger_count = 0 }
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
		gadgets = { 3020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "CHALLENGE_SUCCESS_3023", "CHALLENGE_FAIL_3024", "MONSTER_TIDE_DIE_3025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 241043003, 16, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3023(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 241043001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241043002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241043002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241043003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3025(context, evt)
	if 16 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 241043001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241043002, suite = 1 }) then
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