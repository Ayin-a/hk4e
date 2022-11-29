-- 基础信息
local base_info = {
	group_id = 133220707
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 707001, monster_id = 23010601, pos = { x = -3087.372, y = 263.509, z = -4441.290 }, rot = { x = 0.000, y = 8.199, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, title_id = 154, special_name_id = 10096, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 707004, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3086.790, y = 262.980, z = -4440.095 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1707002, name = "ANY_MONSTER_DIE_707002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_707002", action = "action_EVENT_ANY_MONSTER_DIE_707002", trigger_count = 0 },
	{ config_id = 1707003, name = "GROUP_LOAD_707003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_707003", action = "action_EVENT_GROUP_LOAD_707003", trigger_count = 0 },
	{ config_id = 1707004, name = "LEAVE_REGION_707004", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_707004", trigger_count = 0 },
	{ config_id = 1707005, name = "MONSTER_BATTLE_707005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_707005" }
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
		triggers = { "GROUP_LOAD_707003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 707001 },
		gadgets = { },
		regions = { 707004 },
		triggers = { "ANY_MONSTER_DIE_707002", "GROUP_LOAD_707003", "LEAVE_REGION_707004", "MONSTER_BATTLE_707005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_707002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133220707) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_707002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226310") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 322070702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322070702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_707003(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_707003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226310") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_707004(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220707, EntityType.MONSTER, 707001)
	
		
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_707005(context, evt)
	-- 调用提示id为 322070701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322070701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end