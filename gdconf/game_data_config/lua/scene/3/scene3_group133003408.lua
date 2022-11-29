-- 基础信息
local base_info = {
	group_id = 133003408
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1387, monster_id = 21010601, pos = { x = 2910.624, y = 251.488, z = -1649.886 }, rot = { x = 0.000, y = 255.845, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1388, monster_id = 21010301, pos = { x = 2908.180, y = 251.514, z = -1652.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1389, monster_id = 21010701, pos = { x = 2906.525, y = 251.730, z = -1649.022 }, rot = { x = 0.000, y = 128.607, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 1390, monster_id = 21010101, pos = { x = 2903.469, y = 251.726, z = -1653.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 408001, monster_id = 21010301, pos = { x = 2905.500, y = 251.708, z = -1650.287 }, rot = { x = 0.000, y = 101.449, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 1 },
	{ config_id = 408002, monster_id = 21010201, pos = { x = 2909.224, y = 251.619, z = -1647.729 }, rot = { x = 0.000, y = 219.277, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 9013, area_id = 1 },
	{ config_id = 408003, monster_id = 21010201, pos = { x = 2910.096, y = 251.448, z = -1652.359 }, rot = { x = 0.000, y = 325.049, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 9013, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3423, gadget_id = 70900015, pos = { x = 2907.367, y = 251.094, z = -1655.035 }, rot = { x = 0.000, y = 242.168, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3424, gadget_id = 70900016, pos = { x = 2912.713, y = 248.814, z = -1648.710 }, rot = { x = 0.000, y = 158.776, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3425, gadget_id = 70900019, pos = { x = 2904.363, y = 251.645, z = -1646.899 }, rot = { x = 0.000, y = 308.344, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3976, gadget_id = 70310004, pos = { x = 2908.210, y = 251.576, z = -1650.627 }, rot = { x = 0.000, y = 106.733, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3977, gadget_id = 70211011, pos = { x = 2908.097, y = 259.296, z = -1655.806 }, rot = { x = 0.000, y = 329.171, z = 0.000 }, level = 26, drop_tag = "战斗中级蒙德", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1408004, name = "ANY_MONSTER_DIE_408004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_408004", action = "action_EVENT_ANY_MONSTER_DIE_408004", trigger_count = 0 },
	{ config_id = 1408005, name = "ANY_MONSTER_DIE_408005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_408005" },
	{ config_id = 1408006, name = "QUEST_FINISH_408006", event = EventType.EVENT_QUEST_FINISH, source = "2006304", condition = "condition_EVENT_QUEST_FINISH_408006", action = "action_EVENT_QUEST_FINISH_408006" },
	{ config_id = 1408007, name = "QUEST_FINISH_408007", event = EventType.EVENT_QUEST_FINISH, source = "2006310", condition = "", action = "action_EVENT_QUEST_FINISH_408007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_monster_killed", value = 1, no_refresh = false }
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
		monsters = { 1387, 1388, 1389, 1390 },
		gadgets = { 3423, 3424, 3425, 3976, 3977 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 408001, 408002, 408003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_408004", "ANY_MONSTER_DIE_408005", "QUEST_FINISH_408006", "QUEST_FINISH_408007" },
		rand_weight = 0,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_408004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_408004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034081") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_408005(context, evt)
	-- 变量"is_monster_killed"赋值为0
	ScriptLib.SetGroupVariableValue(context, "is_monster_killed", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_408006(context, evt)
	-- 判断变量"is_monster_killed"为0
	if ScriptLib.GetGroupVariableValue(context, "is_monster_killed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_408006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003408, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_408007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003408, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end