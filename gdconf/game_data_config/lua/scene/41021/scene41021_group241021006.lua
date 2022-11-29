-- 基础信息
local base_info = {
	group_id = 241021006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011001, pos = { x = 2.216, y = 0.035, z = -9.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6002, monster_id = 20011001, pos = { x = -2.433, y = 0.037, z = -9.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6003, monster_id = 20011201, pos = { x = 4.488, y = 0.037, z = -8.394 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6004, monster_id = 20011201, pos = { x = -4.369, y = 0.037, z = -8.471 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6005, monster_id = 20011201, pos = { x = 0.082, y = 0.038, z = -9.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6006, monster_id = 20011001, pos = { x = 6.653, y = 0.037, z = -7.220 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6007, monster_id = 21010201, pos = { x = 4.940, y = 0.036, z = -11.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6008, monster_id = 20011201, pos = { x = 0.066, y = 0.038, z = -12.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6009, monster_id = 20011001, pos = { x = -4.885, y = 0.039, z = -11.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6010, monster_id = 20011001, pos = { x = -7.509, y = 0.036, z = -7.201 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6011, monster_id = 21020201, pos = { x = -1.372, y = 0.039, z = -12.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6012, monster_id = 20011201, pos = { x = 8.169, y = 0.033, z = -9.521 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6013, monster_id = 20011001, pos = { x = -7.638, y = 0.035, z = -10.005 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6014, monster_id = 20011201, pos = { x = 0.082, y = 0.038, z = -13.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6020, monster_id = 21010201, pos = { x = 2.603, y = 0.028, z = -12.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6021, monster_id = 20011001, pos = { x = 6.698, y = 0.028, z = -12.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6022, monster_id = 20011101, pos = { x = -4.027, y = 0.028, z = -13.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6023, monster_id = 20011001, pos = { x = 3.436, y = 0.030, z = -15.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6024, monster_id = 21010201, pos = { x = -2.292, y = 0.030, z = -14.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6025, monster_id = 20011201, pos = { x = -6.860, y = 0.030, z = -12.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6026, monster_id = 20011001, pos = { x = 0.268, y = 0.031, z = -15.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true },
	{ config_id = 6027, monster_id = 20011301, pos = { x = 3.684, y = 0.031, z = -10.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 11010210, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6015, gadget_id = 70900205, pos = { x = 5.096, y = -2.171, z = 1.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006016, name = "ANY_MONSTER_LIVE_6016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6016", action = "action_EVENT_ANY_MONSTER_LIVE_6016" },
	{ config_id = 1006017, name = "CHALLENGE_SUCCESS_6017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6017" },
	{ config_id = 1006018, name = "CHALLENGE_FAIL_6018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6018" },
	{ config_id = 1006019, name = "MONSTER_TIDE_DIE_6019", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_6019", action = "action_EVENT_MONSTER_TIDE_DIE_6019", trigger_count = 0 }
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
		gadgets = { 6015 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6016", "CHALLENGE_SUCCESS_6017", "CHALLENGE_FAIL_6018", "MONSTER_TIDE_DIE_6019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6016(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6016(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 241021006, 22, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 241021004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241021005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241021005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241021006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_6019(context, evt)
	if 22 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 241021004) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_6019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 241021005, suite = 1 }) then
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