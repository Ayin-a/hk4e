-- 基础信息
local base_info = {
	group_id = 133220704
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 704001, monster_id = 23010401, pos = { x = -2650.201, y = 201.506, z = -3836.979 }, rot = { x = 0.000, y = 88.213, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, title_id = 154, special_name_id = 10094, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 704004, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2648.835, y = 201.536, z = -3836.564 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1704002, name = "ANY_MONSTER_DIE_704002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_704002", action = "action_EVENT_ANY_MONSTER_DIE_704002", trigger_count = 0 },
	{ config_id = 1704003, name = "GROUP_LOAD_704003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_704003", action = "action_EVENT_GROUP_LOAD_704003", trigger_count = 0 },
	{ config_id = 1704004, name = "LEAVE_REGION_704004", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_704004", trigger_count = 0 },
	{ config_id = 1704005, name = "MONSTER_BATTLE_704005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_704005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "win", value = 0, no_refresh = true }
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
		regions = { },
		triggers = { "GROUP_LOAD_704003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 704001 },
		gadgets = { },
		regions = { 704004 },
		triggers = { "ANY_MONSTER_DIE_704002", "GROUP_LOAD_704003", "LEAVE_REGION_704004", "MONSTER_BATTLE_704005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_704002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133220704) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_704002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226307") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 322070403 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322070403) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_704003(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_704003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226307") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_704004(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220704, EntityType.MONSTER, 704001)
	
		
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_704005(context, evt)
	-- 调用提示id为 322070401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322070401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end