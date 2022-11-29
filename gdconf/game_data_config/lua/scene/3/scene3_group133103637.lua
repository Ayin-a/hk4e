-- 基础信息
local base_info = {
	group_id = 133103637
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 637001, monster_id = 26030101, pos = { x = 243.747, y = 248.569, z = 1473.608 }, rot = { x = 0.000, y = 351.240, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 637002, monster_id = 26030101, pos = { x = 272.404, y = 244.248, z = 1568.233 }, rot = { x = 0.000, y = 347.400, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 6 },
	{ config_id = 637003, monster_id = 26030101, pos = { x = 224.567, y = 198.487, z = 1414.270 }, rot = { x = 0.000, y = 351.240, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 637005, monster_id = 26040102, pos = { x = 254.971, y = 243.391, z = 1580.059 }, rot = { x = 0.000, y = 80.300, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 637006, monster_id = 26030101, pos = { x = 174.398, y = 254.599, z = 1476.163 }, rot = { x = 0.000, y = 121.800, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 637007, monster_id = 26030101, pos = { x = 181.401, y = 254.936, z = 1482.801 }, rot = { x = 0.000, y = 220.300, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 637004, shape = RegionShape.SPHERE, radius = 40, pos = { x = 261.983, y = 244.469, z = 1572.813 }, area_id = 6 },
	{ config_id = 637008, shape = RegionShape.SPHERE, radius = 45, pos = { x = 200.454, y = 185.011, z = 1491.699 }, area_id = 6 },
	{ config_id = 637011, shape = RegionShape.SPHERE, radius = 30, pos = { x = 232.448, y = 244.469, z = 1543.943 }, area_id = 6 },
	{ config_id = 637013, shape = RegionShape.CUBIC, size = { x = 30.000, y = 25.000, z = 12.000 }, pos = { x = 168.469, y = 217.943, z = 1453.728 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1637004, name = "ENTER_REGION_637004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637004", action = "action_EVENT_ENTER_REGION_637004" },
	{ config_id = 1637008, name = "ENTER_REGION_637008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637008", action = "action_EVENT_ENTER_REGION_637008", trigger_count = 0 },
	{ config_id = 1637011, name = "ENTER_REGION_637011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637011", action = "action_EVENT_ENTER_REGION_637011" },
	{ config_id = 1637013, name = "ENTER_REGION_637013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637013", action = "action_EVENT_ENTER_REGION_637013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest_accept", value = 0, no_refresh = true },
	{ config_id = 2, name = "explore", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 637001, 637002, 637003, 637005, 637006, 637007 },
		gadgets = { },
		regions = { 637004, 637008, 637011, 637013 },
		triggers = { "ENTER_REGION_637004", "ENTER_REGION_637008", "ENTER_REGION_637011", "ENTER_REGION_637013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_637004(context, evt)
	if evt.param1 ~= 637004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest_accept"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637004(context, evt)
	-- 调用提示id为 31030016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_637008(context, evt)
	if evt.param1 ~= 637008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7102203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_637011(context, evt)
	if evt.param1 ~= 637011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest_accept"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 1 then
			return false
	end
	
	-- 判断变量"explore"为0
	if ScriptLib.GetGroupVariableValue(context, "explore") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637011(context, evt)
	-- 调用提示id为 31030015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030015) then
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
function condition_EVENT_ENTER_REGION_637013(context, evt)
	if evt.param1 ~= 637013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest_accept"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_accept") ~= 1 then
			return false
	end
	
	-- 判断变量"explore"为0
	if ScriptLib.GetGroupVariableValue(context, "explore") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637013(context, evt)
	-- 调用提示id为 31030015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31030015) then
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