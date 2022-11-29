-- 基础信息
local base_info = {
	group_id = 133001191
}

-- Trigger变量
local defs = {
	challenge_id = 2010063,
	enter_region = 191020,
	leave_region = 191024,
	trigger_time = 7
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,6},
        [2] = {5,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[191002] = { config_id = 191002, monster_id = 22010202, pos = { x = 1019.353, y = 316.265, z = -1129.145 }, rot = { x = 0.000, y = 73.826, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[191003] = { config_id = 191003, monster_id = 21020202, pos = { x = 1023.629, y = 316.754, z = -1131.938 }, rot = { x = 0.000, y = 116.614, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[191004] = { config_id = 191004, monster_id = 21010701, pos = { x = 1022.836, y = 316.277, z = -1126.883 }, rot = { x = 0.000, y = 355.600, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[191009] = { config_id = 191009, monster_id = 21010101, pos = { x = 1024.286, y = 316.017, z = -1122.481 }, rot = { x = 0.000, y = 333.750, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9016, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[191010] = { config_id = 191010, monster_id = 21020801, pos = { x = 1017.336, y = 316.230, z = -1130.765 }, rot = { x = 0.000, y = 58.507, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[191011] = { config_id = 191011, monster_id = 22010403, pos = { x = 1020.455, y = 316.303, z = -1128.689 }, rot = { x = 0.000, y = 73.855, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[191014] = { config_id = 191014, monster_id = 21010101, pos = { x = 1027.363, y = 317.013, z = -1131.169 }, rot = { x = 0.000, y = 137.165, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9016, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[191001] = { config_id = 191001, gadget_id = 70710200, pos = { x = 1031.549, y = 316.018, z = -1131.994 }, rot = { x = 0.000, y = 304.187, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	[191012] = { config_id = 191012, gadget_id = 70310017, pos = { x = 1019.162, y = 316.181, z = -1126.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	[191019] = { config_id = 191019, gadget_id = 70800251, pos = { x = 1017.319, y = 316.328, z = -1125.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[191023] = { config_id = 191023, gadget_id = 70800251, pos = { x = 1024.990, y = 317.830, z = -1134.435 }, rot = { x = 0.000, y = 353.878, z = 0.000 }, level = 1, area_id = 10 },
	[191028] = { config_id = 191028, gadget_id = 70800251, pos = { x = 1028.511, y = 316.723, z = -1124.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[191029] = { config_id = 191029, gadget_id = 70710198, pos = { x = 1021.270, y = 313.354, z = -1122.370 }, rot = { x = 0.000, y = 186.835, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	[191015] = { config_id = 191015, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1019.731, y = 316.254, z = -1127.950 }, area_id = 10 },
	[191018] = { config_id = 191018, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1024.113, y = 316.749, z = -1131.360 }, area_id = 10 },
	[191020] = { config_id = 191020, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1019.731, y = 316.254, z = -1127.950 }, area_id = 10 },
	[191024] = { config_id = 191024, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1019.731, y = 316.254, z = -1127.950 }, area_id = 10, team_ability_group_list = { "Activity_VintageChallenge_Stage_3" } }
}

-- 触发器
triggers = {
	{ config_id = 1191018, name = "ENTER_REGION_191018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191018", action = "action_EVENT_ENTER_REGION_191018" },
	{ config_id = 1191021, name = "ANY_MONSTER_DIE_191021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191021", action = "action_EVENT_ANY_MONSTER_DIE_191021" },
	{ config_id = 1191025, name = "ANY_MONSTER_DIE_191025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_191025", trigger_count = 0 },
	{ config_id = 1191026, name = "MONSTER_BATTLE_191026", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_191026" },
	{ config_id = 1191027, name = "TIME_AXIS_PASS_191027", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_SEED", condition = "", action = "action_EVENT_TIME_AXIS_PASS_191027" },
	{ config_id = 1191035, name = "ANY_MONSTER_DIE_191035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191035", action = "action_EVENT_ANY_MONSTER_DIE_191035" }
}

-- 变量
variables = {
	{ config_id = 4, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 191005, monster_id = 21030603, pos = { x = 1004.365, y = 316.191, z = -1131.945 }, rot = { x = 0.000, y = 111.730, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 191006, monster_id = 21011401, pos = { x = 1011.964, y = 316.045, z = -1137.487 }, rot = { x = 0.000, y = 314.287, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 191007, monster_id = 21011401, pos = { x = 1013.041, y = 316.042, z = -1136.384 }, rot = { x = 0.000, y = 295.784, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 191008, monster_id = 21010901, pos = { x = 1008.016, y = 315.988, z = -1126.037 }, rot = { x = 0.000, y = 197.920, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 191013, monster_id = 21010201, pos = { x = 1025.997, y = 317.296, z = -1133.967 }, rot = { x = 0.000, y = 105.120, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 9016, climate_area_id = 1, area_id = 10 }
	},
	gadgets = {
		{ config_id = 191016, gadget_id = 70310015, pos = { x = 1026.847, y = 317.181, z = -1132.489 }, rot = { x = 0.000, y = 351.187, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
		{ config_id = 191030, gadget_id = 70220043, pos = { x = 1017.239, y = 316.519, z = -1122.884 }, rot = { x = 0.000, y = 184.071, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 191031, gadget_id = 70310015, pos = { x = 1018.730, y = 316.328, z = -1123.611 }, rot = { x = 0.000, y = 351.187, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
		{ config_id = 191034, gadget_id = 70220043, pos = { x = 1025.863, y = 317.598, z = -1136.077 }, rot = { x = 0.000, y = 128.118, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
	},
	triggers = {
		{ config_id = 1191022, name = "ANY_MONSTER_DIE_191022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191022", action = "action_EVENT_ANY_MONSTER_DIE_191022" }
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
		regions = { 191015, 191018, 191020, 191024 },
		triggers = { "ENTER_REGION_191018", "ANY_MONSTER_DIE_191025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 191001, 191012, 191029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 191002, 191003, 191004, 191009, 191014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191021", "MONSTER_BATTLE_191026", "TIME_AXIS_PASS_191027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 191010, 191011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191035" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 191019, 191023, 191028 },
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
function condition_EVENT_ENTER_REGION_191018(context, evt)
	if evt.param1 ~= 191018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001191, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_191021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_191021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001191, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001191, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001191, 6)
	
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
function action_EVENT_ANY_MONSTER_DIE_191025(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001191) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_191026(context, evt)
	-- 创建标识为"T_SEED"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_SEED", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_191027(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_191035(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_191035(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001191, 6)
	
	return 0
end

require "V3_1/CampChallenge"