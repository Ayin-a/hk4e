-- 基础信息
local base_info = {
	group_id = 133002289
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1039, monster_id = 20010501, pos = { x = 1680.643, y = 277.686, z = -1105.762 }, rot = { x = 0.000, y = 41.075, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1040, monster_id = 20010501, pos = { x = 1679.735, y = 277.077, z = -1099.580 }, rot = { x = 0.000, y = 105.647, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1041, monster_id = 20010501, pos = { x = 1684.445, y = 276.125, z = -1098.099 }, rot = { x = 0.000, y = 193.865, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1042, monster_id = 20010501, pos = { x = 1683.906, y = 277.339, z = -1107.713 }, rot = { x = 0.000, y = 4.740, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1043, monster_id = 20010501, pos = { x = 1681.690, y = 276.580, z = -1097.486 }, rot = { x = 0.000, y = 159.261, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1044, monster_id = 20010501, pos = { x = 1686.410, y = 276.450, z = -1105.097 }, rot = { x = 0.000, y = 287.229, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 3 },
	{ config_id = 1045, monster_id = 20010601, pos = { x = 1678.193, y = 277.928, z = -1104.693 }, rot = { x = 0.000, y = 59.063, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1006 }, area_id = 3 },
	{ config_id = 1046, monster_id = 20010701, pos = { x = 1678.236, y = 277.086, z = -1097.719 }, rot = { x = 0.000, y = 134.176, z = 0.000 }, level = 15, drop_id = 1000100, affix = { 1006 }, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2410, gadget_id = 70300086, pos = { x = 1683.195, y = 275.014, z = -1095.405 }, rot = { x = 0.000, y = 0.000, z = 73.296 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000397, name = "ANY_MONSTER_LIVE_397", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_397", action = "action_EVENT_ANY_MONSTER_LIVE_397" },
	{ config_id = 1000398, name = "ANY_MONSTER_DIE_398", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_398", action = "action_EVENT_ANY_MONSTER_DIE_398" },
	{ config_id = 1000399, name = "CHALLENGE_SUCCESS_399", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_399" },
	{ config_id = 1000400, name = "CHALLENGE_FAIL_400", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_400" }
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
		gadgets = { 2410 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1039, 1040, 1041, 1042 },
		gadgets = { 2410 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_397", "ANY_MONSTER_DIE_398", "CHALLENGE_SUCCESS_399", "CHALLENGE_FAIL_400" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_397(context, evt)
	if 1039 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_397(context, evt)
	-- 创建编号为1001（该挑战的识别id),挑战内容为3001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 3001, 180, 133002289, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_398(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_398(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1046, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1045, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1043, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1044, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_399(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_400(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228906") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002289, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end