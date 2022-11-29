-- 基础信息
local base_info = {
	group_id = 133001178
}

-- Trigger变量
local defs = {
	challenge_id = 2010063,
	enter_region = 178027,
	leave_region = 178031,
	trigger_time = 5
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
	[178001] = { config_id = 178001, monster_id = 21020401, pos = { x = 787.978, y = 199.748, z = -1290.340 }, rot = { x = 0.000, y = 63.586, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[178003] = { config_id = 178003, monster_id = 24010101, pos = { x = 797.694, y = 199.828, z = -1286.448 }, rot = { x = 0.000, y = 230.148, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 101, climate_area_id = 1, area_id = 10, guest_ban_drop = 63, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	[178004] = { config_id = 178004, monster_id = 21020202, pos = { x = 792.806, y = 199.891, z = -1287.128 }, rot = { x = 0.000, y = 71.970, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[178015] = { config_id = 178015, monster_id = 21020202, pos = { x = 794.404, y = 199.730, z = -1289.835 }, rot = { x = 0.000, y = 56.503, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[178016] = { config_id = 178016, monster_id = 21030603, pos = { x = 790.731, y = 199.778, z = -1289.905 }, rot = { x = 0.000, y = 86.412, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[178010] = { config_id = 178010, gadget_id = 70310015, pos = { x = 794.334, y = 199.900, z = -1284.753 }, rot = { x = 0.000, y = 14.744, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	[178022] = { config_id = 178022, gadget_id = 70310015, pos = { x = 797.479, y = 199.697, z = -1290.188 }, rot = { x = 0.000, y = 14.744, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	[178023] = { config_id = 178023, gadget_id = 70290196, pos = { x = 789.324, y = 199.658, z = -1293.342 }, rot = { x = 0.000, y = 276.487, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	[178038] = { config_id = 178038, gadget_id = 70800251, pos = { x = 784.877, y = 200.566, z = -1294.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[178039] = { config_id = 178039, gadget_id = 70800251, pos = { x = 785.429, y = 200.768, z = -1287.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[178040] = { config_id = 178040, gadget_id = 70800251, pos = { x = 793.497, y = 200.378, z = -1290.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	[178008] = { config_id = 178008, shape = RegionShape.SPHERE, radius = 70, pos = { x = 788.145, y = 199.666, z = -1292.490 }, area_id = 10 },
	[178025] = { config_id = 178025, shape = RegionShape.SPHERE, radius = 70, pos = { x = 788.145, y = 199.666, z = -1292.490 }, area_id = 10 },
	[178027] = { config_id = 178027, shape = RegionShape.SPHERE, radius = 40, pos = { x = 788.155, y = 199.666, z = -1292.452 }, area_id = 10 },
	[178031] = { config_id = 178031, shape = RegionShape.SPHERE, radius = 70, pos = { x = 788.155, y = 199.666, z = -1292.452 }, area_id = 10, team_ability_group_list = { "Activity_VintageChallenge_Stage_3" } }
}

-- 触发器
triggers = {
	{ config_id = 1178025, name = "ENTER_REGION_178025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178025", action = "action_EVENT_ENTER_REGION_178025" },
	{ config_id = 1178028, name = "ANY_MONSTER_DIE_178028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_178028", action = "action_EVENT_ANY_MONSTER_DIE_178028" },
	{ config_id = 1178032, name = "ANY_MONSTER_DIE_178032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_178032", trigger_count = 0 },
	{ config_id = 1178033, name = "MONSTER_BATTLE_178033", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_178033" },
	{ config_id = 1178034, name = "TIME_AXIS_PASS_178034", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_SEED", condition = "", action = "action_EVENT_TIME_AXIS_PASS_178034" },
	{ config_id = 1178041, name = "ANY_MONSTER_DIE_178041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_178041", action = "action_EVENT_ANY_MONSTER_DIE_178041" }
}

-- 变量
variables = {
	{ config_id = 4, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 178005, monster_id = 24010101, pos = { x = 785.178, y = 200.006, z = -1299.365 }, rot = { x = 0.000, y = 27.718, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 5218 }, isOneoff = true, pose_id = 101, climate_area_id = 1, area_id = 10, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
	},
	gadgets = {
		{ config_id = 178002, gadget_id = 70310015, pos = { x = 788.659, y = 199.837, z = -1299.297 }, rot = { x = 0.000, y = 352.896, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
		{ config_id = 178006, gadget_id = 70710198, pos = { x = 776.854, y = 197.848, z = -1283.432 }, rot = { x = 0.000, y = 207.985, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 178007, gadget_id = 70710200, pos = { x = 798.171, y = 196.944, z = -1295.965 }, rot = { x = 0.000, y = 34.586, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 178024, gadget_id = 70310015, pos = { x = 784.800, y = 199.938, z = -1295.648 }, rot = { x = 0.000, y = 352.896, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 }
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
		gadgets = { 178023 },
		regions = { 178008, 178025, 178027, 178031 },
		triggers = { "ENTER_REGION_178025", "ANY_MONSTER_DIE_178032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 178010, 178022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 178003, 178004, 178015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_178028", "MONSTER_BATTLE_178033", "TIME_AXIS_PASS_178034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 178001, 178016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_178041" },
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
		gadgets = { 178038, 178039, 178040 },
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
function condition_EVENT_ENTER_REGION_178025(context, evt)
	if evt.param1 ~= 178025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_178025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001178, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_178028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_178028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001178, 4)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001178, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001178, 6)
	
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
function action_EVENT_ANY_MONSTER_DIE_178032(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_178033(context, evt)
	-- 创建标识为"T_SEED"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_SEED", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_178034(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_178041(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_178041(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001178, 6)
	
	return 0
end

require "V3_1/CampChallenge"