-- 基础信息
local base_info = {
	group_id = 133212594
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 594001, monster_id = 25080401, pos = { x = -4095.657, y = 202.327, z = -2404.623 }, rot = { x = 0.000, y = 257.376, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 594002, monster_id = 25050301, pos = { x = -4099.728, y = 202.319, z = -2407.107 }, rot = { x = 0.000, y = 321.342, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594003, monster_id = 25050301, pos = { x = -4099.741, y = 202.460, z = -2402.332 }, rot = { x = 0.000, y = 235.946, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594004, monster_id = 25050301, pos = { x = -4098.622, y = 202.337, z = -2404.543 }, rot = { x = 0.000, y = 271.325, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594005, monster_id = 25050301, pos = { x = -4099.728, y = 202.319, z = -2407.107 }, rot = { x = 0.000, y = 321.342, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594006, monster_id = 25050301, pos = { x = -4099.741, y = 202.460, z = -2402.332 }, rot = { x = 0.000, y = 235.946, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594007, monster_id = 25050401, pos = { x = -4098.622, y = 202.337, z = -2404.543 }, rot = { x = 0.000, y = 271.325, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594008, monster_id = 25050301, pos = { x = -4096.360, y = 202.282, z = -2402.177 }, rot = { x = 0.000, y = 247.832, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594009, monster_id = 25050301, pos = { x = -4096.098, y = 202.440, z = -2406.780 }, rot = { x = 0.000, y = 302.324, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 594011, monster_id = 25050301, pos = { x = -4101.731, y = 202.054, z = -2408.881 }, rot = { x = 0.000, y = 331.680, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 13 }
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
	{ config_id = 1594010, name = "ANY_MONSTER_DIE_594010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_594010", action = "action_EVENT_ANY_MONSTER_DIE_594010" },
	{ config_id = 1594012, name = "ANY_MONSTER_DIE_594012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_594012", action = "action_EVENT_ANY_MONSTER_DIE_594012" },
	{ config_id = 1594013, name = "ANY_MONSTER_DIE_594013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_594013", action = "action_EVENT_ANY_MONSTER_DIE_594013" },
	{ config_id = 1594014, name = "MONSTER_BATTLE_594014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_594014", action = "" }
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
		monsters = { 594002, 594003, 594004, 594011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_594010", "MONSTER_BATTLE_594014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 594005, 594006, 594007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_594012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 594001, 594008, 594009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_594013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_594010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_594010(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212594, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_594012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_594012(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212594, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_594013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_594013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_594014(context, evt)
	if 594002 ~= evt.param1 then
		return false
	end
	
	return true
end