-- 基础信息
local base_info = {
	group_id = 144003001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1015, monster_id = 28040105, pos = { x = -278.676, y = 119.621, z = 503.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1050125, ban_excel_drop = true, area_id = 103 },
	{ config_id = 1016, monster_id = 28040106, pos = { x = -279.647, y = 119.062, z = 504.071 }, rot = { x = 0.000, y = 144.904, z = 0.000 }, level = 1, drop_id = 1050124, ban_excel_drop = true, area_id = 103 },
	{ config_id = 1017, monster_id = 28040107, pos = { x = -280.192, y = 119.344, z = 503.013 }, rot = { x = 0.000, y = 214.940, z = 0.000 }, level = 1, drop_id = 1050123, ban_excel_drop = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1026, gadget_id = 70710393, pos = { x = -279.644, y = 118.902, z = 503.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 32, area_id = 103 }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -286.985, y = 120.070, z = 456.680 }, area_id = 103 },
	{ config_id = 1010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -280.030, y = 118.253, z = 503.397 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001", trigger_count = 0 },
	{ config_id = 1001002, name = "QUEST_START_1002", event = EventType.EVENT_QUEST_START, source = "4001305", condition = "", action = "action_EVENT_QUEST_START_1002", trigger_count = 0 },
	{ config_id = 1001003, name = "QUEST_FINISH_1003", event = EventType.EVENT_QUEST_FINISH, source = "4001301", condition = "", action = "action_EVENT_QUEST_FINISH_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "QUEST_FINISH_1004", event = EventType.EVENT_QUEST_FINISH, source = "4001302", condition = "", action = "action_EVENT_QUEST_FINISH_1004", trigger_count = 0 },
	{ config_id = 1001010, name = "ENTER_REGION_1010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1010", action = "action_EVENT_ENTER_REGION_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "GADGET_STATE_CHANGE_1011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1011", action = "action_EVENT_GADGET_STATE_CHANGE_1011" },
	{ config_id = 1001012, name = "QUEST_FINISH_1012", event = EventType.EVENT_QUEST_FINISH, source = "4001303", condition = "", action = "action_EVENT_QUEST_FINISH_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "VARIABLE_CHANGE_1013", event = EventType.EVENT_VARIABLE_CHANGE, source = "FishKilled", condition = "condition_EVENT_VARIABLE_CHANGE_1013", action = "action_EVENT_VARIABLE_CHANGE_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "VARIABLE_CHANGE_1014", event = EventType.EVENT_VARIABLE_CHANGE, source = "FishKilled", condition = "condition_EVENT_VARIABLE_CHANGE_1014", action = "action_EVENT_VARIABLE_CHANGE_1014", trigger_count = 0 },
	{ config_id = 1001027, name = "VARIABLE_CHANGE_1027", event = EventType.EVENT_VARIABLE_CHANGE, source = "FishKilled", condition = "condition_EVENT_VARIABLE_CHANGE_1027", action = "action_EVENT_VARIABLE_CHANGE_1027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FishKilled", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { 1001 },
		triggers = { "ENTER_REGION_1001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_1003", "QUEST_FINISH_1004", "QUEST_FINISH_1012", "VARIABLE_CHANGE_1013", "VARIABLE_CHANGE_1014", "VARIABLE_CHANGE_1027" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 1010 },
		triggers = { "ENTER_REGION_1010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1026 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1015, 1016, 1017 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_1002" },
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
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400300101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003001, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1003(context, evt)
	-- 针对当前group内变量名为 "FishKilled" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FishKilled", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1004(context, evt)
	-- 针对当前group内变量名为 "FishKilled" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FishKilled", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1010(context, evt)
	if evt.param1 ~= 1010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400300104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1011(context, evt)
	if 1026 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400300105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1012(context, evt)
	-- 针对当前group内变量名为 "FishKilled" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FishKilled", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FishKilled"为1
	if ScriptLib.GetGroupVariableValue(context, "FishKilled") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1013(context, evt)
	-- 调用提示id为 600039 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600039) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FishKilled"为2
	if ScriptLib.GetGroupVariableValue(context, "FishKilled") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1014(context, evt)
	-- 调用提示id为 600040 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600040) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FishKilled"为3
	if ScriptLib.GetGroupVariableValue(context, "FishKilled") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1027(context, evt)
	-- 调用提示id为 600041 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end