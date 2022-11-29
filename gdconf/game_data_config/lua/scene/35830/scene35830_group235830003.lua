-- 基础信息
local base_info = {
	group_id = 235830003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22040201, pos = { x = -53.984, y = 251.885, z = -85.410 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3002, monster_id = 22040201, pos = { x = -51.812, y = 251.902, z = -82.882 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3003, monster_id = 22040201, pos = { x = -56.605, y = 251.899, z = -86.911 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3004, monster_id = 22040201, pos = { x = -50.576, y = 251.895, z = -80.093 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3005, monster_id = 22040201, pos = { x = -58.132, y = 251.924, z = -88.431 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3006, monster_id = 22040201, pos = { x = -49.467, y = 251.867, z = -78.100 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3007, monster_id = 22050201, pos = { x = -51.414, y = 251.885, z = -85.520 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3008, monster_id = 22040201, pos = { x = -53.967, y = 251.910, z = -88.957 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3013, monster_id = 22040201, pos = { x = -47.938, y = 251.872, z = -82.139 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3014, monster_id = 22040201, pos = { x = -55.494, y = 251.904, z = -90.477 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3015, monster_id = 22040201, pos = { x = -46.828, y = 251.713, z = -80.146 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3016, monster_id = 22050201, pos = { x = -48.776, y = 251.894, z = -87.566 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3017, gadget_id = 70290196, pos = { x = -55.079, y = 251.913, z = -75.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003009, name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3009", action = "action_EVENT_ANY_MONSTER_LIVE_3009" },
	{ config_id = 1003010, name = "CHALLENGE_SUCCESS_3010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "" },
	{ config_id = 1003011, name = "CHALLENGE_FAIL_3011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3011" },
	{ config_id = 1003012, name = "DUNGEON_ALL_AVATAR_DIE_3012", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3012" }
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
		gadgets = { 3017 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3009", "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011", "DUNGEON_ALL_AVATAR_DIE_3012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235830003, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235830003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235830002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235830003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
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

require "V2_4/PotionStage"