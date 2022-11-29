-- 基础信息
local base_info = {
	group_id = 240016005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5006, monster_id = 21011201, pos = { x = -73.960, y = 279.579, z = -181.822 }, rot = { x = 0.000, y = 73.999, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 21011201, pos = { x = -66.512, y = 279.688, z = -187.533 }, rot = { x = 0.000, y = 28.492, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 21010501, pos = { x = -70.196, y = 279.579, z = -192.167 }, rot = { x = 0.000, y = 25.689, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 21011001, pos = { x = -77.792, y = 279.579, z = -184.944 }, rot = { x = 0.000, y = 59.077, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 21011201, pos = { x = -70.459, y = 279.579, z = -185.990 }, rot = { x = 0.000, y = 34.459, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 21030301, pos = { x = -73.906, y = 279.571, z = -189.900 }, rot = { x = 0.000, y = 36.050, z = 0.000 }, level = 1 },
	{ config_id = 5012, monster_id = 21010701, pos = { x = -73.557, y = 279.689, z = -180.819 }, rot = { x = 0.000, y = 90.112, z = 0.000 }, level = 1 },
	{ config_id = 5013, monster_id = 21010701, pos = { x = -64.704, y = 279.687, z = -187.722 }, rot = { x = 0.000, y = 6.462, z = 0.000 }, level = 1 },
	{ config_id = 5014, monster_id = 21030401, pos = { x = -62.497, y = 279.559, z = -176.085 }, rot = { x = 0.000, y = 198.400, z = 0.000 }, level = 1 },
	{ config_id = 5015, monster_id = 21010901, pos = { x = -66.330, y = 279.559, z = -173.635 }, rot = { x = 0.000, y = 180.771, z = 0.000 }, level = 1 },
	{ config_id = 5016, monster_id = 21011001, pos = { x = -59.584, y = 279.563, z = -180.358 }, rot = { x = 0.000, y = 254.491, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 21020201, pos = { x = -71.210, y = 279.559, z = -186.689 }, rot = { x = 0.000, y = 38.124, z = 0.000 }, level = 1 },
	{ config_id = 5018, monster_id = 21010701, pos = { x = -62.883, y = 279.579, z = -188.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, monster_id = 21010701, pos = { x = -75.268, y = 279.579, z = -179.706 }, rot = { x = 0.000, y = 69.767, z = 0.000 }, level = 1 },
	{ config_id = 5020, monster_id = 21020501, pos = { x = -71.336, y = 279.563, z = -187.026 }, rot = { x = 0.000, y = 38.457, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70900051, pos = { x = -67.545, y = 279.688, z = -181.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70211021, pos = { x = -73.383, y = 279.579, z = -189.570 }, rot = { x = 0.000, y = 37.093, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 5003, gadget_id = 70900201, pos = { x = -67.461, y = 280.310, z = -181.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005005, name = "GADGET_STATE_CHANGE_5005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5005", action = "action_EVENT_GADGET_STATE_CHANGE_5005", trigger_count = 0 },
	{ config_id = 1005021, name = "ANY_MONSTER_LIVE_5021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5021", action = "action_EVENT_ANY_MONSTER_LIVE_5021", trigger_count = 0 },
	{ config_id = 1005022, name = "CHALLENGE_SUCCESS_5022", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5022", trigger_count = 0 },
	{ config_id = 1005023, name = "CHALLENGE_FAIL_5023", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5023", trigger_count = 0 }
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
		gadgets = { 5001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5005", "ANY_MONSTER_LIVE_5021", "CHALLENGE_SUCCESS_5022", "CHALLENGE_FAIL_5023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5006, 5007, 5008, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018, 5019, 5020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_5005(context, evt)
	if 5001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5005(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少6只，最多6只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240016005, {5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020}, 15, 6, 6) then
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	if 5006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	-- 创建编号为100（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 2, 240, 240016005, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016005, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240016005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016005, 2)
	
	return 0
end