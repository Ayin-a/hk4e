-- 基础信息
local base_info = {
	group_id = 250006007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13, monster_id = 20010901, pos = { x = 343.188, y = -12.741, z = 258.212 }, rot = { x = 0.000, y = 0.913, z = 0.000 }, level = 1, disableWander = true, affix = { 1008, 1014 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000021, name = "ANY_MONSTER_LIVE_21", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_21", action = "action_EVENT_ANY_MONSTER_LIVE_21" },
	{ config_id = 1000022, name = "CHALLENGE_FAIL_22", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_22" },
	{ config_id = 1000023, name = "CHALLENGE_SUCCESS_23", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_23" }
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
	suite = 2,
	end_suite = 1,
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
		monsters = { 13 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_21", "CHALLENGE_FAIL_22", "CHALLENGE_SUCCESS_23" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_21(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_21(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为7的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 7, 60, 250006007, 13, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_22(context, evt)
	-- 改变指定group组250006006中， configid为18的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250006006, 18, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250006006, 18, {103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250006008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250006007, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_23(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250006008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end