-- 基础信息
local base_info = {
	group_id = 133003057
}

-- Trigger变量
local defs = {
	challenge_id = 2010064,
	enter_region = 57026,
	leave_region = 57027,
	trigger_time = 7
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
	[57001] = { config_id = 57001, monster_id = 22010101, pos = { x = 2042.867, y = 223.384, z = -1567.440 }, rot = { x = 0.000, y = 272.454, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 9013, area_id = 1, guest_ban_drop = 63 },
	[57002] = { config_id = 57002, monster_id = 22010301, pos = { x = 2038.195, y = 222.822, z = -1569.389 }, rot = { x = 0.000, y = 42.989, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 9013, area_id = 1, guest_ban_drop = 63 },
	[57004] = { config_id = 57004, monster_id = 22010404, pos = { x = 2035.336, y = 222.377, z = -1566.798 }, rot = { x = 0.000, y = 93.551, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[57007] = { config_id = 57007, monster_id = 21030401, pos = { x = 2044.125, y = 223.872, z = -1563.972 }, rot = { x = 0.000, y = 267.738, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[57008] = { config_id = 57008, monster_id = 21030401, pos = { x = 2043.885, y = 223.518, z = -1570.476 }, rot = { x = 0.000, y = 269.226, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[57009] = { config_id = 57009, monster_id = 21010402, pos = { x = 2031.782, y = 228.577, z = -1555.160 }, rot = { x = 0.000, y = 109.232, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 402, area_id = 1, guest_ban_drop = 63 },
	[57010] = { config_id = 57010, monster_id = 21010201, pos = { x = 2038.821, y = 223.327, z = -1564.407 }, rot = { x = 0.000, y = 161.151, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, pose_id = 9012, area_id = 1, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[57006] = { config_id = 57006, gadget_id = 70300099, pos = { x = 2040.064, y = 223.136, z = -1567.298 }, rot = { x = 3.433, y = 286.224, z = 6.056 }, level = 15, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 1 },
	[57015] = { config_id = 57015, gadget_id = 70290196, pos = { x = 2039.620, y = 223.008, z = -1568.841 }, rot = { x = 358.221, y = 359.903, z = 6.242 }, level = 1, persistent = true, area_id = 1 },
	[57023] = { config_id = 57023, gadget_id = 70800251, pos = { x = 2044.595, y = 224.285, z = -1572.590 }, rot = { x = 1.938, y = 357.900, z = 9.210 }, level = 1, area_id = 1 },
	[57024] = { config_id = 57024, gadget_id = 70800251, pos = { x = 2034.723, y = 222.844, z = -1567.572 }, rot = { x = 355.537, y = 10.307, z = 8.441 }, level = 1, area_id = 1 },
	[57025] = { config_id = 57025, gadget_id = 70800251, pos = { x = 2046.634, y = 224.702, z = -1563.880 }, rot = { x = 351.344, y = 356.573, z = 3.135 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	[57003] = { config_id = 57003, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2042.437, y = 223.343, z = -1568.014 }, height = 70.000, area_id = 1 },
	[57026] = { config_id = 57026, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2042.474, y = 223.349, z = -1568.024 }, area_id = 1 },
	[57027] = { config_id = 57027, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2042.437, y = 223.343, z = -1568.014 }, height = 70.000, area_id = 1, team_ability_group_list = { "Activity_VintageChallenge_Stage_1" } },
	[57031] = { config_id = 57031, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2042.437, y = 223.343, z = -1568.014 }, height = 70.000, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1057028, name = "ANY_MONSTER_DIE_57028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_57028", trigger_count = 0 },
	{ config_id = 1057029, name = "ANY_MONSTER_DIE_57029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57029", action = "action_EVENT_ANY_MONSTER_DIE_57029" },
	{ config_id = 1057030, name = "MONSTER_BATTLE_57030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_57030" },
	{ config_id = 1057031, name = "ENTER_REGION_57031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57031", action = "action_EVENT_ENTER_REGION_57031" },
	{ config_id = 1057032, name = "TIME_AXIS_PASS_57032", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_57032" },
	{ config_id = 1057034, name = "ANY_MONSTER_DIE_57034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57034", action = "action_EVENT_ANY_MONSTER_DIE_57034" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 57013, monster_id = 21030401, pos = { x = 2045.272, y = 223.600, z = -1567.726 }, rot = { x = 0.000, y = 276.426, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 1 }
	},
	gadgets = {
		{ config_id = 57012, gadget_id = 70310002, pos = { x = 2043.245, y = 223.642, z = -1575.370 }, rot = { x = 0.000, y = 340.571, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 1 },
		{ config_id = 57014, gadget_id = 70220035, pos = { x = 2032.401, y = 228.577, z = -1554.507 }, rot = { x = 0.000, y = 1.947, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 1 },
		{ config_id = 57016, gadget_id = 70300086, pos = { x = 2041.167, y = 224.478, z = -1559.201 }, rot = { x = 355.821, y = 1.330, z = 359.014 }, level = 1, isOneoff = true, persistent = true, area_id = 1 },
		{ config_id = 57017, gadget_id = 70300086, pos = { x = 2037.802, y = 223.241, z = -1575.839 }, rot = { x = 355.806, y = 0.396, z = 359.082 }, level = 1, isOneoff = true, persistent = true, area_id = 1 },
		{ config_id = 57018, gadget_id = 70300091, pos = { x = 2041.092, y = 224.442, z = -1559.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 1 },
		{ config_id = 57021, gadget_id = 70310002, pos = { x = 2045.509, y = 224.468, z = -1561.242 }, rot = { x = 0.000, y = 32.702, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 1 },
		{ config_id = 57033, gadget_id = 70300091, pos = { x = 2037.797, y = 223.246, z = -1575.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 1 }
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
		gadgets = { 57015 },
		regions = { 57003, 57026, 57027, 57031 },
		triggers = { "ANY_MONSTER_DIE_57028", "ENTER_REGION_57031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57006 },
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
		monsters = { 57001, 57002, 57009, 57010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57029", "MONSTER_BATTLE_57030", "TIME_AXIS_PASS_57032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 57004, 57007, 57008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57034" },
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
		gadgets = { 57023, 57024, 57025 },
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
function action_EVENT_ANY_MONSTER_DIE_57028(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133003057) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003057) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003057, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003057, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003057, 7)
	
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
function action_EVENT_MONSTER_BATTLE_57030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57031(context, evt)
	if evt.param1 ~= 57031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57031(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003057, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57032(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57034(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57034(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003057, 7)
	
	return 0
end

require "V3_1/CampChallenge"