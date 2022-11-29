-- 基础信息
local base_info = {
	group_id = 133002283
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1026, monster_id = 20010801, pos = { x = 1617.437, y = 200.000, z = -317.304 }, rot = { x = 0.000, y = 7.611, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1027, monster_id = 20010801, pos = { x = 1634.061, y = 200.000, z = -311.097 }, rot = { x = 0.000, y = 7.611, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1028, monster_id = 20010801, pos = { x = 1627.886, y = 200.000, z = -310.502 }, rot = { x = 0.000, y = 7.611, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1029, monster_id = 20010801, pos = { x = 1624.211, y = 200.000, z = -314.748 }, rot = { x = 0.000, y = 7.611, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1030, monster_id = 20010901, pos = { x = 1631.197, y = 200.000, z = -309.711 }, rot = { x = 0.000, y = 7.611, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1006 }, area_id = 3 },
	{ config_id = 1031, monster_id = 20010801, pos = { x = 1634.454, y = 200.000, z = -313.804 }, rot = { x = 0.000, y = 7.611, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1006 }, pose_id = 901, area_id = 3 },
	{ config_id = 1032, monster_id = 20010801, pos = { x = 1626.869, y = 200.000, z = -315.036 }, rot = { x = 0.000, y = 73.674, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1006 }, pose_id = 901, area_id = 3 },
	{ config_id = 1033, monster_id = 20010801, pos = { x = 1625.183, y = 200.000, z = -310.281 }, rot = { x = 0.000, y = 131.206, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1006 }, pose_id = 901, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2365, gadget_id = 70300086, pos = { x = 1627.524, y = 199.507, z = -320.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000377, name = "ANY_MONSTER_LIVE_377", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_377", action = "action_EVENT_ANY_MONSTER_LIVE_377" },
	{ config_id = 1000378, name = "ANY_MONSTER_DIE_378", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_378", action = "action_EVENT_ANY_MONSTER_DIE_378" },
	{ config_id = 1000379, name = "CHALLENGE_SUCCESS_379", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_379" },
	{ config_id = 1000380, name = "CHALLENGE_FAIL_380", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_380" }
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
		gadgets = { 2365 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1026, 1027, 1028, 1029 },
		gadgets = { 2365 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_377", "ANY_MONSTER_DIE_378", "CHALLENGE_SUCCESS_379", "CHALLENGE_FAIL_380" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_377(context, evt)
	if 1026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_377(context, evt)
	-- 创建编号为1001（该挑战的识别id),挑战内容为3001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 3001, 180, 133002283, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_378(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_378(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1030, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1031, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1032, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1033, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_379(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228304") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_380(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002283, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end