-- 基础信息
local base_info = {
	group_id = 133313077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 阿萨里格
	{ config_id = 77001, monster_id = 25410101, pos = { x = -539.702, y = 116.376, z = 5828.109 }, rot = { x = 0.000, y = 302.985, z = 0.000 }, level = 33, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true },
	{ config_id = 77002, monster_id = 25210403, pos = { x = -540.880, y = 116.766, z = 5821.439 }, rot = { x = 0.000, y = 313.141, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true },
	{ config_id = 77003, monster_id = 25210303, pos = { x = -543.842, y = 115.000, z = 5832.451 }, rot = { x = 0.000, y = 234.184, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true },
	{ config_id = 77004, monster_id = 25210101, pos = { x = -547.583, y = 112.887, z = 5826.307 }, rot = { x = 0.000, y = 98.039, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true },
	{ config_id = 77007, monster_id = 25210303, pos = { x = -542.497, y = 116.507, z = 5819.424 }, rot = { x = 0.000, y = 351.792, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true },
	{ config_id = 77011, monster_id = 25210403, pos = { x = -539.843, y = 116.532, z = 5830.778 }, rot = { x = 0.000, y = 256.282, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true }
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
	-- 阿萨里格死亡
	{ config_id = 1077005, name = "ANY_MONSTER_DIE_77005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77005", action = "action_EVENT_ANY_MONSTER_DIE_77005" },
	-- 70%刷第二波怪
	{ config_id = 1077006, name = "SPECIFIC_MONSTER_HP_CHANGE_77006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "77001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77006" },
	{ config_id = 1077008, name = "MONSTER_BATTLE_77008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_77008", action = "action_EVENT_MONSTER_BATTLE_77008" },
	-- 阿萨里格死亡reminder播完
	{ config_id = 1077009, name = "TIME_AXIS_PASS_77009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_77009", action = "action_EVENT_TIME_AXIS_PASS_77009" },
	-- 30%刷第二波怪
	{ config_id = 1077010, name = "SPECIFIC_MONSTER_HP_CHANGE_77010", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "77001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77010", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77010" },
	-- 死亡rmd播完，如果怪全死了，任务完成
	{ config_id = 1077012, name = "VARIABLE_CHANGE_77012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_77012", action = "action_EVENT_VARIABLE_CHANGE_77012", trigger_count = 0 },
	-- 怪全死完
	{ config_id = 1077013, name = "ANY_MONSTER_DIE_77013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77013", action = "action_EVENT_ANY_MONSTER_DIE_77013" }
}

-- 变量
variables = {
	{ config_id = 3, name = "die", value = 0, no_refresh = false }
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
		monsters = { 77001, 77002, 77011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77005", "SPECIFIC_MONSTER_HP_CHANGE_77006", "MONSTER_BATTLE_77008", "TIME_AXIS_PASS_77009", "SPECIFIC_MONSTER_HP_CHANGE_77010", "VARIABLE_CHANGE_77012", "ANY_MONSTER_DIE_77013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 77003, 77007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 77004 },
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

-- 使用reminderUI
function TLA_active_reminder_ui(context, evt, reminder_id)
	-- 调用提示id为 reminder_id 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, reminder_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77005(context, evt)
	--判断死亡怪物的configid是否为 77001
	if evt.param1 ~= 77001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77005(context, evt)
	ScriptLib.InitTimeAxis(context, "fin", {5}, false)
	
	TLA_active_reminder_ui(context, evt, 1000080025)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77006(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313077, 2)
	
	-- 调用提示id为 1000080020 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_77008(context, evt)
	if 77001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_77008(context, evt)
	-- 调用提示id为 1000080018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_77009(context, evt)
	if "fin" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_77009(context, evt)
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77010(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_77010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313077, 3)
	
	-- 调用提示id为 1000080022 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_77012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"die"为1
	if ScriptLib.GetGroupVariableValue(context, "die") ~= 1 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_77012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310310") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"die"为1
	if ScriptLib.GetGroupVariableValue(context, "die") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310310") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end