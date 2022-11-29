-- 基础信息
local base_info = {
	group_id = 133304042
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
	{ config_id = 42004, gadget_id = 70350451, pos = { x = -1489.375, y = 241.155, z = 2360.621 }, rot = { x = 5.902, y = 68.986, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 42005, gadget_id = 70350436, pos = { x = -1532.779, y = 270.349, z = 2339.314 }, rot = { x = 343.000, y = 248.000, z = 10.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	-- 特殊Region用来锁EyePoint
	{ config_id = 42008, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1489.375, y = 241.155, z = 2360.621 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 任务结束改显示屏201并设置保底变量
	{ config_id = 1042001, name = "QUEST_FINISH_42001", event = EventType.EVENT_QUEST_FINISH, source = "7302612", condition = "", action = "action_EVENT_QUEST_FINISH_42001", trigger_count = 0 },
	-- 显示屏gadget传来的lua_notify
	{ config_id = 1042002, name = "LUA_NOTIFY_42002", event = EventType.EVENT_LUA_NOTIFY, source = "TitanDriveFinish", condition = "", action = "action_EVENT_LUA_NOTIFY_42002", trigger_count = 0 },
	-- 保底
	{ config_id = 1042003, name = "GROUP_LOAD_42003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_42003", action = "action_EVENT_GROUP_LOAD_42003", trigger_count = 0 },
	-- 等UI界面关掉再流转任务
	{ config_id = 1042006, name = "TIME_AXIS_PASS_42006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_42006", action = "action_EVENT_TIME_AXIS_PASS_42006", trigger_count = 0 },
	-- 任务开始加交互
	{ config_id = 1042007, name = "QUEST_START_42007", event = EventType.EVENT_QUEST_START, source = "7302612", condition = "", action = "action_EVENT_QUEST_START_42007", trigger_count = 0 },
	-- 将视野点转移到外屏
	{ config_id = 1042009, name = "LUA_NOTIFY_42009", event = EventType.EVENT_LUA_NOTIFY, source = "OpenScreen", condition = "", action = "action_EVENT_LUA_NOTIFY_42009", trigger_count = 0 },
	-- 将视野点撤回
	{ config_id = 1042010, name = "LUA_NOTIFY_42010", event = EventType.EVENT_LUA_NOTIFY, source = "CloseScreen", condition = "", action = "action_EVENT_LUA_NOTIFY_42010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "notify", value = 0, no_refresh = true }
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
		gadgets = { 42004, 42005 },
		regions = { 42008 },
		triggers = { "QUEST_FINISH_42001", "LUA_NOTIFY_42002", "GROUP_LOAD_42003", "TIME_AXIS_PASS_42006", "QUEST_START_42007", "LUA_NOTIFY_42009", "LUA_NOTIFY_42010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_42001(context, evt)
	-- 将configid为 42005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_42002(context, evt)
	-- 将本组内变量名为 "notify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "notify", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 33040102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"close"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "close", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_42003(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	-- 判断变量"notify"为1
	if ScriptLib.GetGroupVariableValue(context, "notify") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_42003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_42006(context, evt)
	if "close" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_42006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_42007(context, evt)
	-- 将configid为 42005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_42009(context, evt)
	ScriptLib.SetPlayerEyePoint(context, 42008,42008)
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_42010(context, evt)
	    ScriptLib.ClearPlayerEyePoint(context, 42008)
	
	return 0
end