-- 基础信息
local base_info = {
	group_id = 240021019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 21011001, pos = { x = 7.834, y = 0.002, z = -5.267 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19002, monster_id = 21010501, pos = { x = 5.009, y = 0.002, z = -7.082 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19003, monster_id = 21011001, pos = { x = 1.856, y = 0.002, z = -8.286 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19004, monster_id = 21010501, pos = { x = -2.611, y = 0.002, z = -8.593 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19005, monster_id = 21011001, pos = { x = -6.395, y = 0.002, z = -6.281 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19006, monster_id = 21010501, pos = { x = -8.990, y = 0.002, z = -2.704 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19007, monster_id = 21011001, pos = { x = -9.593, y = 0.002, z = 1.853 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19008, monster_id = 21010501, pos = { x = 8.844, y = 0.002, z = -2.319 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19009, monster_id = 21011001, pos = { x = 9.853, y = 0.002, z = 0.846 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19010, monster_id = 21010501, pos = { x = 8.252, y = 0.002, z = 5.184 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19011, monster_id = 21011001, pos = { x = 4.573, y = 0.002, z = 7.950 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19012, monster_id = 21010501, pos = { x = 0.497, y = 0.002, z = 9.171 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19013, monster_id = 21011001, pos = { x = -3.784, y = 0.002, z = 8.270 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19014, monster_id = 21010501, pos = { x = -6.471, y = 0.002, z = 5.873 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, affix = { 1008, 1011 } },
	{ config_id = 19019, monster_id = 21010701, pos = { x = 6.342, y = 0.002, z = -6.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19020, monster_id = 21010701, pos = { x = 3.685, y = 0.002, z = -7.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19021, monster_id = 21010701, pos = { x = -4.526, y = 0.002, z = -7.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19022, monster_id = 21010701, pos = { x = -7.968, y = 0.002, z = -4.393 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 19023, monster_id = 21010701, pos = { x = -9.470, y = 0.002, z = -0.458 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19024, monster_id = 21010701, pos = { x = -8.477, y = 0.002, z = 3.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19025, monster_id = 21010701, pos = { x = -4.969, y = 0.002, z = 7.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19026, monster_id = 21010701, pos = { x = -1.742, y = 0.002, z = 8.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19027, monster_id = 21010701, pos = { x = 2.446, y = 0.002, z = 8.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19028, monster_id = 21010701, pos = { x = 6.249, y = 0.002, z = 6.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19029, monster_id = 21010701, pos = { x = 8.935, y = 0.002, z = 3.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19030, monster_id = 21010701, pos = { x = 8.318, y = 0.002, z = -3.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19031, monster_id = 21010701, pos = { x = 9.442, y = 0.002, z = -0.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19032, monster_id = 21020101, pos = { x = 5.347, y = 0.002, z = 9.729 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 19033, monster_id = 21020101, pos = { x = -7.096, y = 0.002, z = 8.173 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 19034, monster_id = 21020101, pos = { x = 7.729, y = 0.002, z = -8.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19035, monster_id = 21020101, pos = { x = -9.094, y = 0.002, z = -6.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19015, gadget_id = 70900205, pos = { x = 6.004, y = -3.044, z = 2.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19036, gadget_id = 70950060, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019016, name = "ANY_MONSTER_LIVE_19016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_19016", action = "action_EVENT_ANY_MONSTER_LIVE_19016" },
	{ config_id = 1019017, name = "CHALLENGE_FAIL_19017", event = EventType.EVENT_CHALLENGE_FAIL, source = "16", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19017" },
	{ config_id = 1019018, name = "CHALLENGE_SUCCESS_19018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "16", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_19018" },
	{ config_id = 1019037, name = "GADGET_STATE_CHANGE_19037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19037", action = "action_EVENT_GADGET_STATE_CHANGE_19037" }
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
		gadgets = { 19015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19015, 19036 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_19016", "CHALLENGE_FAIL_19017", "CHALLENGE_SUCCESS_19018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_19016(context, evt)
	if 19001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_19016(context, evt)
	-- 创建编号为16（该挑战的识别id),挑战内容为3的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 16, 3, 300, 10, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为17（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 17, 240021019, {19022,19023,19019,19020,19021,19024,19025,19026,19027,19028,19029,19030,19031}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为18（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 18, 240021019, {19032,19033,19034,19035}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_19017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021019, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_19018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021019, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19037(context, evt)
	if 19036 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19037(context, evt)
	-- 终止识别id为16的挑战，并判定失败
		ScriptLib.StopChallenge(context, 16, 0)
	
	return 0
end