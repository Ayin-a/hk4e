-- 基础信息
local base_info = {
	group_id = 240014003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22010301, pos = { x = 533.046, y = -2.018, z = 253.553 }, rot = { x = 0.000, y = 178.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 20010801, pos = { x = 527.989, y = -2.051, z = 240.925 }, rot = { x = 0.000, y = 178.534, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20010801, pos = { x = 538.436, y = -2.051, z = 240.998 }, rot = { x = 0.000, y = 181.711, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20010801, pos = { x = 527.820, y = -2.000, z = 246.144 }, rot = { x = 0.000, y = 149.399, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20010801, pos = { x = 538.191, y = -1.889, z = 245.832 }, rot = { x = 0.000, y = 152.051, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 21010901, pos = { x = 526.542, y = -1.983, z = 253.093 }, rot = { x = 0.000, y = 184.304, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 21010901, pos = { x = 539.695, y = -1.983, z = 253.251 }, rot = { x = 0.000, y = 185.962, z = 0.000 }, level = 1 }
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
	{ config_id = 1003008, name = "CHALLENGE_FAIL_3008", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3008", trigger_count = 0 },
	{ config_id = 1003009, name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3009", action = "action_EVENT_ANY_MONSTER_LIVE_3009", trigger_count = 0 },
	{ config_id = 1003010, name = "CHALLENGE_SUCCESS_3010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3010", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3008", "ANY_MONSTER_LIVE_3009", "CHALLENGE_SUCCESS_3010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006, 3007 },
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

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3008(context, evt)
	-- 改变指定group组240014001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240014003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240014001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为6的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 6, 240014003, 7, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240014001, 2)
	
	-- 改变指定group组240014001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end