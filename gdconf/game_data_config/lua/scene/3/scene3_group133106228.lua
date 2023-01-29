-- 基础信息
local base_info = {
	group_id = 133106228
}

-- Trigger变量
local defs = {
	steps = 2,
	config_id = 228008,
	routes = { [1]={route=310600004,points={1,2,3}},  [2]={route=310600004,points={3,4,5}}, },
	shake_point = 4
}

-- DEFS_MISCS
local shootLightMap={[228005]=228013,[228009]=228014}

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
	{ config_id = 228001, gadget_id = 70330021, pos = { x = -661.964, y = 167.849, z = 1574.266 }, rot = { x = 0.005, y = 0.036, z = 351.995 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 228004, gadget_id = 70330021, pos = { x = -680.119, y = 168.354, z = 1560.475 }, rot = { x = 306.868, y = 359.797, z = 5.171 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 228005, gadget_id = 70330145, pos = { x = -683.956, y = 173.176, z = 1564.352 }, rot = { x = 345.950, y = 54.840, z = 0.974 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 228008, gadget_id = 70330148, pos = { x = -673.782, y = 179.110, z = 1571.796 }, rot = { x = 0.000, y = 320.621, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 19 },
	{ config_id = 228009, gadget_id = 70330145, pos = { x = -657.453, y = 174.144, z = 1577.025 }, rot = { x = 0.094, y = 161.892, z = 1.811 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 228010, gadget_id = 70330021, pos = { x = -657.053, y = 166.627, z = 1571.160 }, rot = { x = 340.622, y = 1.970, z = 348.501 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 228011, gadget_id = 70330213, pos = { x = -673.800, y = 168.210, z = 1571.720 }, rot = { x = 0.734, y = 335.488, z = 5.719 }, level = 36, area_id = 19 },
	{ config_id = 228012, gadget_id = 70330212, pos = { x = -673.808, y = 170.390, z = 1571.442 }, rot = { x = 3.413, y = 320.777, z = 2.617 }, level = 36, area_id = 19 },
	{ config_id = 228013, gadget_id = 70290338, pos = { x = -681.026, y = 175.516, z = 1569.453 }, rot = { x = 7.801, y = 126.456, z = 350.816 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 228014, gadget_id = 70290338, pos = { x = -663.180, y = 178.210, z = 1572.180 }, rot = { x = 24.023, y = 308.636, z = 333.895 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 228019, shape = RegionShape.SPHERE, radius = 30, pos = { x = -674.380, y = 167.518, z = 1571.320 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1228002, name = "QUEST_START_228002", event = EventType.EVENT_QUEST_START, source = "7104410", condition = "condition_EVENT_QUEST_START_228002", action = "action_EVENT_QUEST_START_228002", trigger_count = 0 },
	{ config_id = 1228003, name = "PLATFORM_REACH_POINT_228003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_228003", action = "action_EVENT_PLATFORM_REACH_POINT_228003", trigger_count = 0 },
	{ config_id = 1228006, name = "GADGET_STATE_CHANGE_228006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228006", action = "action_EVENT_GADGET_STATE_CHANGE_228006", trigger_count = 0 },
	{ config_id = 1228007, name = "GADGET_STATE_CHANGE_228007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228007", action = "action_EVENT_GADGET_STATE_CHANGE_228007", trigger_count = 0 },
	{ config_id = 1228015, name = "TIME_AXIS_PASS_228015", event = EventType.EVENT_TIME_AXIS_PASS, source = "killlightriver", condition = "condition_EVENT_TIME_AXIS_PASS_228015", action = "action_EVENT_TIME_AXIS_PASS_228015", trigger_count = 0 },
	-- 循环提示reminder
	{ config_id = 1228016, name = "TIME_AXIS_PASS_228016", event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder", condition = "condition_EVENT_TIME_AXIS_PASS_228016", action = "action_EVENT_TIME_AXIS_PASS_228016", trigger_count = 0 },
	-- 玩家如果会玩了就不循环提示了
	{ config_id = 1228017, name = "PLATFORM_REACH_POINT_228017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_228017", action = "action_EVENT_PLATFORM_REACH_POINT_228017", trigger_count = 0 },
	{ config_id = 1228018, name = "GROUP_LOAD_228018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_228018", action = "action_EVENT_GROUP_LOAD_228018", trigger_count = 0 },
	{ config_id = 1228019, name = "LEAVE_REGION_228019", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_228019", trigger_count = 0 },
	{ config_id = 1228020, name = "TIME_AXIS_PASS_228020", event = EventType.EVENT_TIME_AXIS_PASS, source = "killlightriver", condition = "condition_EVENT_TIME_AXIS_PASS_228020", action = "action_EVENT_TIME_AXIS_PASS_228020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questFinished", value = 0, no_refresh = true }
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
		regions = { 228019 },
		triggers = { "QUEST_START_228002", "PLATFORM_REACH_POINT_228003", "GADGET_STATE_CHANGE_228006", "TIME_AXIS_PASS_228015", "TIME_AXIS_PASS_228016", "PLATFORM_REACH_POINT_228017", "GROUP_LOAD_228018", "LEAVE_REGION_228019", "TIME_AXIS_PASS_228020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 228001, 228004, 228005, 228008, 228009, 228010, 228013, 228014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_228006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 228011, 228012 },
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
function condition_EVENT_QUEST_START_228002(context, evt)
	-- 判断变量"MoveStep"为0
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_228002(context, evt)
	-- 将configid为 228005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 228009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_228003(context, evt)
	-- 判断变量"MoveStep"为2
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_228003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104410finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"killlightriver"，时间节点为{3,7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "killlightriver", {3,7}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228006(context, evt)
	if 228005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228006(context, evt)
	-- 调用提示id为 710441001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"reminder"，时间节点为{20}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder", {20}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228007(context, evt)
	if 228005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228007(context, evt)
	-- 调用提示id为 710441002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_228015(context, evt)
	if "killlightriver" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_228015(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_228016(context, evt)
	if "reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_228016(context, evt)
	-- 调用提示id为 710441001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_228017(context, evt)
	-- 判断变量"MoveStep"为1
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") == 1 or ScriptLib.GetGroupVariableValue(context, "MoveStep") == 2 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_228017(context, evt)
	-- 停止标识为"reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "reminder")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_228018(context, evt)
	-- 判断变量"questFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_228018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104410finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_228019(context, evt)
	if evt.param1 == 228019 then
		ScriptLib.EndTimeAxis(context, "reminder")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_228020(context, evt)
	if "killlightriver" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_228020(context, evt)
	-- 调用提示id为 710441311 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441311) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_6/CalculateBulletForward"