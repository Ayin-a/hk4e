-- 基础信息
local base_info = {
	group_id = 240021017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21010301, pos = { x = 7.834, y = 0.002, z = -4.363 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1 },
	{ config_id = 17002, monster_id = 21010301, pos = { x = 5.009, y = 0.002, z = -6.178 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1 },
	{ config_id = 17003, monster_id = 21010301, pos = { x = 1.856, y = 0.002, z = -7.382 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1 },
	{ config_id = 17004, monster_id = 21010301, pos = { x = -2.611, y = 0.002, z = -7.690 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1 },
	{ config_id = 17005, monster_id = 21010301, pos = { x = -6.395, y = 0.002, z = -5.377 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 17006, monster_id = 21010301, pos = { x = -8.990, y = 0.002, z = -1.801 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1 },
	{ config_id = 17007, monster_id = 21010301, pos = { x = -9.593, y = 0.002, z = 2.756 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1 },
	{ config_id = 17008, monster_id = 21020101, pos = { x = 8.844, y = 0.002, z = -1.415 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 17009, monster_id = 21010301, pos = { x = 9.853, y = 0.002, z = 1.750 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1 },
	{ config_id = 17010, monster_id = 21010301, pos = { x = 8.252, y = 0.002, z = 6.088 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1 },
	{ config_id = 17011, monster_id = 21010301, pos = { x = 4.573, y = 0.002, z = 8.853 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1 },
	{ config_id = 17012, monster_id = 21010301, pos = { x = 0.497, y = 0.002, z = 10.075 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 17013, monster_id = 21010301, pos = { x = -3.784, y = 0.002, z = 9.174 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1 },
	{ config_id = 17014, monster_id = 21010301, pos = { x = -6.471, y = 0.002, z = 6.777 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17015, gadget_id = 70900205, pos = { x = 6.004, y = -3.044, z = 2.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017016, name = "ANY_MONSTER_LIVE_17016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_17016", action = "action_EVENT_ANY_MONSTER_LIVE_17016" },
	{ config_id = 1017017, name = "CHALLENGE_FAIL_17017", event = EventType.EVENT_CHALLENGE_FAIL, source = "13", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17017" },
	{ config_id = 1017018, name = "CHALLENGE_SUCCESS_17018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "13", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_17018" }
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
		gadgets = { 17015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 17015 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_17016", "CHALLENGE_FAIL_17017", "CHALLENGE_SUCCESS_17018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_17016(context, evt)
	if 17001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_17016(context, evt)
	-- 创建编号为13（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 13, 2, 180, 240021017, 30, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021017, suite = 1 }) then
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
function action_EVENT_CHALLENGE_SUCCESS_17018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021017, suite = 1 }) then
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