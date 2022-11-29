-- 基础信息
local base_info = {
	group_id = 133003054
}

-- Trigger变量
local defs = {
	challenge_id = 2010064,
	enter_region = 54026,
	leave_region = 54027,
	trigger_time = 8
}

-- DEFS_MISCS
local Phase ={
        [1] = {4,7},
        [2] = {5,7},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[54004] = { config_id = 54004, monster_id = 21020101, pos = { x = 1970.720, y = 194.441, z = -1194.518 }, rot = { x = 0.000, y = 89.543, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[54005] = { config_id = 54005, monster_id = 21010101, pos = { x = 1985.066, y = 193.314, z = -1194.973 }, rot = { x = 0.000, y = 289.440, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 9016, area_id = 2, guest_ban_drop = 63 },
	[54006] = { config_id = 54006, monster_id = 21010701, pos = { x = 1987.421, y = 193.334, z = -1182.928 }, rot = { x = 0.000, y = 207.824, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[54007] = { config_id = 54007, monster_id = 21010502, pos = { x = 1997.667, y = 195.963, z = -1184.271 }, rot = { x = 0.000, y = 281.187, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 32, area_id = 2, guest_ban_drop = 63 },
	[54008] = { config_id = 54008, monster_id = 21011001, pos = { x = 1974.910, y = 196.230, z = -1188.000 }, rot = { x = 0.000, y = 10.909, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 32, area_id = 2, guest_ban_drop = 63 },
	[54009] = { config_id = 54009, monster_id = 21011002, pos = { x = 1976.398, y = 196.146, z = -1187.481 }, rot = { x = 0.000, y = 347.403, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 32, area_id = 2, guest_ban_drop = 63 },
	[54040] = { config_id = 54040, monster_id = 21020202, pos = { x = 1981.260, y = 194.114, z = -1187.604 }, rot = { x = 0.000, y = 139.484, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 401, area_id = 2, guest_ban_drop = 63 },
	[54050] = { config_id = 54050, monster_id = 20011201, pos = { x = 1982.900, y = 194.061, z = -1193.676 }, rot = { x = 0.000, y = 37.937, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[54011] = { config_id = 54011, gadget_id = 70300085, pos = { x = 1982.418, y = 193.432, z = -1193.909 }, rot = { x = 352.858, y = 324.324, z = 0.740 }, level = 15, isOneoff = true, persistent = true, area_id = 2 },
	[54015] = { config_id = 54015, gadget_id = 70290196, pos = { x = 1988.586, y = 193.468, z = -1186.624 }, rot = { x = 0.000, y = 191.639, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[54021] = { config_id = 54021, gadget_id = 70220014, pos = { x = 1984.486, y = 193.230, z = -1196.449 }, rot = { x = 0.000, y = 348.006, z = 0.000 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 2 },
	[54023] = { config_id = 54023, gadget_id = 70800251, pos = { x = 1985.933, y = 193.827, z = -1197.465 }, rot = { x = 359.105, y = 37.821, z = 0.000 }, level = 1, area_id = 2 },
	[54024] = { config_id = 54024, gadget_id = 70800251, pos = { x = 1977.675, y = 194.129, z = -1194.452 }, rot = { x = 0.000, y = 37.821, z = 0.000 }, level = 1, area_id = 2 },
	[54025] = { config_id = 54025, gadget_id = 70800251, pos = { x = 1985.477, y = 194.023, z = -1187.981 }, rot = { x = 0.000, y = 11.810, z = 0.000 }, level = 1, area_id = 2 },
	[54036] = { config_id = 54036, gadget_id = 70300083, pos = { x = 1983.441, y = 193.164, z = -1200.694 }, rot = { x = 0.218, y = 347.881, z = 2.521 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[54037] = { config_id = 54037, gadget_id = 70300083, pos = { x = 1989.863, y = 192.842, z = -1177.825 }, rot = { x = 4.630, y = 31.769, z = 1.304 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[54038] = { config_id = 54038, gadget_id = 70300087, pos = { x = 1982.947, y = 194.061, z = -1193.642 }, rot = { x = 357.296, y = 34.054, z = 356.021 }, level = 1, isOneoff = true, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	[54001] = { config_id = 54001, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1985.475, y = 193.401, z = -1192.989 }, height = 100.000, area_id = 2 },
	[54026] = { config_id = 54026, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1985.500, y = 193.402, z = -1193.019 }, area_id = 2 },
	[54027] = { config_id = 54027, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1985.475, y = 193.401, z = -1192.989 }, height = 100.000, area_id = 2, team_ability_group_list = { "Activity_VintageChallenge_Stage_1" } },
	[54031] = { config_id = 54031, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1985.475, y = 193.401, z = -1192.989 }, height = 100.000, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1054028, name = "ANY_MONSTER_DIE_54028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_54028", trigger_count = 0 },
	{ config_id = 1054029, name = "ANY_MONSTER_DIE_54029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54029", action = "action_EVENT_ANY_MONSTER_DIE_54029" },
	{ config_id = 1054030, name = "MONSTER_BATTLE_54030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_54030" },
	{ config_id = 1054031, name = "ENTER_REGION_54031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54031", action = "action_EVENT_ENTER_REGION_54031" },
	{ config_id = 1054032, name = "TIME_AXIS_PASS_54032", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_54032" },
	{ config_id = 1054051, name = "ANY_MONSTER_DIE_54051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54051", action = "action_EVENT_ANY_MONSTER_DIE_54051" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 54003, monster_id = 21010501, pos = { x = 1997.639, y = 195.730, z = -1185.399 }, rot = { x = 0.000, y = 245.897, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5216 }, isOneoff = true, pose_id = 32, area_id = 2 },
		{ config_id = 54049, monster_id = 20011201, pos = { x = 1983.896, y = 193.766, z = -1203.883 }, rot = { x = 0.000, y = 37.821, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 2 }
	},
	gadgets = {
		{ config_id = 54012, gadget_id = 70300085, pos = { x = 1983.802, y = 193.055, z = -1203.925 }, rot = { x = 1.383, y = 327.537, z = 1.446 }, level = 15, isOneoff = true, persistent = true, area_id = 2 },
		{ config_id = 54039, gadget_id = 70300087, pos = { x = 1983.884, y = 193.563, z = -1203.963 }, rot = { x = 0.000, y = 37.821, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 }
	}
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
		gadgets = { 54015 },
		regions = { 54001, 54026, 54027, 54031 },
		triggers = { "ANY_MONSTER_DIE_54028", "ENTER_REGION_54031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 54011, 54021, 54036, 54037, 54038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 54005, 54009, 54040, 54050 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_54029", "MONSTER_BATTLE_54030", "TIME_AXIS_PASS_54032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 54004, 54006, 54007, 54008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_54051" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 54023, 54024, 54025 },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54028(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133003054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003054) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003054, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003054, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003054, 7)
	
	-- 调用提示id为 400075 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "STAGE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "STAGE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_54030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54031(context, evt)
	if evt.param1 ~= 54031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54031(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003054, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_54032(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54051(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003054, 7)
	
	return 0
end

require "V3_1/CampChallenge"