-- 基础信息
local base_info = {
	group_id = 133003050
}

-- Trigger变量
local defs = {
	challenge_id = 2010064,
	enter_region = 50026,
	leave_region = 50027,
	trigger_time = 9
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
	[50001] = { config_id = 50001, monster_id = 25010701, pos = { x = 1897.792, y = 248.671, z = -991.820 }, rot = { x = 0.000, y = 202.858, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 9003, area_id = 3, guest_ban_drop = 63 },
	[50003] = { config_id = 50003, monster_id = 25020201, pos = { x = 1910.872, y = 248.609, z = -998.525 }, rot = { x = 0.000, y = 280.410, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 2, area_id = 3, guest_ban_drop = 63 },
	[50004] = { config_id = 50004, monster_id = 25010701, pos = { x = 1898.567, y = 248.503, z = -997.990 }, rot = { x = 0.000, y = 99.731, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[50005] = { config_id = 50005, monster_id = 25010201, pos = { x = 1906.638, y = 248.327, z = -999.851 }, rot = { x = 0.000, y = 341.934, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[50006] = { config_id = 50006, monster_id = 25070101, pos = { x = 1908.775, y = 248.302, z = -999.836 }, rot = { x = 0.000, y = 311.072, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[50007] = { config_id = 50007, monster_id = 25020201, pos = { x = 1902.657, y = 248.671, z = -990.528 }, rot = { x = 0.000, y = 173.761, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[50008] = { config_id = 50008, monster_id = 25020201, pos = { x = 1899.540, y = 248.669, z = -996.031 }, rot = { x = 0.000, y = 345.454, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[50009] = { config_id = 50009, monster_id = 25020201, pos = { x = 1911.647, y = 248.723, z = -993.852 }, rot = { x = 0.000, y = 242.226, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 3, area_id = 3, guest_ban_drop = 63 },
	[50010] = { config_id = 50010, monster_id = 25010201, pos = { x = 1903.852, y = 248.671, z = -995.671 }, rot = { x = 0.000, y = 293.059, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 9006, area_id = 3, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[50011] = { config_id = 50011, gadget_id = 70310006, pos = { x = 1904.915, y = 248.422, z = -998.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[50012] = { config_id = 50012, gadget_id = 70300105, pos = { x = 1902.644, y = 248.449, z = -1001.853 }, rot = { x = 5.938, y = 108.277, z = 3.755 }, level = 15, isOneoff = true, persistent = true, area_id = 3 },
	[50014] = { config_id = 50014, gadget_id = 70800251, pos = { x = 1910.069, y = 249.008, z = -999.312 }, rot = { x = 0.000, y = 351.517, z = 0.000 }, level = 1, area_id = 3 },
	[50015] = { config_id = 50015, gadget_id = 70290196, pos = { x = 1897.420, y = 248.671, z = -994.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[50017] = { config_id = 50017, gadget_id = 71700226, pos = { x = 1900.686, y = 248.350, z = -1000.019 }, rot = { x = 0.000, y = 242.757, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[50023] = { config_id = 50023, gadget_id = 70800251, pos = { x = 1901.404, y = 249.247, z = -993.978 }, rot = { x = 0.000, y = 351.517, z = 0.000 }, level = 1, area_id = 3 },
	[50025] = { config_id = 50025, gadget_id = 70800251, pos = { x = 1910.324, y = 249.150, z = -993.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[50036] = { config_id = 50036, gadget_id = 71700435, pos = { x = 1895.856, y = 248.671, z = -995.269 }, rot = { x = 357.788, y = 194.373, z = 3.331 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[50037] = { config_id = 50037, gadget_id = 71700435, pos = { x = 1897.033, y = 248.671, z = -993.500 }, rot = { x = 359.105, y = 224.261, z = 359.105 }, level = 1, isOneoff = true, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	[50019] = { config_id = 50019, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1907.436, y = 248.671, z = -992.921 }, height = 70.000, area_id = 3 },
	[50026] = { config_id = 50026, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1907.474, y = 248.671, z = -992.931 }, area_id = 3 },
	[50027] = { config_id = 50027, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1907.436, y = 248.671, z = -992.921 }, height = 70.000, area_id = 3, team_ability_group_list = { "Activity_VintageChallenge_Stage_1" } },
	[50031] = { config_id = 50031, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1907.436, y = 248.671, z = -992.921 }, height = 70.000, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1050026, name = "ENTER_REGION_50026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50026", action = "action_EVENT_ENTER_REGION_50026" },
	{ config_id = 1050028, name = "ANY_MONSTER_DIE_50028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_50028", trigger_count = 0 },
	{ config_id = 1050029, name = "ANY_MONSTER_DIE_50029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50029", action = "action_EVENT_ANY_MONSTER_DIE_50029", trigger_count = 0 },
	{ config_id = 1050030, name = "MONSTER_BATTLE_50030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_50030" },
	{ config_id = 1050031, name = "ENTER_REGION_50031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50031", action = "action_EVENT_ENTER_REGION_50031" },
	{ config_id = 1050032, name = "TIME_AXIS_PASS_50032", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_50032" },
	{ config_id = 1050038, name = "ANY_MONSTER_DIE_50038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50038", action = "action_EVENT_ANY_MONSTER_DIE_50038" }
}

-- 变量
variables = {
	{ config_id = 6, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 50002, monster_id = 25010201, pos = { x = 1904.385, y = 249.243, z = -989.558 }, rot = { x = 0.000, y = 264.513, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 3 },
		{ config_id = 50035, monster_id = 25010201, pos = { x = 1902.324, y = 248.671, z = -995.374 }, rot = { x = 0.000, y = 101.508, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 5216 }, isOneoff = true, pose_id = 9006, area_id = 3 }
	},
	gadgets = {
		{ config_id = 50013, gadget_id = 70950138, pos = { x = 1895.615, y = 248.217, z = -1002.089 }, rot = { x = 358.685, y = 170.749, z = 357.495 }, level = 15, persistent = true, area_id = 3 },
		{ config_id = 50016, gadget_id = 70950138, pos = { x = 1909.780, y = 248.671, z = -1009.209 }, rot = { x = 0.000, y = 73.123, z = 0.000 }, level = 15, persistent = true, area_id = 3 },
		{ config_id = 50018, gadget_id = 71700226, pos = { x = 1901.738, y = 248.464, z = -1001.694 }, rot = { x = 0.000, y = 210.998, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
		{ config_id = 50022, gadget_id = 70310001, pos = { x = 1908.916, y = 248.671, z = -995.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 3 }
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
		gadgets = { 50015 },
		regions = { 50019, 50026, 50027, 50031 },
		triggers = { "ENTER_REGION_50026", "ANY_MONSTER_DIE_50028", "ENTER_REGION_50031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 50011, 50012, 50017, 50036, 50037 },
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
		monsters = { 50001, 50003, 50005, 50009, 50010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_50029", "MONSTER_BATTLE_50030", "TIME_AXIS_PASS_50032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 50004, 50006, 50007, 50008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_50038" },
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
		gadgets = { 50014, 50023, 50025 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_50026(context, evt)
	if evt.param1 ~= 50026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50026(context, evt)
	-- 显示id为205的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,205,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50028(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133003050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_50029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50029(context, evt)
	-- 针对当前group内变量名为 "STAGE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "STAGE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 400075 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003050, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003050, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003050, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_50030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_50031(context, evt)
	if evt.param1 ~= 50031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50031(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003050, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_50032(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_50038(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50038(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003050, 7)
	
	return 0
end

require "V3_1/CampChallenge"