-- 基础信息
local base_info = {
	group_id = 133106426
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 426001, monster_id = 25070202, pos = { x = -351.782, y = 317.475, z = 1414.239 }, rot = { x = 0.000, y = 307.394, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 19 },
	{ config_id = 426002, monster_id = 23020101, pos = { x = -354.654, y = 317.518, z = 1416.006 }, rot = { x = 0.000, y = 74.112, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 19 },
	{ config_id = 426003, monster_id = 23040101, pos = { x = -353.272, y = 317.411, z = 1417.030 }, rot = { x = 0.000, y = 170.054, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 19 },
	{ config_id = 426006, monster_id = 25010301, pos = { x = -339.687, y = 316.321, z = 1428.133 }, rot = { x = 0.000, y = 220.899, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426007, monster_id = 25010301, pos = { x = -336.345, y = 316.124, z = 1426.784 }, rot = { x = 0.000, y = 225.243, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426008, monster_id = 25010401, pos = { x = -335.056, y = 315.482, z = 1431.979 }, rot = { x = 0.000, y = 212.879, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426009, monster_id = 25010401, pos = { x = -334.661, y = 315.858, z = 1428.692 }, rot = { x = 0.000, y = 224.051, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426010, monster_id = 25010201, pos = { x = -339.638, y = 316.310, z = 1428.208 }, rot = { x = 0.000, y = 220.313, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426011, monster_id = 25010201, pos = { x = -336.349, y = 316.123, z = 1426.814 }, rot = { x = 0.000, y = 221.314, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426012, monster_id = 25010201, pos = { x = -334.662, y = 315.858, z = 1428.692 }, rot = { x = 0.000, y = 216.799, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426013, monster_id = 25010201, pos = { x = -335.165, y = 315.501, z = 1431.912 }, rot = { x = 0.000, y = 212.832, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426014, monster_id = 25020201, pos = { x = -347.344, y = 317.946, z = 1431.407 }, rot = { x = 0.000, y = 188.141, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426015, monster_id = 25020201, pos = { x = -334.589, y = 317.525, z = 1413.540 }, rot = { x = 0.000, y = 301.462, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426016, monster_id = 25020201, pos = { x = -336.352, y = 317.700, z = 1411.254 }, rot = { x = 0.000, y = 287.235, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426017, monster_id = 25020201, pos = { x = -351.052, y = 318.008, z = 1429.648 }, rot = { x = 0.000, y = 116.877, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426018, monster_id = 25010201, pos = { x = -346.790, y = 317.479, z = 1428.256 }, rot = { x = 0.000, y = 164.685, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426019, monster_id = 25010201, pos = { x = -349.687, y = 317.991, z = 1427.940 }, rot = { x = 0.000, y = 113.179, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426020, monster_id = 25010201, pos = { x = -337.464, y = 317.528, z = 1412.399 }, rot = { x = 0.000, y = 300.054, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426021, monster_id = 25010201, pos = { x = -336.677, y = 317.251, z = 1414.722 }, rot = { x = 0.000, y = 303.594, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426022, monster_id = 25070101, pos = { x = -334.590, y = 315.839, z = 1428.777 }, rot = { x = 0.000, y = 230.369, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426023, monster_id = 25070101, pos = { x = -339.637, y = 316.392, z = 1428.061 }, rot = { x = 0.000, y = 230.426, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426024, monster_id = 25030301, pos = { x = -336.354, y = 316.121, z = 1426.856 }, rot = { x = 0.000, y = 208.080, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426025, monster_id = 25030301, pos = { x = -335.414, y = 315.545, z = 1431.777 }, rot = { x = 0.000, y = 223.481, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 426026, monster_id = 25060101, pos = { x = -339.014, y = 316.291, z = 1426.229 }, rot = { x = 0.000, y = 225.709, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5142 }, area_id = 19 },
	{ config_id = 426027, monster_id = 25060101, pos = { x = -335.820, y = 316.043, z = 1427.985 }, rot = { x = 0.000, y = 225.437, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5142 }, area_id = 19 },
	{ config_id = 426028, monster_id = 25010701, pos = { x = -337.801, y = 316.093, z = 1428.377 }, rot = { x = 0.000, y = 228.792, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5142 }, area_id = 19 },
	{ config_id = 426029, monster_id = 25010701, pos = { x = -341.101, y = 316.499, z = 1427.957 }, rot = { x = 0.000, y = 224.149, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5142 }, area_id = 19 },
	{ config_id = 426030, monster_id = 25040103, pos = { x = -357.853, y = 317.760, z = 1417.376 }, rot = { x = 0.000, y = 102.098, z = 0.000 }, level = 36, drop_id = 1000100, title_id = 10087, special_name_id = 10120, area_id = 19 },
	{ config_id = 426032, monster_id = 25070202, pos = { x = -357.785, y = 317.756, z = 1416.328 }, rot = { x = 0.000, y = 68.049, z = 0.000 }, level = 36, drop_id = 1000100, title_id = 10088, special_name_id = 10121, area_id = 19 },
	{ config_id = 426043, monster_id = 25040103, pos = { x = -350.816, y = 317.405, z = 1415.576 }, rot = { x = 0.000, y = 278.514, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, title_id = 10087, special_name_id = 10120, area_id = 19 }
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
	-- 没摧毁炼金营地Trigger
	{ config_id = 1426004, name = "ANY_MONSTER_DIE_426004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426004", action = "action_EVENT_ANY_MONSTER_DIE_426004" },
	-- 摧毁了炼金营地Trigger
	{ config_id = 1426005, name = "ANY_MONSTER_DIE_426005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426005", action = "action_EVENT_ANY_MONSTER_DIE_426005" },
	-- 加载最终战斗Trigger
	{ config_id = 1426031, name = "ANY_MONSTER_DIE_426031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426031", action = "action_EVENT_ANY_MONSTER_DIE_426031" },
	{ config_id = 1426033, name = "ANY_MONSTER_DIE_426033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426033", action = "action_EVENT_ANY_MONSTER_DIE_426033" },
	-- 没摧毁武器营地Trigger
	{ config_id = 1426034, name = "ANY_MONSTER_DIE_426034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426034", action = "action_EVENT_ANY_MONSTER_DIE_426034" },
	-- 摧毁了武器营地Trigger
	{ config_id = 1426035, name = "ANY_MONSTER_DIE_426035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426035", action = "action_EVENT_ANY_MONSTER_DIE_426035" },
	-- 没摧毁炊事营地Trigger
	{ config_id = 1426036, name = "ANY_MONSTER_DIE_426036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426036", action = "action_EVENT_ANY_MONSTER_DIE_426036" },
	-- 摧毁了炊事营地Trigger
	{ config_id = 1426037, name = "ANY_MONSTER_DIE_426037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426037", action = "action_EVENT_ANY_MONSTER_DIE_426037" },
	{ config_id = 1426038, name = "MONSTER_BATTLE_426038", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_426038" },
	{ config_id = 1426039, name = "ANY_MONSTER_DIE_426039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_426039", action = "action_EVENT_ANY_MONSTER_DIE_426039" },
	{ config_id = 1426040, name = "QUEST_FINISH_426040", event = EventType.EVENT_QUEST_FINISH, source = "7105407", condition = "", action = "action_EVENT_QUEST_FINISH_426040" },
	{ config_id = 1426041, name = "QUEST_FINISH_426041", event = EventType.EVENT_QUEST_FINISH, source = "7105408", condition = "", action = "action_EVENT_QUEST_FINISH_426041" },
	{ config_id = 1426042, name = "QUEST_FINISH_426042", event = EventType.EVENT_QUEST_FINISH, source = "7105409", condition = "", action = "action_EVENT_QUEST_FINISH_426042" },
	{ config_id = 1426044, name = "ANY_MONSTER_DIE_426044", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_426044", trigger_count = 3 },
	-- 保底，陈娇花杀完后记得变量标记任务完成
	{ config_id = 1426045, name = "GROUP_LOAD_426045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_426045", action = "action_EVENT_GROUP_LOAD_426045", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CookingCamp", value = 0, no_refresh = true },
	{ config_id = 2, name = "AlchemyCamp", value = 0, no_refresh = true },
	{ config_id = 3, name = "WeaponCamp", value = 0, no_refresh = true },
	{ config_id = 4, name = "AllCleared", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_426040", "QUEST_FINISH_426041", "QUEST_FINISH_426042", "GROUP_LOAD_426045" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一波,
		monsters = { 426001, 426002, 426003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426004", "ANY_MONSTER_DIE_426005", "MONSTER_BATTLE_426038", "QUEST_FINISH_426040", "QUEST_FINISH_426041", "QUEST_FINISH_426042", "ANY_MONSTER_DIE_426044", "GROUP_LOAD_426045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 没摧毁炼金营地,
		monsters = { 426006, 426007, 426008, 426009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426034", "ANY_MONSTER_DIE_426035" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 摧毁了炼金营地,
		monsters = { 426010, 426011, 426012, 426013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426034", "ANY_MONSTER_DIE_426035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 没摧毁武器营地,
		monsters = { 426014, 426015, 426016, 426017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426036", "ANY_MONSTER_DIE_426037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 摧毁了武器营地,
		monsters = { 426018, 426019, 426020, 426021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426036", "ANY_MONSTER_DIE_426037" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 没摧毁炊事营地,
		monsters = { 426022, 426023, 426024, 426025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426031" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 摧毁了炊事营地,
		monsters = { 426026, 426027, 426028, 426029 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426031" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 最终战斗,
		monsters = { 426030 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426033" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 最终战斗第二波,
		monsters = { 426032 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_426039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	-- 判断变量"AlchemyCamp"为0
	if ScriptLib.GetGroupVariableValue(context, "AlchemyCamp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 3)
	
	-- 调用提示id为 310642602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	-- 判断变量"AlchemyCamp"为1
	if ScriptLib.GetGroupVariableValue(context, "AlchemyCamp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426005(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 4)
	
	-- 调用提示id为 310642604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426031(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 9)
	
	-- 调用提示id为 310642614 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642614) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426033(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426033(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	-- 判断变量"WeaponCamp"为0
	if ScriptLib.GetGroupVariableValue(context, "WeaponCamp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 5)
	
	-- 调用提示id为 310642606 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642606) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426035(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	-- 判断变量"WeaponCamp"为1
	if ScriptLib.GetGroupVariableValue(context, "WeaponCamp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426035(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 6)
	
	-- 调用提示id为 310642608 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642608) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426036(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	-- 判断变量"CookingCamp"为0
	if ScriptLib.GetGroupVariableValue(context, "CookingCamp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426036(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 7)
	
	-- 调用提示id为 310642610 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642610) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426037(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106426) ~= 0 then
		return false
	end
	
	-- 判断变量"CookingCamp"为1
	if ScriptLib.GetGroupVariableValue(context, "CookingCamp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426037(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106426, 8)
	
	-- 调用提示id为 310642612 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642612) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_426038(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105411finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 310642601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_426039(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105412finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "AllCleared" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AllCleared", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_426040(context, evt)
	-- 将本组内变量名为 "CookingCamp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CookingCamp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_426041(context, evt)
	-- 将本组内变量名为 "AlchemyCamp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AlchemyCamp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_426042(context, evt)
	-- 将本组内变量名为 "WeaponCamp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WeaponCamp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_426044(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105411finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_426045(context, evt)
	-- 判断变量"AllCleared"为1
	if ScriptLib.GetGroupVariableValue(context, "AllCleared") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_426045(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7105412finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end