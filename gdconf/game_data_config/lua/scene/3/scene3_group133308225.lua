-- 基础信息
local base_info = {
	group_id = 133308225
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 大血条怪
	{ config_id = 225001, monster_id = 25410401, pos = { x = -1535.531, y = 37.092, z = 5092.233 }, rot = { x = 0.000, y = 255.570, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, title_id = 10148, special_name_id = 10197, area_id = 32 },
	{ config_id = 225004, monster_id = 25210303, pos = { x = -1545.774, y = 37.112, z = 5096.994 }, rot = { x = 0.000, y = 168.473, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 225005, monster_id = 25210201, pos = { x = -1540.807, y = 37.092, z = 5079.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225009, gadget_id = 70270004, pos = { x = -1530.121, y = 34.167, z = 5094.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1225002, name = "SPECIFIC_MONSTER_HP_CHANGE_225002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "225001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_225002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_225002" },
	{ config_id = 1225003, name = "MONSTER_BATTLE_225003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_225003" },
	{ config_id = 1225006, name = "TIME_AXIS_PASS_225006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_225006", action = "action_EVENT_TIME_AXIS_PASS_225006" },
	{ config_id = 1225007, name = "ANY_MONSTER_DIE_225007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_225007", action = "action_EVENT_ANY_MONSTER_DIE_225007", trigger_count = 0 },
	{ config_id = 1225008, name = "GROUP_LOAD_225008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_225008", action = "action_EVENT_GROUP_LOAD_225008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 225001 },
		gadgets = { 225009 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_225002", "MONSTER_BATTLE_225003", "TIME_AXIS_PASS_225006", "ANY_MONSTER_DIE_225007", "GROUP_LOAD_225008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 使用reminderUI
function TLA_active_reminder_ui(context, evt, reminder_id)
	-- 调用提示id为 reminder_id 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, reminder_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	return 0
end

-- 杀死指定group内所有monster
function TLA_kill_monster_by_group(context, evt, group_id)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	return 0
end

-- 设置此group的variable
function TLA_set_groupvariable(context, evt, variable_name, value)
	-- 将本组内变量名为 variable_name 的变量设置为 value
	if 0 ~= ScriptLib.SetGroupVariableValue(context, variable_name, value) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_225002(context, evt)
	--[[判断指定configid的怪物的血量小于%10时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 10 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_225002(context, evt)
	-- 调用提示id为 1000140043 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_225003(context, evt)
	TLA_active_reminder_ui(context, evt, 1000140035)
	
	ScriptLib.AutoMonsterTide(context, 1, 133308225, {225004,225005}, 6, 1, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_225006(context, evt)
	if "die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_225006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7322516") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_225007(context, evt)
	if 225001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_225007(context, evt)
	ScriptLib.KillMonsterTide(context, 133308225, 1)
	
	TLA_kill_monster_by_group(context, evt, 133308225)
	
	ScriptLib.InitTimeAxis(context, "die", {6}, false)
	
	TLA_set_groupvariable(context, evt, "finish", 1)
	
	TLA_active_reminder_ui(context, evt, 1000140043)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_225008(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_225008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7322516") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end