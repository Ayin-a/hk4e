-- 基础信息
local base_info = {
	group_id = 240021020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 测试用
	{ config_id = 20001, monster_id = 22020101, pos = { x = -3.749, y = 0.003, z = -7.439 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, pose_id = 101 },
	-- 测试用
	{ config_id = 20006, monster_id = 22030101, pos = { x = 4.126, y = 0.002, z = -7.249 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20002, gadget_id = 70900205, pos = { x = 0.342, y = -1.923, z = -10.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020003, name = "ANY_MONSTER_LIVE_20003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_20003", action = "action_EVENT_ANY_MONSTER_LIVE_20003" },
	{ config_id = 1020004, name = "CHALLENGE_SUCCESS_20004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "19", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_20004" },
	{ config_id = 1020005, name = "CHALLENGE_FAIL_20005", event = EventType.EVENT_CHALLENGE_FAIL, source = "19", condition = "", action = "action_EVENT_CHALLENGE_FAIL_20005" }
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
		gadgets = { 20002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 20001, 20006 },
		gadgets = { 20002 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_20003", "CHALLENGE_SUCCESS_20004", "CHALLENGE_FAIL_20005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_20003(context, evt)
	if 20001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_20003(context, evt)
	-- 创建编号为19（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 19, 2, 300, 240021020, 2, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_20004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021020, suite = 1 }) then
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
function action_EVENT_CHALLENGE_FAIL_20005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021020, suite = 1 }) then
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