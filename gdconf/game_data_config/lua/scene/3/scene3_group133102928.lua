-- 基础信息
local base_info = {
	group_id = 133102928
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 928002, monster_id = 25010701, pos = { x = 1491.068, y = 240.402, z = 68.253 }, rot = { x = 0.000, y = 5.444, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928003, monster_id = 25030201, pos = { x = 1495.987, y = 240.310, z = 67.345 }, rot = { x = 0.000, y = 344.067, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928004, monster_id = 25030201, pos = { x = 1494.196, y = 240.343, z = 70.211 }, rot = { x = 0.000, y = 358.683, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928005, monster_id = 25010301, pos = { x = 1513.856, y = 241.096, z = 83.283 }, rot = { x = 0.000, y = 249.475, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928007, monster_id = 25030201, pos = { x = 1511.597, y = 239.748, z = 80.299 }, rot = { x = 0.000, y = 233.985, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928008, monster_id = 25030201, pos = { x = 1509.881, y = 239.376, z = 73.820 }, rot = { x = 0.000, y = 247.480, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928009, monster_id = 25010701, pos = { x = 1488.612, y = 240.113, z = 69.298 }, rot = { x = 0.000, y = 21.592, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 },
	{ config_id = 928011, monster_id = 25010701, pos = { x = 1509.559, y = 239.303, z = 78.013 }, rot = { x = 5.956, y = 257.002, z = 342.248 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, area_id = 5 }
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
	{ config_id = 1928001, name = "ANY_MONSTER_DIE_928001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_928001", action = "action_EVENT_ANY_MONSTER_DIE_928001", trigger_count = 0 },
	{ config_id = 1928006, name = "ANY_MONSTER_DIE_928006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_928006", action = "action_EVENT_ANY_MONSTER_DIE_928006", trigger_count = 0 },
	{ config_id = 1928010, name = "QUEST_START_928010", event = EventType.EVENT_QUEST_START, source = "1908306", condition = "", action = "action_EVENT_QUEST_START_928010", trigger_count = 0 }
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
	suite = 3,
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
		monsters = { 928002, 928003, 928004, 928009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_928006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 928005, 928007, 928008, 928011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_928001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_928010" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_928001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_928001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102928") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_928006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_928006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102928, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_928010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102928, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end