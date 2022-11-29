-- 基础信息
local base_info = {
	group_id = 133303483
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 483001, monster_id = 23010401, pos = { x = -1055.806, y = 276.903, z = 3122.563 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 483002, monster_id = 23010601, pos = { x = -1057.767, y = 276.762, z = 3121.296 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 483006, monster_id = 23010301, pos = { x = -1052.331, y = 275.910, z = 3115.973 }, rot = { x = 0.000, y = 309.397, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 483007, monster_id = 23010601, pos = { x = -1049.995, y = 274.773, z = 3108.806 }, rot = { x = 0.000, y = 355.633, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 483010, monster_id = 23010301, pos = { x = -1042.712, y = 273.603, z = 3106.355 }, rot = { x = 0.000, y = 340.665, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 483011, monster_id = 23020101, pos = { x = -1043.962, y = 272.358, z = 3102.220 }, rot = { x = 0.000, y = 10.598, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 483013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1056.708, y = 277.721, z = 3127.092 }, area_id = 23 },
	{ config_id = 483014, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1053.791, y = 276.167, z = 3117.309 }, area_id = 23 },
	{ config_id = 483015, shape = RegionShape.SPHERE, radius = 30, pos = { x = -1053.107, y = 275.579, z = 3112.058 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1483004, name = "ANY_MONSTER_DIE_483004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_483004", action = "action_EVENT_ANY_MONSTER_DIE_483004" },
	{ config_id = 1483008, name = "ANY_MONSTER_DIE_483008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_483008", action = "action_EVENT_ANY_MONSTER_DIE_483008" },
	{ config_id = 1483009, name = "ANY_MONSTER_DIE_483009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_483009", action = "action_EVENT_ANY_MONSTER_DIE_483009" },
	{ config_id = 1483013, name = "ENTER_REGION_483013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_483013", action = "action_EVENT_ENTER_REGION_483013" },
	{ config_id = 1483014, name = "ENTER_REGION_483014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_483014", action = "action_EVENT_ENTER_REGION_483014" },
	{ config_id = 1483015, name = "ENTER_REGION_483015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_483015", action = "action_EVENT_ENTER_REGION_483015" }
}

-- 变量
variables = {
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
		monsters = { 483001, 483002 },
		gadgets = { },
		regions = { 483013 },
		triggers = { "ANY_MONSTER_DIE_483004", "ENTER_REGION_483013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 483006, 483007 },
		gadgets = { },
		regions = { 483014 },
		triggers = { "ANY_MONSTER_DIE_483008", "ENTER_REGION_483014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 483010, 483011 },
		gadgets = { },
		regions = { 483015 },
		triggers = { "ANY_MONSTER_DIE_483009", "ENTER_REGION_483015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_483004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133303483) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_483004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303483, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_483008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133303483) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_483008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303483, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_483009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133303483) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_483009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302507") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_483013(context, evt)
	if evt.param1 ~= 483013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_483013(context, evt)
	-- 调用提示id为 1000100000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000100000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_483014(context, evt)
	if evt.param1 ~= 483014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_483014(context, evt)
	-- 调用提示id为 1000100003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000100003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_483015(context, evt)
	if evt.param1 ~= 483015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_483015(context, evt)
	-- 调用提示id为 1000100006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000100006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end