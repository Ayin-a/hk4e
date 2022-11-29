-- 基础信息
local base_info = {
	group_id = 235825003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25010401, pos = { x = -155.668, y = 21.527, z = 43.572 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3002, monster_id = 25010501, pos = { x = -157.363, y = 21.552, z = 39.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3003, monster_id = 25010301, pos = { x = -157.606, y = 21.543, z = 47.633 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3004, monster_id = 25010601, pos = { x = -157.682, y = 21.536, z = 38.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3005, monster_id = 25020201, pos = { x = -154.960, y = 21.547, z = 48.049 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3006, monster_id = 25030301, pos = { x = -154.566, y = 21.552, z = 38.347 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3007, monster_id = 25020201, pos = { x = -155.554, y = 21.546, z = 49.652 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3008, monster_id = 25030301, pos = { x = -156.375, y = 21.552, z = 35.713 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3009, monster_id = 25030201, pos = { x = -153.290, y = 21.551, z = 44.291 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3010, monster_id = 25020201, pos = { x = -153.043, y = 21.552, z = 41.591 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3011, monster_id = 25030201, pos = { x = -153.508, y = 21.549, z = 45.937 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3012, monster_id = 25010301, pos = { x = -152.650, y = 21.552, z = 39.936 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3013, monster_id = 25010501, pos = { x = -155.923, y = 21.536, z = 47.124 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3014, monster_id = 23020101, pos = { x = -155.172, y = 21.545, z = 42.924 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6105, 1007 } },
	{ config_id = 3021, monster_id = 23050101, pos = { x = -161.505, y = 21.533, z = 43.019 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70900205, pos = { x = -153.848, y = 19.396, z = 43.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003016, name = "ANY_MONSTER_LIVE_3016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3016", action = "action_EVENT_ANY_MONSTER_LIVE_3016" },
	{ config_id = 1003017, name = "CHALLENGE_SUCCESS_3017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3017" },
	{ config_id = 1003018, name = "CHALLENGE_FAIL_3018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3018" },
	{ config_id = 1003020, name = "DUNGEON_ALL_AVATAR_DIE_3020", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3020" }
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
		gadgets = { 3015 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3016", "CHALLENGE_SUCCESS_3017", "CHALLENGE_FAIL_3018", "DUNGEON_ALL_AVATAR_DIE_3020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235825003, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235825001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235825002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235825003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235825003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_3020(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

require "V2_4/PotionStage"