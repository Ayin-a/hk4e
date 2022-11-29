-- 基础信息
local base_info = {
	group_id = 133213361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361001, monster_id = 25100101, pos = { x = -3822.075, y = 333.361, z = -3096.397 }, rot = { x = 0.000, y = 105.163, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5106 }, pose_id = 1, title_id = 10035, special_name_id = 10058, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 361007, gadget_id = 70290147, pos = { x = -3821.418, y = 332.595, z = -3097.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1361002, name = "ANY_MONSTER_DIE_361002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_361002", action = "action_EVENT_ANY_MONSTER_DIE_361002" },
	{ config_id = 1361003, name = "MONSTER_BATTLE_361003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_361003", action = "action_EVENT_MONSTER_BATTLE_361003" },
	{ config_id = 1361004, name = "CHALLENGE_SUCCESS_361004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_361004" },
	{ config_id = 1361005, name = "CHALLENGE_FAIL_361005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_361005", trigger_count = 0 },
	{ config_id = 1361006, name = "SPECIFIC_MONSTER_HP_CHANGE_361006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "361001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_361006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_361006" },
	{ config_id = 1361008, name = "GROUP_LOAD_361008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_361008", trigger_count = 0 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 361001 },
		gadgets = { 361007 },
		regions = { },
		triggers = { "MONSTER_BATTLE_361003", "CHALLENGE_SUCCESS_361004", "CHALLENGE_FAIL_361005", "GROUP_LOAD_361008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_361002(context, evt)
	if 361001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_361002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_361003(context, evt)
	if 361001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_361003(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 300, 133213361, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_KilMonster_InTime")
	  return -1
	end
	
	-- 调用提示id为 1110372 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110372) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_361004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_361005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133213361, EntityType.MONSTER, 361001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_361006(context, evt)
	--[[判断指定configid的怪物的血量小于%10时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 10 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_361006(context, evt)
	-- 终止识别id为180的挑战，并判定成功
		ScriptLib.StopChallenge(context, 180, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_361008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215903_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133213361, EntityType.MONSTER, 361001)
	
		
	
	return 0
end