-- 基础信息
local base_info = {
	group_id = 133313010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 23010601, pos = { x = -601.856, y = 24.913, z = 5781.281 }, rot = { x = 0.000, y = 285.361, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 10003, monster_id = 23010601, pos = { x = -603.777, y = 24.746, z = 5776.855 }, rot = { x = 0.000, y = 329.306, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	-- 奥德菲
	{ config_id = 10005, monster_id = 25210103, pos = { x = -602.703, y = 24.747, z = 5779.153 }, rot = { x = 0.000, y = 323.039, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 10006, monster_id = 23010401, pos = { x = -611.883, y = 24.014, z = 5776.616 }, rot = { x = 0.000, y = 358.501, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 10008, monster_id = 23010401, pos = { x = -609.705, y = 23.375, z = 5780.686 }, rot = { x = 0.000, y = 330.129, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
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
	-- 阿德非死亡
	{ config_id = 1010002, name = "ANY_MONSTER_DIE_10002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10002", action = "action_EVENT_ANY_MONSTER_DIE_10002" },
	{ config_id = 1010004, name = "TIME_AXIS_PASS_10004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_10004", action = "action_EVENT_TIME_AXIS_PASS_10004" },
	-- 阿德非死亡RMD播完并且怪全死完
	{ config_id = 1010007, name = "VARIABLE_CHANGE_10007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10007", action = "action_EVENT_VARIABLE_CHANGE_10007" },
	-- 怪全死完并且RMD播完
	{ config_id = 1010009, name = "VARIABLE_CHANGE_10009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10009", action = "action_EVENT_VARIABLE_CHANGE_10009" },
	{ config_id = 1010010, name = "MONSTER_BATTLE_10010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_10010", action = "action_EVENT_MONSTER_BATTLE_10010" },
	-- 70% RMD
	{ config_id = 1010011, name = "SPECIFIC_MONSTER_HP_CHANGE_10011", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "10005", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10011", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10011" },
	-- 30% RMD
	{ config_id = 1010012, name = "SPECIFIC_MONSTER_HP_CHANGE_10012", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "10005", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10012", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = false }
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
		monsters = { 10001, 10003, 10005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10002", "TIME_AXIS_PASS_10004", "VARIABLE_CHANGE_10007", "VARIABLE_CHANGE_10009", "MONSTER_BATTLE_10010", "SPECIFIC_MONSTER_HP_CHANGE_10011", "SPECIFIC_MONSTER_HP_CHANGE_10012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 10008 },
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
function condition_EVENT_ANY_MONSTER_DIE_10002(context, evt)
	--判断死亡怪物的configid是否为 10005
	if evt.param1 ~= 10005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10002(context, evt)
	TLA_active_reminder_ui(context, evt, 1000080034)
	
	ScriptLib.InitTimeAxis(context, "fin", {6}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_10004(context, evt)
	if "fin" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_10004(context, evt)
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10007(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7310316")
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10009(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7310316")
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_10010(context, evt)
	if 10005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_10010(context, evt)
	-- 调用提示id为 1000080027 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10011(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10011(context, evt)
	-- 调用提示id为 1000080029 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10012(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_10012(context, evt)
	-- 调用提示id为 1000080031 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313010, 3)
	
	return 0
end