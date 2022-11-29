-- 基础信息
local base_info = {
	group_id = 235824003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010501, pos = { x = -154.642, y = 21.499, z = 38.000 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -154.714, y = 21.501, z = 48.000 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3003, monster_id = 21010502, pos = { x = -152.292, y = 21.501, z = 43.260 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3004, monster_id = 21011001, pos = { x = -158.907, y = 21.501, z = 49.632 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3005, monster_id = 21011001, pos = { x = -158.907, y = 21.501, z = 36.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3006, monster_id = 21011002, pos = { x = -163.801, y = 21.552, z = 43.034 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3007, monster_id = 21030201, pos = { x = -161.538, y = 21.500, z = 39.656 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3008, monster_id = 21030301, pos = { x = -161.762, y = 21.502, z = 47.539 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3009, monster_id = 21030401, pos = { x = -155.009, y = 21.503, z = 43.325 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3010, monster_id = 21020703, pos = { x = -158.851, y = 21.500, z = 34.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3011, monster_id = 21020202, pos = { x = -158.997, y = 21.503, z = 50.850 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3012, monster_id = 26040101, pos = { x = -158.851, y = 21.500, z = 34.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3013, monster_id = 26040103, pos = { x = -158.997, y = 21.503, z = 50.850 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6103, 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70900205, pos = { x = -153.423, y = 19.397, z = 43.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 3014, monster_id = 20010604, pos = { x = -158.437, y = 21.501, z = 10.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6104 } },
		{ config_id = 3021, monster_id = 20010604, pos = { x = -153.041, y = 21.591, z = 13.111 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 3022, monster_id = 20010604, pos = { x = -163.492, y = 21.581, z = 12.727 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 3023, monster_id = 20011201, pos = { x = -150.350, y = 21.601, z = 16.074 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 3024, monster_id = 20011201, pos = { x = -166.158, y = 21.552, z = 15.590 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 3025, monster_id = 20011304, pos = { x = -158.437, y = 21.593, z = 12.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6105 } },
		{ config_id = 3026, monster_id = 20011304, pos = { x = -153.041, y = 21.552, z = 15.319 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 3027, monster_id = 20011304, pos = { x = -163.492, y = 21.550, z = 14.935 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, disableWander = true }
	},
	triggers = {
		{ config_id = 1003019, name = "MONSTER_TIDE_DIE_3019", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_3019", action = "action_EVENT_MONSTER_TIDE_DIE_3019", trigger_count = 0 }
	}
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235824003, 13, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235824001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235824003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235824002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235824003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
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