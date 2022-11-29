-- 基础信息
local base_info = {
	group_id = 133102593
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 593001, gadget_id = 70900201, pos = { x = 1804.986, y = 235.035, z = 128.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 593002, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1777.923, y = 200.527, z = 132.857 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1593002, name = "ENTER_REGION_593002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_593002", action = "action_EVENT_ENTER_REGION_593002", trigger_count = 0 },
	{ config_id = 1593004, name = "VARIABLE_CHANGE_593004", event = EventType.EVENT_VARIABLE_CHANGE, source = "133102594", condition = "condition_EVENT_VARIABLE_CHANGE_593004", action = "action_EVENT_VARIABLE_CHANGE_593004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "902001", value = 1, no_refresh = false },
	{ config_id = 2, name = "902002", value = 1, no_refresh = false },
	{ config_id = 3, name = "902004", value = 1, no_refresh = false },
	{ config_id = 4, name = "902005", value = 1, no_refresh = false },
	{ config_id = 5, name = "902006", value = 1, no_refresh = false },
	{ config_id = 6, name = "133102594", value = 0, no_refresh = false }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 593002 },
		triggers = { "ENTER_REGION_593002", "VARIABLE_CHANGE_593004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 593001 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_593002(context, evt)
	if evt.param1 ~= 593002 then return false end
	
	-- 判断变量"902001"为1
	if ScriptLib.GetGroupVariableValue(context, "902001") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_593002(context, evt)
	-- 调用提示id为 1110044 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310259302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 变量"902001"赋值为0
	ScriptLib.SetGroupVariableValue(context, "902001", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_593004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Dug"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Dug", 133102594) ~= 1 then
			return false
	end
	
	-- 判断变量"902006"为1
	if ScriptLib.GetGroupVariableValue(context, "902006") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_593004(context, evt)
	-- 调用提示id为 1110070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110070) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310259301") then
	  return -1
	end
	
	-- 变量"133102594"赋值为0
	if evt.param1 ~= 0 then
		ScriptLib.SetGroupVariableValue(context, "133102594", 0)
	end
	
	return 0
end