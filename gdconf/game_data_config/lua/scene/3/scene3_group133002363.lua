-- 基础信息
local base_info = {
	group_id = 133002363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 21020201, pos = { x = 2020.439, y = 242.080, z = -597.640 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 363002, monster_id = 21010401, pos = { x = 2020.111, y = 242.503, z = -594.093 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 363003, monster_id = 21010401, pos = { x = 2017.420, y = 242.158, z = -595.526 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 363004, monster_id = 21010401, pos = { x = 2022.920, y = 242.411, z = -595.389 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363005, gadget_id = 70220013, pos = { x = 2026.512, y = 243.407, z = -592.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363006, gadget_id = 70220013, pos = { x = 2024.476, y = 243.451, z = -591.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363007, gadget_id = 70220013, pos = { x = 2024.524, y = 242.977, z = -593.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363008, gadget_id = 70310001, pos = { x = 2016.196, y = 241.693, z = -598.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363009, gadget_id = 70310001, pos = { x = 2022.088, y = 241.540, z = -602.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363017, gadget_id = 70220013, pos = { x = 2016.561, y = 243.300, z = -590.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363018, gadget_id = 70220013, pos = { x = 2018.268, y = 243.044, z = -591.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 363019, gadget_id = 70220013, pos = { x = 2019.117, y = 244.661, z = -592.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363010, name = "ANY_MONSTER_DIE_363010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363010", action = "action_EVENT_ANY_MONSTER_DIE_363010" },
	{ config_id = 1363011, name = "TIMER_EVENT_363011", event = EventType.EVENT_TIMER_EVENT, source = "1178", condition = "condition_EVENT_TIMER_EVENT_363011", action = "action_EVENT_TIMER_EVENT_363011" },
	{ config_id = 1363012, name = "QUEST_START_363012", event = EventType.EVENT_QUEST_START, source = "2070002", condition = "", action = "action_EVENT_QUEST_START_363012" },
	{ config_id = 1363014, name = "VARIABLE_CHANGE_363014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_363014", action = "action_EVENT_VARIABLE_CHANGE_363014" },
	{ config_id = 1363015, name = "VARIABLE_CHANGE_363015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_363015", action = "action_EVENT_VARIABLE_CHANGE_363015" }
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
		triggers = { "QUEST_START_363012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 363001, 363002, 363003, 363004 },
		gadgets = { 363005, 363006, 363007, 363008, 363009, 363017, 363018, 363019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363010", "TIMER_EVENT_363011", "VARIABLE_CHANGE_363014", "VARIABLE_CHANGE_363015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363010(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2018,y=242.2154,z=-596.15}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110115, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133002363, "1178") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "FinishState" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FinishState", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_363011(context, evt)
	-- 判断变量"FinishState"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "FinishState", 133002363) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_363011(context, evt)
	-- 针对当前group内变量名为 "FinishState" 的变量，进行修改，变化值为 -2
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FinishState", -2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_363012(context, evt)
	-- 延迟120秒后,向groupId为：133002363的对象,请求一次调用,并将string参数："1178" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002363, "1178", 120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 在当前group下创建新的变量，名称为 "FinishState"，初始值为3，整形，如果已经存在，返回-1
	if 0 ~= ScriptLib.CreateGroupVariable(context, "FinishState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_GroupVariable")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1930,y=207,z=-732}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1105002, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_363014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FinishState"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "FinishState", 133002363) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_363014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_363015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FinishState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "FinishState", 133002363) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_363015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end