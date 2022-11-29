-- 基础信息
local base_info = {
	group_id = 133301544
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 544001, monster_id = 25210101, pos = { x = -2107.381, y = 296.691, z = 3962.465 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544002, monster_id = 25210102, pos = { x = -2108.875, y = 296.362, z = 3965.591 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544003, monster_id = 25210201, pos = { x = -2110.486, y = 297.023, z = 3962.960 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544004, monster_id = 25210203, pos = { x = -2111.614, y = 296.472, z = 3966.705 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544007, monster_id = 25210101, pos = { x = -2109.778, y = 296.592, z = 3964.579 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544008, monster_id = 25210102, pos = { x = -2111.272, y = 296.289, z = 3967.705 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544009, monster_id = 25210201, pos = { x = -2112.883, y = 296.979, z = 3965.074 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544010, monster_id = 25210203, pos = { x = -2114.011, y = 296.449, z = 3968.819 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544011, monster_id = 25210101, pos = { x = -2098.042, y = 297.138, z = 3959.679 }, rot = { x = 0.000, y = 294.343, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544012, monster_id = 25210102, pos = { x = -2096.246, y = 297.940, z = 3956.716 }, rot = { x = 0.000, y = 294.343, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544013, monster_id = 25210201, pos = { x = -2094.904, y = 297.561, z = 3959.493 }, rot = { x = 0.000, y = 294.343, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 },
	{ config_id = 544014, monster_id = 25210203, pos = { x = -2093.411, y = 298.082, z = 3955.877 }, rot = { x = 0.000, y = 294.343, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26 }
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
	{ config_id = 1544005, name = "ANY_MONSTER_DIE_544005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_544005", action = "action_EVENT_ANY_MONSTER_DIE_544005", trigger_count = 0 },
	{ config_id = 1544006, name = "ANY_MONSTER_DIE_544006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_544006", action = "action_EVENT_ANY_MONSTER_DIE_544006", trigger_count = 0 },
	{ config_id = 1544015, name = "ANY_MONSTER_DIE_544015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_544015", action = "action_EVENT_ANY_MONSTER_DIE_544015", trigger_count = 0 },
	{ config_id = 1544016, name = "VARIABLE_CHANGE_544016", event = EventType.EVENT_VARIABLE_CHANGE, source = "mission", condition = "condition_EVENT_VARIABLE_CHANGE_544016", action = "action_EVENT_VARIABLE_CHANGE_544016", trigger_count = 0 },
	{ config_id = 1544017, name = "GROUP_LOAD_544017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_544017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "mission", value = 0, no_refresh = true }
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
		monsters = { 544001, 544002, 544003, 544004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_544005", "VARIABLE_CHANGE_544016", "GROUP_LOAD_544017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 544007, 544008, 544009, 544010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_544006", "VARIABLE_CHANGE_544016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 544011, 544012, 544013, 544014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_544015", "VARIABLE_CHANGE_544016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_544005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301544) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_544005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301544, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "mission" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mission", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_544006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301544) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_544006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301544, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "mission" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mission", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_544015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301544) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_544015(context, evt)
	-- 针对当前group内变量名为 "mission" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mission", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_544016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mission"为3
	if ScriptLib.GetGroupVariableValue(context, "mission") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_544016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_544017(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 4, 133301544, 12, 120, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end