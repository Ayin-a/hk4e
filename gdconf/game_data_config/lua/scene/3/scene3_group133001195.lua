-- 基础信息
local base_info = {
	group_id = 133001195
}

-- Trigger变量
local defs = {
	challenge_id = 2010070,
	enter_region = 195031,
	leave_region = 195033,
	trigger_time = 5
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,4,7},
        [2] = {5,7},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[195001] = { config_id = 195001, monster_id = 23010501, pos = { x = 2374.616, y = 291.526, z = -218.430 }, rot = { x = 0.000, y = 93.341, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[195002] = { config_id = 195002, monster_id = 23010301, pos = { x = 2379.282, y = 292.149, z = -218.607 }, rot = { x = 0.000, y = 274.392, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[195003] = { config_id = 195003, monster_id = 23010101, pos = { x = 2373.710, y = 290.629, z = -210.626 }, rot = { x = 0.000, y = 180.253, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 9011, area_id = 3, guest_ban_drop = 63 },
	[195006] = { config_id = 195006, monster_id = 23020101, pos = { x = 2375.445, y = 291.740, z = -219.551 }, rot = { x = 0.000, y = 1.298, z = 0.000 }, level = 1, drop_tag = "债务处理人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[195007] = { config_id = 195007, monster_id = 23020101, pos = { x = 2377.643, y = 292.036, z = -219.403 }, rot = { x = 0.000, y = 1.207, z = 0.000 }, level = 1, drop_tag = "债务处理人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[195013] = { config_id = 195013, gadget_id = 70710414, pos = { x = 2366.547, y = 290.532, z = -209.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195015] = { config_id = 195015, gadget_id = 70710414, pos = { x = 2363.800, y = 289.798, z = -221.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195016] = { config_id = 195016, gadget_id = 70300093, pos = { x = 2385.071, y = 292.916, z = -218.114 }, rot = { x = 348.597, y = 105.767, z = 1.361 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195017] = { config_id = 195017, gadget_id = 71700435, pos = { x = 2369.430, y = 290.743, z = -216.162 }, rot = { x = 357.714, y = 49.883, z = 9.561 }, level = 15, isOneoff = true, persistent = true, area_id = 3 },
	[195018] = { config_id = 195018, gadget_id = 71700435, pos = { x = 2371.464, y = 291.001, z = -215.084 }, rot = { x = 0.000, y = 244.028, z = 0.000 }, level = 15, isOneoff = true, persistent = true, area_id = 3 },
	[195019] = { config_id = 195019, gadget_id = 70710414, pos = { x = 2382.104, y = 290.383, z = -209.588 }, rot = { x = 0.000, y = 11.866, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195021] = { config_id = 195021, gadget_id = 70800251, pos = { x = 2376.562, y = 291.624, z = -211.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[195024] = { config_id = 195024, gadget_id = 70710415, pos = { x = 2370.381, y = 290.435, z = -221.104 }, rot = { x = 359.302, y = 141.234, z = 0.561 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195025] = { config_id = 195025, gadget_id = 70710414, pos = { x = 2383.953, y = 292.724, z = -223.458 }, rot = { x = 0.000, y = 11.866, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195026] = { config_id = 195026, gadget_id = 70290196, pos = { x = 2375.882, y = 291.142, z = -213.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195027] = { config_id = 195027, gadget_id = 70710413, pos = { x = 2374.278, y = 290.917, z = -205.305 }, rot = { x = 0.010, y = 178.710, z = 359.994 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[195028] = { config_id = 195028, gadget_id = 70800251, pos = { x = 2370.329, y = 290.752, z = -225.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[195029] = { config_id = 195029, gadget_id = 70800251, pos = { x = 2379.259, y = 292.690, z = -225.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	[195005] = { config_id = 195005, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2372.841, y = 291.289, z = -218.997 }, height = 70.000, area_id = 3 },
	[195031] = { config_id = 195031, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2373.368, y = 291.525, z = -220.353 }, area_id = 3 },
	[195033] = { config_id = 195033, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2375.356, y = 291.422, z = -217.046 }, area_id = 3, team_ability_group_list = { "Activity_VintageChallenge_Stage_2" } },
	[195035] = { config_id = 195035, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2372.841, y = 291.289, z = -218.997 }, height = 70.000, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1195030, name = "MONSTER_BATTLE_195030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_195030" },
	{ config_id = 1195032, name = "ANY_MONSTER_DIE_195032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195032", action = "action_EVENT_ANY_MONSTER_DIE_195032" },
	{ config_id = 1195034, name = "ANY_MONSTER_DIE_195034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_195034", trigger_count = 0 },
	{ config_id = 1195035, name = "ENTER_REGION_195035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_195035", action = "action_EVENT_ENTER_REGION_195035" },
	{ config_id = 1195037, name = "TIME_AXIS_PASS_195037", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_195037" },
	{ config_id = 1195045, name = "ANY_MONSTER_DIE_195045", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_195045", action = "action_EVENT_ANY_MONSTER_DIE_195045" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 195004, gadget_id = 70220050, pos = { x = 2369.423, y = 290.916, z = -207.955 }, rot = { x = 0.000, y = 1.128, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 195020, gadget_id = 70220050, pos = { x = 2368.465, y = 290.916, z = -207.305 }, rot = { x = 0.000, y = 1.128, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 195022, gadget_id = 70710549, pos = { x = 2375.045, y = 290.917, z = -207.635 }, rot = { x = 0.000, y = 30.015, z = 0.000 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 3 },
		{ config_id = 195023, gadget_id = 70710549, pos = { x = 2373.459, y = 290.917, z = -206.592 }, rot = { x = 6.601, y = 30.429, z = 7.154 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 3 }
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
		gadgets = { 195026 },
		regions = { 195005, 195031, 195033, 195035 },
		triggers = { "ANY_MONSTER_DIE_195034", "ENTER_REGION_195035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 195013, 195015, 195016, 195017, 195018, 195019, 195024, 195025, 195027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 195001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_195030", "ANY_MONSTER_DIE_195032", "TIME_AXIS_PASS_195037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 195002, 195003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 195006, 195007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_195045" },
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
		gadgets = { 195021, 195028, 195029 },
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
function action_EVENT_MONSTER_BATTLE_195030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_195032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001195) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195032(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001195, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001195, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001195, 7)
	
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
function action_EVENT_ANY_MONSTER_DIE_195034(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_195035(context, evt)
	if evt.param1 ~= 195035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_195035(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001195, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_195037(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_195045(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_195045(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001195, 7)
	
	return 0
end

require "V3_1/CampChallenge"