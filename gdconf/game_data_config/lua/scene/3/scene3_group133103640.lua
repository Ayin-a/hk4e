-- 基础信息
local base_info = {
	group_id = 133103640
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 640001, monster_id = 26050201, pos = { x = 208.324, y = 185.011, z = 1481.172 }, rot = { x = 0.000, y = 327.681, z = 0.000 }, level = 36, pose_id = 101, area_id = 6 },
	{ config_id = 640003, monster_id = 26050101, pos = { x = 208.324, y = 185.011, z = 1481.172 }, rot = { x = 0.000, y = 327.681, z = 0.000 }, level = 36, pose_id = 101, area_id = 6 },
	{ config_id = 640005, monster_id = 26050301, pos = { x = 208.324, y = 185.011, z = 1481.172 }, rot = { x = 0.000, y = 327.681, z = 0.000 }, level = 36, pose_id = 101, area_id = 6 },
	{ config_id = 640006, monster_id = 26050401, pos = { x = 208.324, y = 185.011, z = 1481.172 }, rot = { x = 0.000, y = 327.681, z = 0.000 }, level = 36, pose_id = 101, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 640007, gadget_id = 70360001, pos = { x = 181.023, y = 185.011, z = 1500.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 640008, gadget_id = 70210106, pos = { x = 194.427, y = 185.011, z = 1502.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "古岩龙蜥火", persistent = true, boss_chest = {monster_config_id=640001, resin=40, life_time=600,take_num=100}, area_id = 6 },
	{ config_id = 640009, gadget_id = 70210106, pos = { x = 194.427, y = 185.011, z = 1502.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "古岩龙蜥水", persistent = true, boss_chest = {monster_config_id=640003, resin=40, life_time=600,take_num=100}, area_id = 6 },
	{ config_id = 640010, gadget_id = 70210106, pos = { x = 194.427, y = 185.011, z = 1502.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "古岩龙蜥冰", persistent = true, boss_chest = {monster_config_id=640005, resin=40, life_time=600,take_num=100}, area_id = 6 },
	{ config_id = 640011, gadget_id = 70210106, pos = { x = 194.427, y = 185.011, z = 1502.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "古岩龙蜥电", persistent = true, boss_chest = {monster_config_id=640006, resin=40, life_time=600,take_num=100}, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 640012, shape = RegionShape.SPHERE, radius = 50, pos = { x = 194.619, y = 185.011, z = 1502.883 }, area_id = 6 },
	{ config_id = 640015, shape = RegionShape.SPHERE, radius = 45, pos = { x = 200.454, y = 185.011, z = 1491.699 }, area_id = 6 },
	{ config_id = 640016, shape = RegionShape.CUBIC, size = { x = 30.000, y = 25.000, z = 12.000 }, pos = { x = 168.469, y = 217.943, z = 1453.728 }, area_id = 6 },
	{ config_id = 640017, shape = RegionShape.SPHERE, radius = 30, pos = { x = 232.448, y = 244.469, z = 1543.943 }, area_id = 6 },
	{ config_id = 640020, shape = RegionShape.SPHERE, radius = 60, pos = { x = 194.619, y = 185.011, z = 1502.883 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1640002, name = "ANY_MONSTER_DIE_640002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_640002", action = "action_EVENT_ANY_MONSTER_DIE_640002" },
	{ config_id = 1640004, name = "ANY_MONSTER_DIE_640004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_640004", action = "action_EVENT_ANY_MONSTER_DIE_640004", trigger_count = 0 },
	{ config_id = 1640013, name = "ANY_MONSTER_DIE_640013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_640013", action = "action_EVENT_ANY_MONSTER_DIE_640013" },
	{ config_id = 1640014, name = "QUEST_START_640014", event = EventType.EVENT_QUEST_START, source = "7102203", condition = "", action = "action_EVENT_QUEST_START_640014", trigger_count = 0 },
	{ config_id = 1640015, name = "ENTER_REGION_640015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_640015", action = "action_EVENT_ENTER_REGION_640015" },
	{ config_id = 1640016, name = "ENTER_REGION_640016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_640016", action = "action_EVENT_ENTER_REGION_640016" },
	{ config_id = 1640017, name = "ENTER_REGION_640017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_640017", action = "action_EVENT_ENTER_REGION_640017" },
	{ config_id = 1640018, name = "QUEST_FINISH_640018", event = EventType.EVENT_QUEST_FINISH, source = "7102204", condition = "condition_EVENT_QUEST_FINISH_640018", action = "action_EVENT_QUEST_FINISH_640018", trigger_count = 0 },
	{ config_id = 1640019, name = "QUEST_FINISH_640019", event = EventType.EVENT_QUEST_FINISH, source = "7102206", condition = "condition_EVENT_QUEST_FINISH_640019", action = "action_EVENT_QUEST_FINISH_640019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "talk", value = 0, no_refresh = true },
	{ config_id = 2, name = "current_idx", value = 0, no_refresh = true },
	{ config_id = 3, name = "killed", value = 0, no_refresh = true },
	{ config_id = 4, name = "quest_finished", value = 0, no_refresh = true },
	{ config_id = 5, name = "quest_accept", value = 0, no_refresh = true },
	{ config_id = 6, name = "explore", value = 0, no_refresh = true },
	{ config_id = 7, name = "talk_see_monster", value = 0, no_refresh = true }
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
		regions = { 640012, 640015, 640016, 640017, 640020 },
		triggers = { "ANY_MONSTER_DIE_640002", "ANY_MONSTER_DIE_640004", "ANY_MONSTER_DIE_640013", "QUEST_START_640014", "ENTER_REGION_640015", "ENTER_REGION_640016", "ENTER_REGION_640017", "QUEST_FINISH_640018", "QUEST_FINISH_640019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 640001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 640003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 640005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 640006 },
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
function condition_EVENT_ANY_MONSTER_DIE_640002(context, evt)
	-- 判断变量"talk"为0
	if ScriptLib.GetGroupVariableValue(context, "talk") ~= 0 then
			return false
	end
	
	-- 判断变量"quest_accept"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_640002(context, evt)
	-- 调用提示id为 31030013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "talk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_640004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"quest_finished"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_640004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7102204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_640013(context, evt)
	-- 判断变量"talk"为0
	if ScriptLib.GetGroupVariableValue(context, "talk") ~= 0 then
			return false
	end
	
	-- 判断变量"quest_accept"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_640013(context, evt)
	-- 调用提示id为 31030018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "talk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_640014(context, evt)
	-- 将本组内变量名为 "quest_accept" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_accept", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "quest_accept" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "quest_accept", 1, 133103637) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_640015(context, evt)
	if evt.param1 ~= 640015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"talk_see_monster"为0
	if ScriptLib.GetGroupVariableValue(context, "talk_see_monster") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_640015(context, evt)
	-- 调用提示id为 31030017 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "talk_see_monster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk_see_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_640016(context, evt)
	if evt.param1 ~= 640016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest_accept"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 0 then
			return false
	end
	
	-- 判断变量"explore"为0
	if ScriptLib.GetGroupVariableValue(context, "explore") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_640016(context, evt)
	-- 调用提示id为 31030011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "explore" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "explore", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_640017(context, evt)
	if evt.param1 ~= 640017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest_accept"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 0 then
			return false
	end
	
	-- 判断变量"explore"为0
	if ScriptLib.GetGroupVariableValue(context, "explore") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_640017(context, evt)
	-- 调用提示id为 31030011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "explore" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "explore", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_640018(context, evt)
	-- 判断变量"quest_finished"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_640018(context, evt)
	-- 将本组内变量名为 "quest_finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_640019(context, evt)
	-- 判断变量"quest_finished"为0
	if ScriptLib.GetGroupVariableValue(context, "quest_finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_640019(context, evt)
	-- 将本组内变量名为 "quest_finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "DrakePrimoRockBoss"
require "TD_Lib"