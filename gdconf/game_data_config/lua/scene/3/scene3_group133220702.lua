-- 基础信息
local base_info = {
	group_id = 133220702
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 702001, monster_id = 21010101, pos = { x = -2566.467, y = 237.235, z = -4257.612 }, rot = { x = 0.000, y = 64.210, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702002, monster_id = 21010101, pos = { x = -2569.605, y = 236.667, z = -4260.684 }, rot = { x = 0.000, y = 60.560, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702003, monster_id = 25080201, pos = { x = -2568.798, y = 236.969, z = -4260.684 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702004, monster_id = 25080301, pos = { x = -2566.462, y = 237.245, z = -4257.117 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702005, monster_id = 20011001, pos = { x = -2554.648, y = 238.932, z = -4252.193 }, rot = { x = 0.000, y = 230.490, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702006, monster_id = 20011001, pos = { x = -2553.539, y = 239.342, z = -4254.333 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702010, monster_id = 20011301, pos = { x = -2550.894, y = 239.022, z = -4251.354 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702011, monster_id = 21020301, pos = { x = -2572.199, y = 236.578, z = -4263.235 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702012, monster_id = 25080401, pos = { x = -2563.799, y = 238.020, z = -4254.265 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702013, monster_id = 25080101, pos = { x = -2555.898, y = 238.912, z = -4252.193 }, rot = { x = 0.000, y = 182.900, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702014, monster_id = 25080201, pos = { x = -2552.006, y = 239.132, z = -4252.355 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702015, monster_id = 21010101, pos = { x = -2566.467, y = 238.122, z = -4262.995 }, rot = { x = 0.000, y = 64.210, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702017, monster_id = 21020301, pos = { x = -2572.199, y = 235.724, z = -4258.575 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, area_id = 11 },
	{ config_id = 702018, monster_id = 25080301, pos = { x = -2566.821, y = 238.108, z = -4263.214 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702019, monster_id = 25080401, pos = { x = -2563.799, y = 238.020, z = -4260.328 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 11 },
	{ config_id = 702020, monster_id = 21030301, pos = { x = -2548.064, y = 239.103, z = -4250.185 }, rot = { x = 0.000, y = 243.800, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, area_id = 11 },
	{ config_id = 702021, monster_id = 21030301, pos = { x = -2548.064, y = 239.439, z = -4252.716 }, rot = { x = 0.000, y = 243.800, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, area_id = 11 }
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
	{ config_id = 1702007, name = "ANY_MONSTER_DIE_702007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_702007", action = "action_EVENT_ANY_MONSTER_DIE_702007" },
	{ config_id = 1702008, name = "ANY_MONSTER_DIE_702008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_702008", action = "action_EVENT_ANY_MONSTER_DIE_702008" },
	{ config_id = 1702009, name = "ANY_MONSTER_DIE_702009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_702009", action = "action_EVENT_ANY_MONSTER_DIE_702009" },
	{ config_id = 1702016, name = "ANY_MONSTER_DIE_702016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_702016", action = "action_EVENT_ANY_MONSTER_DIE_702016" }
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
		monsters = { 702001, 702002, 702011, 702015, 702017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_702007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 702005, 702006, 702010, 702021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_702008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 702003, 702004, 702018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_702016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 702012, 702013, 702014, 702019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_702009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_702007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_702007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220702, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_702008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_702008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220702, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_702009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_702009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1203104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_702016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_702016(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220702, 4)
	
	-- 调用提示id为 4000118 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 4000118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end