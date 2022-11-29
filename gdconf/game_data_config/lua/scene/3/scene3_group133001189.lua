-- 基础信息
local base_info = {
	group_id = 133001189
}

-- Trigger变量
local defs = {
	challenge_id = 2010063,
	enter_region = 189018,
	leave_region = 189024,
	trigger_time = 7
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,5},
        [2] = {4,5},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[189001] = { config_id = 189001, monster_id = 21020201, pos = { x = 1395.306, y = 272.575, z = -1109.430 }, rot = { x = 0.000, y = 60.928, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[189002] = { config_id = 189002, monster_id = 21010201, pos = { x = 1398.365, y = 271.989, z = -1110.012 }, rot = { x = 0.000, y = 282.535, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[189003] = { config_id = 189003, monster_id = 22010104, pos = { x = 1390.895, y = 274.269, z = -1111.537 }, rot = { x = 0.000, y = 60.979, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[189005] = { config_id = 189005, monster_id = 21030603, pos = { x = 1397.644, y = 273.128, z = -1105.269 }, rot = { x = 0.000, y = 195.066, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[189008] = { config_id = 189008, monster_id = 21020202, pos = { x = 1400.535, y = 271.062, z = -1113.480 }, rot = { x = 0.000, y = 319.534, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[189010] = { config_id = 189010, monster_id = 21020202, pos = { x = 1394.799, y = 273.513, z = -1104.935 }, rot = { x = 0.000, y = 123.989, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[189014] = { config_id = 189014, monster_id = 21010201, pos = { x = 1397.618, y = 272.662, z = -1106.928 }, rot = { x = 0.000, y = 204.018, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[189013] = { config_id = 189013, gadget_id = 70800251, pos = { x = 1399.504, y = 274.109, z = -1104.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[189015] = { config_id = 189015, gadget_id = 70310017, pos = { x = 1397.047, y = 272.358, z = -1108.824 }, rot = { x = 0.000, y = 336.899, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 10 },
	[189028] = { config_id = 189028, gadget_id = 70800251, pos = { x = 1401.648, y = 271.921, z = -1111.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[189029] = { config_id = 189029, gadget_id = 70800251, pos = { x = 1392.360, y = 273.959, z = -1110.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	[189016] = { config_id = 189016, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1397.474, y = 272.397, z = -1107.991 }, area_id = 10 },
	[189018] = { config_id = 189018, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1399.218, y = 272.358, z = -1107.971 }, area_id = 10 },
	[189022] = { config_id = 189022, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1397.474, y = 272.397, z = -1107.991 }, area_id = 10 },
	[189024] = { config_id = 189024, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1399.218, y = 272.358, z = -1107.971 }, area_id = 10, team_ability_group_list = { "Activity_VintageChallenge_Stage_3" } }
}

-- 触发器
triggers = {
	{ config_id = 1189011, name = "MONSTER_BATTLE_189011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_189011" },
	{ config_id = 1189012, name = "TIME_AXIS_PASS_189012", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_SEED", condition = "", action = "action_EVENT_TIME_AXIS_PASS_189012" },
	{ config_id = 1189018, name = "ENTER_REGION_189018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189018", action = "action_EVENT_ENTER_REGION_189018" },
	{ config_id = 1189022, name = "ENTER_REGION_189022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189022", action = "action_EVENT_ENTER_REGION_189022" },
	{ config_id = 1189023, name = "ANY_MONSTER_DIE_189023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189023", action = "action_EVENT_ANY_MONSTER_DIE_189023" },
	{ config_id = 1189025, name = "ANY_MONSTER_DIE_189025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189025", action = "action_EVENT_ANY_MONSTER_DIE_189025" },
	{ config_id = 1189027, name = "ANY_MONSTER_DIE_189027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_189027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 4, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 189004, gadget_id = 70300083, pos = { x = 1385.103, y = 275.703, z = -1113.034 }, rot = { x = 0.000, y = 68.612, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 189006, gadget_id = 70300099, pos = { x = 1393.419, y = 272.714, z = -1113.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 189007, gadget_id = 70300099, pos = { x = 1391.814, y = 273.216, z = -1108.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 189009, gadget_id = 70220013, pos = { x = 1404.345, y = 271.175, z = -1118.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 189019, gadget_id = 70300086, pos = { x = 1405.912, y = 269.755, z = -1112.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 189020, gadget_id = 70300091, pos = { x = 1405.794, y = 269.921, z = -1112.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
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
		gadgets = { },
		regions = { 189016, 189018, 189022, 189024 },
		triggers = { "ENTER_REGION_189018", "ENTER_REGION_189022", "ANY_MONSTER_DIE_189027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 189015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 189001, 189002, 189003, 189014 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_189011", "TIME_AXIS_PASS_189012", "ANY_MONSTER_DIE_189025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 189005, 189008, 189010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_189023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 189013, 189028, 189029 },
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
function action_EVENT_MONSTER_BATTLE_189011(context, evt)
	-- 创建标识为"T_SEED"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_SEED", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_189012(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189018(context, evt)
	if evt.param1 ~= 189018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189018(context, evt)
	-- 显示id为205的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,205,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189022(context, evt)
	if evt.param1 ~= 189022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001189, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_189023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189023(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001189, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_189025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001189, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001189, 5)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001189, 5)
	
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
function action_EVENT_ANY_MONSTER_DIE_189027(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_1/CampChallenge"