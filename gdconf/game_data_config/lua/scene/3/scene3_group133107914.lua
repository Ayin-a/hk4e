-- 基础信息
local base_info = {
	group_id = 133107914
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 914002, monster_id = 25010205, pos = { x = -771.410, y = 224.534, z = 482.096 }, rot = { x = 0.000, y = 265.410, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, title_id = 10007, special_name_id = 10023, area_id = 7 }
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
	{ config_id = 1914001, name = "SPECIFIC_MONSTER_HP_CHANGE_914001", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "914002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914001", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914001", trigger_count = 0 },
	{ config_id = 1914003, name = "SPECIFIC_MONSTER_HP_CHANGE_914003", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "914002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914003", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914003" },
	{ config_id = 1914004, name = "SPECIFIC_MONSTER_HP_CHANGE_914004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "914002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914004" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 914002 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_914001", "SPECIFIC_MONSTER_HP_CHANGE_914003", "SPECIFIC_MONSTER_HP_CHANGE_914004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914001(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	if 914002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914001(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133107914, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1110308") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914003(context, evt)
	--[[判断指定configid的怪物的血量小于%95时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 95 then
		return false
	end
	
	if 914002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914003(context, evt)
	-- 调用提示id为 400018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914004(context, evt)
	--[[判断指定configid的怪物的血量小于%40时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 40 then
		return false
	end
	
	if 914002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_914004(context, evt)
	-- 调用提示id为 400019 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end