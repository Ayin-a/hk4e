-- 基础信息
local base_info = {
	group_id = 235831003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 24010101, pos = { x = -48.911, y = 251.875, z = -84.377 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 3002, monster_id = 24020301, pos = { x = -51.547, y = 251.901, z = -82.376 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 3003, monster_id = 24020201, pos = { x = -54.733, y = 251.824, z = -85.705 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 3004, monster_id = 24020101, pos = { x = -49.951, y = 251.895, z = -79.437 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 3005, monster_id = 24020401, pos = { x = -57.375, y = 251.924, z = -87.646 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 3006, monster_id = 24010101, pos = { x = -52.097, y = 251.889, z = -87.705 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 3007, monster_id = 24010301, pos = { x = -52.160, y = 251.886, z = -85.554 }, rot = { x = 0.000, y = 302.401, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3014, gadget_id = 70290196, pos = { x = -54.626, y = 251.907, z = -74.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003008, name = "ANY_MONSTER_DIE_3008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3008", action = "action_EVENT_ANY_MONSTER_DIE_3008" },
	{ config_id = 1003009, name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3009", action = "action_EVENT_ANY_MONSTER_LIVE_3009" },
	{ config_id = 1003010, name = "CHALLENGE_SUCCESS_3010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "" },
	{ config_id = 1003011, name = "CHALLENGE_FAIL_3011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3011" },
	{ config_id = 1003012, name = "DUNGEON_ALL_AVATAR_DIE_3012", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3012" },
	{ config_id = 1003013, name = "ANY_MONSTER_DIE_3013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3013", action = "action_EVENT_ANY_MONSTER_DIE_3013" }
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
		gadgets = { 3014 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3009", "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011", "DUNGEON_ALL_AVATAR_DIE_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3002, 3003, 3004, 3005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3007 },
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
function condition_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235831003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235831003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235831003, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235831003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235831002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235831003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_3012(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235831003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235831003, 4)
	
	return 0
end

require "V2_4/PotionStage"