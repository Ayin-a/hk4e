-- 基础信息
local base_info = {
	group_id = 166001095
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
	{ config_id = 95001, gadget_id = 70500000, pos = { x = 778.072, y = 705.529, z = 449.941 }, rot = { x = 352.416, y = 0.694, z = 349.558 }, level = 1, point_type = 9303, isOneoff = true, area_id = 300 },
	{ config_id = 95002, gadget_id = 70500000, pos = { x = 777.200, y = 705.538, z = 450.454 }, rot = { x = 354.673, y = 188.413, z = 353.427 }, level = 1, point_type = 9303, isOneoff = true, area_id = 300 },
	{ config_id = 95003, gadget_id = 70500000, pos = { x = 780.005, y = 705.270, z = 445.944 }, rot = { x = 9.956, y = 359.420, z = 353.347 }, level = 1, point_type = 9303, isOneoff = true, area_id = 300 },
	{ config_id = 95004, gadget_id = 70500000, pos = { x = 772.641, y = 705.110, z = 441.102 }, rot = { x = 0.000, y = 168.896, z = 0.000 }, level = 1, point_type = 9303, isOneoff = true, area_id = 300 },
	{ config_id = 95008, gadget_id = 70500000, pos = { x = 773.003, y = 705.288, z = 449.438 }, rot = { x = 0.000, y = 168.896, z = 0.000 }, level = 36, point_type = 2044, isOneoff = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095005, name = "GATHER_95005", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_95005", trigger_count = 0 },
	{ config_id = 1095006, name = "VARIABLE_CHANGE_95006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95006", action = "action_EVENT_VARIABLE_CHANGE_95006", trigger_count = 0 },
	{ config_id = 1095007, name = "GATHER_95007", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_95007" },
	{ config_id = 1095009, name = "GROUP_LOAD_95009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_95009", action = "action_EVENT_GROUP_LOAD_95009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Pick", value = 0, no_refresh = true }
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
		gadgets = { 95008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 95001, 95002, 95003, 95004 },
		regions = { },
		triggers = { "GATHER_95005", "VARIABLE_CHANGE_95006", "GATHER_95007", "GROUP_LOAD_95009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_95005(context, evt)
	-- 针对当前group内变量名为 "Pick" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Pick", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_95006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Pick"为4
	if ScriptLib.GetGroupVariableValue(context, "Pick") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_95006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001095") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_95007(context, evt)
	-- 调用提示id为 60010237 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010237) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_95009(context, evt)
	-- 判断变量"Pick"为4
	if ScriptLib.GetGroupVariableValue(context, "Pick") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_95009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001095") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end