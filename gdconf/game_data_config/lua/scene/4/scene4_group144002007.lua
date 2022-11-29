-- 基础信息
local base_info = {
	group_id = 144002007
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
	-- 打捞点2的守护机关
	{ config_id = 7001, gadget_id = 70220054, pos = { x = 249.980, y = 123.688, z = -432.728 }, rot = { x = 0.000, y = 77.457, z = 0.000 }, level = 25, drop_id = 1000100, drop_count = 1, state = GadgetState.GearStart, route_id = 400200027, start_route = false, persistent = true, area_id = 101 },
	-- 打捞点3的守护机关
	{ config_id = 7002, gadget_id = 70220054, pos = { x = 154.646, y = 122.771, z = -618.934 }, rot = { x = 0.000, y = 12.160, z = 0.000 }, level = 25, drop_id = 1000100, drop_count = 1, state = GadgetState.GearStart, route_id = 400200028, start_route = false, persistent = true, area_id = 101 },
	-- 打捞点1的守护机关
	{ config_id = 7003, gadget_id = 70220054, pos = { x = 400.743, y = 123.344, z = -269.356 }, rot = { x = 0.000, y = 21.388, z = 0.000 }, level = 25, drop_id = 1000100, drop_count = 1, state = GadgetState.GearStart, route_id = 400200029, start_route = false, persistent = true, area_id = 101 },
	{ config_id = 7004, gadget_id = 70950081, pos = { x = 402.045, y = 120.000, z = -269.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7005, gadget_id = 70950081, pos = { x = 399.379, y = 120.000, z = -269.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7006, gadget_id = 70950081, pos = { x = 400.460, y = 120.000, z = -268.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7007, gadget_id = 70950081, pos = { x = 250.536, y = 120.000, z = -434.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7008, gadget_id = 70950081, pos = { x = 248.116, y = 120.000, z = -433.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7009, gadget_id = 70950081, pos = { x = 250.065, y = 120.000, z = -432.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7010, gadget_id = 70950081, pos = { x = 156.178, y = 120.000, z = -619.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7011, gadget_id = 70950081, pos = { x = 153.667, y = 120.000, z = -619.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 7012, gadget_id = 70950081, pos = { x = 155.071, y = 120.000, z = -617.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 在打捞点1完成第3次打捞后刷出大量气泡
	{ config_id = 1007013, name = "VARIABLE_CHANGE_7013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7013", action = "action_EVENT_VARIABLE_CHANGE_7013" },
	-- 打捞了1次后的开车
	{ config_id = 1007014, name = "VARIABLE_CHANGE_7014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7014", action = "action_EVENT_VARIABLE_CHANGE_7014" },
	-- 打捞了2次后的开车
	{ config_id = 1007015, name = "VARIABLE_CHANGE_7015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7015", action = "action_EVENT_VARIABLE_CHANGE_7015" },
	-- 在打捞点2完成第3次打捞后刷出大量气泡
	{ config_id = 1007016, name = "VARIABLE_CHANGE_7016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7016", action = "action_EVENT_VARIABLE_CHANGE_7016" },
	-- 在打捞点3完成第3次打捞后刷出大量气泡
	{ config_id = 1007017, name = "VARIABLE_CHANGE_7017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7017", action = "action_EVENT_VARIABLE_CHANGE_7017" },
	-- 打捞点2的守护机关启动时停止路径
	{ config_id = 1007018, name = "GADGET_STATE_CHANGE_7018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7018", action = "action_EVENT_GADGET_STATE_CHANGE_7018", trigger_count = 0 },
	-- 打捞点2的守护机关脱战时开启路径
	{ config_id = 1007019, name = "GADGET_STATE_CHANGE_7019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7019", action = "action_EVENT_GADGET_STATE_CHANGE_7019", trigger_count = 0 },
	-- 打捞点3的守护机关启动时停止路径
	{ config_id = 1007020, name = "GADGET_STATE_CHANGE_7020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7020", action = "action_EVENT_GADGET_STATE_CHANGE_7020", trigger_count = 0 },
	-- 打捞了3次后的开车及准备创建炮台
	{ config_id = 1007021, name = "VARIABLE_CHANGE_7021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7021", action = "action_EVENT_VARIABLE_CHANGE_7021" },
	-- 消灭了打捞点2后完成父任务并开车
	{ config_id = 1007022, name = "ANY_GADGET_DIE_7022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7022", action = "action_EVENT_ANY_GADGET_DIE_7022" },
	-- 消灭了打捞点3后完成父任务并开车
	{ config_id = 1007023, name = "ANY_GADGET_DIE_7023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7023", action = "action_EVENT_ANY_GADGET_DIE_7023" },
	-- 消灭了打捞点1后完成父任务并开车
	{ config_id = 1007024, name = "ANY_GADGET_DIE_7024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7024", action = "action_EVENT_ANY_GADGET_DIE_7024" },
	-- 在打捞点1完成第3次打捞
	{ config_id = 1007025, name = "QUEST_START_7025", event = EventType.EVENT_QUEST_START, source = "7900308", condition = "condition_EVENT_QUEST_START_7025", action = "action_EVENT_QUEST_START_7025", trigger_count = 0 },
	-- 在打捞点2完成第3次打捞
	{ config_id = 1007026, name = "QUEST_START_7026", event = EventType.EVENT_QUEST_START, source = "7900308", condition = "condition_EVENT_QUEST_START_7026", action = "action_EVENT_QUEST_START_7026", trigger_count = 0 },
	-- 在打捞点3完成第3次打捞
	{ config_id = 1007027, name = "QUEST_START_7027", event = EventType.EVENT_QUEST_START, source = "7900308", condition = "condition_EVENT_QUEST_START_7027", action = "action_EVENT_QUEST_START_7027", trigger_count = 0 },
	-- 打捞点3的守护机关脱战时开启路径
	{ config_id = 1007028, name = "GADGET_STATE_CHANGE_7028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7028", action = "action_EVENT_GADGET_STATE_CHANGE_7028", trigger_count = 0 },
	-- 打捞点1的守护机关脱战时开启路径
	{ config_id = 1007029, name = "GADGET_STATE_CHANGE_7029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7029", action = "action_EVENT_GADGET_STATE_CHANGE_7029", trigger_count = 0 },
	-- 打捞点1的守护机关启动时停止路径
	{ config_id = 1007030, name = "GADGET_STATE_CHANGE_7030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7030", action = "action_EVENT_GADGET_STATE_CHANGE_7030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "salvageCounter", value = 0, no_refresh = true },
	{ config_id = 2, name = "curPos", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7013", "VARIABLE_CHANGE_7014", "VARIABLE_CHANGE_7015", "VARIABLE_CHANGE_7016", "VARIABLE_CHANGE_7017", "GADGET_STATE_CHANGE_7018", "GADGET_STATE_CHANGE_7019", "GADGET_STATE_CHANGE_7020", "VARIABLE_CHANGE_7021", "ANY_GADGET_DIE_7022", "ANY_GADGET_DIE_7023", "ANY_GADGET_DIE_7024", "QUEST_START_7025", "QUEST_START_7026", "QUEST_START_7027", "GADGET_STATE_CHANGE_7028", "GADGET_STATE_CHANGE_7029", "GADGET_STATE_CHANGE_7030" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = [打捞点1出现炮台前的气泡群],
		monsters = { },
		gadgets = { 7004, 7005, 7006 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = [打捞点2出现炮台前的气泡群],
		monsters = { },
		gadgets = { 7007, 7008, 7009 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = [打捞点3出现炮台前的气泡群],
		monsters = { },
		gadgets = { 7010, 7011, 7012 },
		regions = { },
		triggers = { },
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
function condition_EVENT_VARIABLE_CHANGE_7013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"salvageCounter"为1
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7014(context, evt)
	-- 调用提示id为 40020101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"salvageCounter"为2
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7015(context, evt)
	-- 调用提示id为 40020103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7016(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002007, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002007, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7018(context, evt)
	if 7001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7018(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7019(context, evt)
	if 7001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7019(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 7001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7020(context, evt)
	if 7002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7020(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7021(context, evt)
	-- 调用提示id为 40020112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7022(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002106, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900308Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 40020106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 5)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7023(context, evt)
	if 7002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002105, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900308Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 40020106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 5)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7024(context, evt)
	if 7003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002107, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900308Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 40020106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 5)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_7025(context, evt)
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_7025(context, evt)
	-- 创建id为7003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 7004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 5)
	
	-- 调用提示id为 40020105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_7026(context, evt)
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_7026(context, evt)
	-- 创建id为7001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 7007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 5)
	
	-- 调用提示id为 40020105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_7027(context, evt)
	-- 判断变量"salvageCounter"为3
	if ScriptLib.GetGroupVariableValue(context, "salvageCounter") ~= 3 then
			return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_7027(context, evt)
	-- 创建id为7002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 7010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002007, 5)
	
	-- 调用提示id为 40020105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 40020105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7028(context, evt)
	if 7002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7028(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 7002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7029(context, evt)
	if 7003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7029(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 7003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7030(context, evt)
	if 7003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7030(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 7003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end