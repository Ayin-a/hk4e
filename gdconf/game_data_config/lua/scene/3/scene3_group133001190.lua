-- 基础信息
local base_info = {
	group_id = 133001190
}

-- Trigger变量
local defs = {
	challenge_id = 2010063,
	enter_region = 190029,
	leave_region = 190032,
	trigger_time = 6
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,6},
        [2] = {4,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[190001] = { config_id = 190001, monster_id = 22010204, pos = { x = 1207.193, y = 313.023, z = -1069.560 }, rot = { x = 0.000, y = 139.794, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[190004] = { config_id = 190004, monster_id = 21010401, pos = { x = 1215.340, y = 314.163, z = -1066.066 }, rot = { x = 0.000, y = 177.750, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 402, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[190005] = { config_id = 190005, monster_id = 21020201, pos = { x = 1210.786, y = 310.163, z = -1075.112 }, rot = { x = 0.000, y = 331.743, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[190007] = { config_id = 190007, monster_id = 21020202, pos = { x = 1213.080, y = 308.557, z = -1081.652 }, rot = { x = 0.000, y = 328.782, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[190008] = { config_id = 190008, monster_id = 22010102, pos = { x = 1214.958, y = 308.643, z = -1079.705 }, rot = { x = 0.000, y = 322.830, z = 0.000 }, level = 1, drop_tag = "深渊法师", affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[190014] = { config_id = 190014, monster_id = 21030101, pos = { x = 1206.364, y = 311.924, z = -1072.431 }, rot = { x = 0.000, y = 155.786, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[190003] = { config_id = 190003, gadget_id = 70800251, pos = { x = 1216.666, y = 309.590, z = -1075.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[190006] = { config_id = 190006, gadget_id = 70800251, pos = { x = 1214.750, y = 308.247, z = -1085.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[190009] = { config_id = 190009, gadget_id = 70800251, pos = { x = 1208.759, y = 310.868, z = -1077.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[190010] = { config_id = 190010, gadget_id = 70310015, pos = { x = 1206.988, y = 311.006, z = -1076.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	[190012] = { config_id = 190012, gadget_id = 70310015, pos = { x = 1213.799, y = 310.322, z = -1072.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	[190011] = { config_id = 190011, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1217.033, y = 309.521, z = -1067.110 }, area_id = 10 },
	[190029] = { config_id = 190029, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1214.230, y = 309.290, z = -1076.149 }, area_id = 10 },
	[190030] = { config_id = 190030, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1217.033, y = 309.521, z = -1067.110 }, area_id = 10 },
	[190032] = { config_id = 190032, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1214.230, y = 309.290, z = -1076.149 }, area_id = 10, team_ability_group_list = { "Activity_VintageChallenge_Stage_3" } }
}

-- 触发器
triggers = {
	{ config_id = 1190030, name = "ENTER_REGION_190030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190030", action = "action_EVENT_ENTER_REGION_190030" },
	{ config_id = 1190031, name = "ANY_MONSTER_DIE_190031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_190031", action = "action_EVENT_ANY_MONSTER_DIE_190031" },
	{ config_id = 1190033, name = "ANY_MONSTER_DIE_190033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_190033", action = "action_EVENT_ANY_MONSTER_DIE_190033" },
	{ config_id = 1190034, name = "ANY_MONSTER_DIE_190034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_190034", trigger_count = 0 },
	{ config_id = 1190036, name = "MONSTER_BATTLE_190036", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_190036" },
	{ config_id = 1190037, name = "TIME_AXIS_PASS_190037", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_SEED", condition = "", action = "action_EVENT_TIME_AXIS_PASS_190037" }
}

-- 变量
variables = {
	{ config_id = 4, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 190002, monster_id = 21010401, pos = { x = 1202.116, y = 314.804, z = -1076.100 }, rot = { x = 0.000, y = 96.758, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 402, climate_area_id = 1, area_id = 10 },
		{ config_id = 190013, monster_id = 21030303, pos = { x = 1210.542, y = 311.760, z = -1070.583 }, rot = { x = 0.000, y = 159.357, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10 }
	},
	gadgets = {
		{ config_id = 190035, gadget_id = 70300205, pos = { x = 1208.741, y = 305.712, z = -1095.381 }, rot = { x = 0.000, y = 138.088, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 190038, gadget_id = 70300205, pos = { x = 1234.525, y = 306.146, z = -1071.440 }, rot = { x = 0.000, y = 338.998, z = 6.491 }, level = 1, persistent = true, area_id = 10 }
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
		regions = { 190011, 190029, 190030, 190032 },
		triggers = { "ENTER_REGION_190030", "ANY_MONSTER_DIE_190034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 190010, 190012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 190001, 190004, 190005, 190014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_190033", "MONSTER_BATTLE_190036", "TIME_AXIS_PASS_190037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 190007, 190008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_190031" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 190003, 190006, 190009 },
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
function condition_EVENT_ENTER_REGION_190030(context, evt)
	if evt.param1 ~= 190030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190030(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001190, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_190031(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_190031(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001190, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_190033(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_190033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001190, 4)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001190, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001190, 6)
	
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
function action_EVENT_ANY_MONSTER_DIE_190034(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_190036(context, evt)
	-- 创建标识为"T_SEED"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_SEED", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_190037(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/CampChallenge"