-- 基础信息
local base_info = {
	group_id = 133315061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 26120301, pos = { x = 508.842, y = 97.334, z = 2404.424 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61002, monster_id = 26090101, pos = { x = 505.706, y = 97.963, z = 2404.289 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61003, monster_id = 26090101, pos = { x = 508.683, y = 98.823, z = 2401.081 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61005, monster_id = 26120101, pos = { x = 531.590, y = 137.606, z = 2379.308 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, affix = { 6117, 1006 }, pose_id = 201, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 61006, monster_id = 26120101, pos = { x = 481.355, y = 136.225, z = 2508.021 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, affix = { 6117, 1006 }, pose_id = 201, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 61007, monster_id = 26120101, pos = { x = 584.422, y = 137.366, z = 2563.116 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, affix = { 6117, 1006 }, pose_id = 201, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 61011, monster_id = 26090101, pos = { x = 438.525, y = 138.149, z = 2473.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 20 },
	{ config_id = 61012, monster_id = 26090101, pos = { x = 442.076, y = 138.143, z = 2475.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 20 },
	{ config_id = 61013, monster_id = 26090201, pos = { x = 485.209, y = 136.266, z = 2570.103 }, rot = { x = 0.000, y = 238.783, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 20 },
	{ config_id = 61014, monster_id = 26090201, pos = { x = 485.634, y = 134.350, z = 2574.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 20 },
	{ config_id = 61017, monster_id = 26120101, pos = { x = 564.810, y = 97.000, z = 2531.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 20 },
	{ config_id = 61018, monster_id = 26090201, pos = { x = 547.241, y = 97.584, z = 2532.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61019, monster_id = 26090201, pos = { x = 553.966, y = 97.259, z = 2524.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61020, monster_id = 26090501, pos = { x = 462.340, y = 97.113, z = 2444.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61021, monster_id = 26090501, pos = { x = 462.438, y = 98.459, z = 2426.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 61022, monster_id = 26120201, pos = { x = 498.160, y = 97.000, z = 2455.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 20 },
	{ config_id = 61023, monster_id = 26090901, pos = { x = 478.682, y = 134.236, z = 2498.470 }, rot = { x = 0.000, y = 238.783, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 20 },
	{ config_id = 61024, monster_id = 26090901, pos = { x = 482.601, y = 133.193, z = 2501.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 61008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 585.608, y = 136.699, z = 2565.334 }, area_id = 20 },
	{ config_id = 61009, shape = RegionShape.SPHERE, radius = 10, pos = { x = 480.490, y = 134.537, z = 2509.423 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 3.0 正法炬书 兰纳迦洞死域 怪物
	{ config_id = 1061004, name = "GROUP_LOAD_61004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_61004", action = "action_EVENT_GROUP_LOAD_61004", trigger_count = 0 },
	{ config_id = 1061008, name = "ENTER_REGION_61008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61008", action = "action_EVENT_ENTER_REGION_61008" },
	{ config_id = 1061009, name = "ENTER_REGION_61009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61009", action = "action_EVENT_ENTER_REGION_61009" },
	{ config_id = 1061010, name = "MONSTER_BATTLE_61010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_61010", action = "action_EVENT_MONSTER_BATTLE_61010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 61015, monster_id = 26090901, pos = { x = 594.129, y = 150.931, z = 2472.762 }, rot = { x = 0.000, y = 238.783, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 20 },
		{ config_id = 61016, monster_id = 26090901, pos = { x = 588.348, y = 150.291, z = 2464.209 }, rot = { x = 0.000, y = 63.947, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 20 }
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
	end_suite = 2,
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
		monsters = { 61005, 61006, 61007, 61011, 61012, 61013, 61014, 61023, 61024 },
		gadgets = { },
		regions = { 61008, 61009 },
		triggers = { "GROUP_LOAD_61004", "ENTER_REGION_61008", "ENTER_REGION_61009", "MONSTER_BATTLE_61010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 61001, 61002, 61003, 61017, 61018, 61019, 61020, 61021, 61022 },
		gadgets = { },
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
function condition_EVENT_GROUP_LOAD_61004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_61004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315061, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61008(context, evt)
	if evt.param1 ~= 61008 then return false end
	
	-- 判断是区域61008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 61008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61008(context, evt)
	-- 调用提示id为 730662509 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662509) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61009(context, evt)
	if evt.param1 ~= 61009 then return false end
	
	-- 判断是区域61009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 61009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61009(context, evt)
	-- 调用提示id为 730662511 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730662511) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_61010(context, evt)
	if 61005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_61010(context, evt)
	-- 调用提示id为 7306618 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306618) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"