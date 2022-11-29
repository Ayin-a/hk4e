-- 基础信息
local base_info = {
	group_id = 235820003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011101, pos = { x = -63.522, y = 13.300, z = 84.935 }, rot = { x = 0.000, y = 84.057, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3002, monster_id = 20011101, pos = { x = -63.629, y = 13.294, z = 89.384 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3003, monster_id = 20011101, pos = { x = -62.574, y = 13.293, z = 82.390 }, rot = { x = 0.000, y = 74.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3004, monster_id = 20011101, pos = { x = -62.516, y = 13.293, z = 91.919 }, rot = { x = 0.000, y = 104.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3005, monster_id = 20011101, pos = { x = -63.897, y = 13.294, z = 87.391 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3007, monster_id = 20011101, pos = { x = -62.575, y = 13.296, z = 82.473 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3008, monster_id = 21010902, pos = { x = -66.730, y = 13.326, z = 87.568 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3009, monster_id = 20011101, pos = { x = -62.467, y = 13.291, z = 91.705 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3011, monster_id = 20011101, pos = { x = -62.241, y = 13.294, z = 87.514 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3012, monster_id = 21010902, pos = { x = -65.451, y = 13.298, z = 80.642 }, rot = { x = 0.000, y = 59.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3013, monster_id = 21010902, pos = { x = -66.108, y = 13.301, z = 93.990 }, rot = { x = 0.000, y = 119.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3021, monster_id = 26040104, pos = { x = -62.256, y = 13.348, z = 80.992 }, rot = { x = 0.000, y = 59.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 3022, monster_id = 26040102, pos = { x = -63.249, y = 13.295, z = 93.990 }, rot = { x = 0.000, y = 119.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6103, 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70900205, pos = { x = -52.773, y = 11.103, z = 84.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "ANY_MONSTER_DIE_3006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3006", action = "action_EVENT_ANY_MONSTER_DIE_3006" },
	{ config_id = 1003010, name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010" },
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3007, 3008, 3009, 3011, 3012, 3013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3021, 3022 },
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
function condition_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235820003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235820003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235820003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235820003, 4)
	
	return 0
end

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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235820003, 13, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235820001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235820003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235820002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235820003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
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