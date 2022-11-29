-- 基础信息
local base_info = {
	group_id = 133001184
}

-- Trigger变量
local defs = {
	challenge_id = 2010070,
	enter_region = 184026,
	leave_region = 184027,
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
	[184001] = { config_id = 184001, monster_id = 21020101, pos = { x = 2038.093, y = 231.425, z = -682.780 }, rot = { x = 0.000, y = 222.287, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[184002] = { config_id = 184002, monster_id = 21010301, pos = { x = 2027.879, y = 228.712, z = -683.706 }, rot = { x = 0.000, y = 36.578, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[184003] = { config_id = 184003, monster_id = 21010402, pos = { x = 2025.352, y = 234.889, z = -680.977 }, rot = { x = 0.000, y = 132.471, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 402, area_id = 3, guest_ban_drop = 63 },
	[184004] = { config_id = 184004, monster_id = 21020101, pos = { x = 2026.091, y = 227.213, z = -695.685 }, rot = { x = 0.000, y = 27.760, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[184005] = { config_id = 184005, monster_id = 21010301, pos = { x = 2030.469, y = 229.458, z = -685.956 }, rot = { x = 0.000, y = 36.847, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[184006] = { config_id = 184006, monster_id = 21010701, pos = { x = 2034.672, y = 228.907, z = -694.372 }, rot = { x = 0.000, y = 305.278, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[184007] = { config_id = 184007, monster_id = 21010301, pos = { x = 2035.835, y = 229.279, z = -692.900 }, rot = { x = 0.000, y = 318.744, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[184009] = { config_id = 184009, monster_id = 21010402, pos = { x = 2025.352, y = 234.889, z = -680.977 }, rot = { x = 0.000, y = 132.471, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 402, area_id = 3, guest_ban_drop = 63 },
	[184016] = { config_id = 184016, monster_id = 21010301, pos = { x = 2033.638, y = 229.973, z = -688.021 }, rot = { x = 0.000, y = 33.609, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[184011] = { config_id = 184011, gadget_id = 70300089, pos = { x = 2029.275, y = 229.049, z = -682.579 }, rot = { x = 0.000, y = 12.099, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[184013] = { config_id = 184013, gadget_id = 70300081, pos = { x = 2038.227, y = 229.195, z = -693.766 }, rot = { x = 356.429, y = 15.146, z = 0.210 }, level = 15, isOneoff = true, persistent = true, area_id = 3 },
	[184014] = { config_id = 184014, gadget_id = 70300081, pos = { x = 2019.635, y = 228.803, z = -684.794 }, rot = { x = 7.577, y = 206.276, z = 2.738 }, level = 15, isOneoff = true, persistent = true, area_id = 3 },
	[184015] = { config_id = 184015, gadget_id = 70290196, pos = { x = 2028.234, y = 228.685, z = -686.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	[184017] = { config_id = 184017, gadget_id = 70300090, pos = { x = 2024.826, y = 229.489, z = -679.960 }, rot = { x = 0.000, y = 275.357, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	[184019] = { config_id = 184019, gadget_id = 70300089, pos = { x = 2034.706, y = 230.259, z = -686.716 }, rot = { x = 0.000, y = 12.099, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[184023] = { config_id = 184023, gadget_id = 70800251, pos = { x = 2031.376, y = 229.324, z = -692.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[184024] = { config_id = 184024, gadget_id = 70800251, pos = { x = 2025.434, y = 228.934, z = -686.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[184025] = { config_id = 184025, gadget_id = 70800251, pos = { x = 2034.311, y = 231.178, z = -682.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[184032] = { config_id = 184032, gadget_id = 70710544, pos = { x = 2019.187, y = 227.419, z = -692.422 }, rot = { x = 350.060, y = 318.028, z = 22.516 }, level = 1, isOneoff = true, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	[184020] = { config_id = 184020, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2031.543, y = 229.515, z = -686.848 }, area_id = 3 },
	[184021] = { config_id = 184021, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2031.505, y = 229.512, z = -686.838 }, area_id = 3 },
	[184022] = { config_id = 184022, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2031.543, y = 229.515, z = -686.848 }, area_id = 3 },
	[184026] = { config_id = 184026, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2031.543, y = 229.515, z = -686.848 }, area_id = 3 },
	[184027] = { config_id = 184027, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2031.505, y = 229.512, z = -686.838 }, area_id = 3, team_ability_group_list = { "Activity_VintageChallenge_Stage_2" } }
}

-- 触发器
triggers = {
	{ config_id = 1184021, name = "ENTER_REGION_184021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184021", action = "action_EVENT_ENTER_REGION_184021" },
	{ config_id = 1184022, name = "ENTER_REGION_184022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184022", action = "action_EVENT_ENTER_REGION_184022" },
	{ config_id = 1184028, name = "ANY_MONSTER_DIE_184028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_184028", trigger_count = 0 },
	{ config_id = 1184029, name = "ANY_MONSTER_DIE_184029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_184029", action = "action_EVENT_ANY_MONSTER_DIE_184029" },
	{ config_id = 1184030, name = "MONSTER_BATTLE_184030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_184030" },
	{ config_id = 1184031, name = "ANY_MONSTER_DIE_184031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_184031", action = "action_EVENT_ANY_MONSTER_DIE_184031" },
	{ config_id = 1184037, name = "TIME_AXIS_PASS_184037", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184037" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 184008, monster_id = 21010402, pos = { x = 2030.783, y = 233.079, z = -696.417 }, rot = { x = 0.000, y = 326.190, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 402, area_id = 3, guest_ban_drop = 63 },
		{ config_id = 184010, monster_id = 21010201, pos = { x = 2021.481, y = 227.477, z = -695.518 }, rot = { x = 0.000, y = 329.594, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217 }, isOneoff = true, pose_id = 9016, area_id = 3 }
	},
	gadgets = {
		{ config_id = 184012, gadget_id = 70300089, pos = { x = 2031.983, y = 229.928, z = -684.633 }, rot = { x = 0.000, y = 12.099, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
		{ config_id = 184018, gadget_id = 70300090, pos = { x = 2031.881, y = 227.679, z = -699.639 }, rot = { x = 0.000, y = 68.297, z = 0.000 }, level = 1, persistent = true, area_id = 3 }
	},
	regions = {
		{ config_id = 184036, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 2031.505, y = 229.512, z = -686.838 }, height = 60.000, area_id = 3 }
	},
	triggers = {
		{ config_id = 1184036, name = "ENTER_REGION_184036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184036", action = "action_EVENT_ENTER_REGION_184036" }
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
		gadgets = { 184015 },
		regions = { 184020, 184021, 184022, 184026, 184027 },
		triggers = { "ENTER_REGION_184021", "ENTER_REGION_184022", "ANY_MONSTER_DIE_184028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 184011, 184013, 184014, 184017, 184019, 184032 },
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
		monsters = { 184001, 184002, 184003, 184005, 184016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_184029", "MONSTER_BATTLE_184030", "TIME_AXIS_PASS_184037" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 184004, 184006, 184007, 184009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_184031" },
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
		gadgets = { 184023, 184024, 184025 },
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
function condition_EVENT_ENTER_REGION_184021(context, evt)
	if evt.param1 ~= 184021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184021(context, evt)
	-- 显示id为205的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,205,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184022(context, evt)
	if evt.param1 ~= 184022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001184, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_184028(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_184029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001184) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_184029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001184, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001184, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001184, 7)
	
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
function action_EVENT_MONSTER_BATTLE_184030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_184031(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_184031(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001184, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184037(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/CampChallenge"