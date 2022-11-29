-- 基础信息
local base_info = {
	group_id = 133212574
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 574001, monster_id = 25050301, pos = { x = -3618.221, y = 200.082, z = -2890.218 }, rot = { x = 0.000, y = 31.927, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 12 },
	{ config_id = 574002, monster_id = 25050301, pos = { x = -3620.728, y = 200.079, z = -2888.255 }, rot = { x = 0.000, y = 27.009, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 12 },
	{ config_id = 574004, monster_id = 25050401, pos = { x = -3618.008, y = 200.075, z = -2887.043 }, rot = { x = 0.000, y = 33.522, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1008, 1018, 1007 }, title_id = 10052, special_name_id = 10077, area_id = 12 },
	{ config_id = 574005, monster_id = 25050301, pos = { x = -3622.845, y = 200.075, z = -2899.063 }, rot = { x = 0.000, y = 36.457, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 12 },
	{ config_id = 574006, monster_id = 25050301, pos = { x = -3617.990, y = 200.000, z = -2901.693 }, rot = { x = 0.000, y = 28.581, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 12 },
	{ config_id = 574007, monster_id = 25050301, pos = { x = -3611.518, y = 200.000, z = -2900.685 }, rot = { x = 0.000, y = 0.338, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 12 },
	{ config_id = 574010, monster_id = 25050301, pos = { x = -3626.251, y = 200.266, z = -2893.105 }, rot = { x = 0.000, y = 69.775, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 击杀后完成任务1202606
	{ config_id = 1574003, name = "ANY_MONSTER_DIE_574003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_574003", action = "action_EVENT_ANY_MONSTER_DIE_574003" },
	{ config_id = 1574008, name = "SPECIFIC_MONSTER_HP_CHANGE_574008", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "574004", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_574008", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_574008" },
	{ config_id = 1574009, name = "TIME_AXIS_PASS_574009", event = EventType.EVENT_TIME_AXIS_PASS, source = "spawnCountDown", condition = "condition_EVENT_TIME_AXIS_PASS_574009", action = "action_EVENT_TIME_AXIS_PASS_574009", trigger_count = 3 }
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
		monsters = { 574001, 574002, 574004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_574003", "SPECIFIC_MONSTER_HP_CHANGE_574008", "TIME_AXIS_PASS_574009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_574003(context, evt)
	--判断死亡怪物的configid是否为 574004
	if evt.param1 ~= 574004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_574003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332125741") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133212574, "spawnCountDown") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133212574, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_574008(context, evt)
	if evt.param1 == 574004 and evt.param3 < 70 then
		return true
	end
	
	return false
	
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_574008(context, evt)
	-- 判断怪物血量到达80%
		-- 创建定时器，每30秒刷怪
		ScriptLib.InitTimeAxis(context, "spawnCountDown", {30}, true)
		ScriptLib.CreateMonster(context, { config_id = 574005, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 574006, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 574007, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 574010, delay_time = 0 })
		ScriptLib.ShowReminder(context, 400092)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_574009(context, evt)
	if "spawnCountDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_574009(context, evt)
		ScriptLib.CreateMonster(context, { config_id = 574005, delay_time = 0 })
		
		ScriptLib.CreateMonster(context, { config_id = 574006, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 574007, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 574010, delay_time = 0 })
	
	return 0
end