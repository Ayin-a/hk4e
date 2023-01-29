-- 基础信息
local base_info = {
	group_id = 133314093
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
	{ config_id = 93001, gadget_id = 70350451, pos = { x = -456.295, y = 112.772, z = 4502.572 }, rot = { x = 21.734, y = 310.116, z = 352.445 }, level = 30, area_id = 32 },
	{ config_id = 93002, gadget_id = 70290638, pos = { x = -425.419, y = 142.396, z = 4472.000 }, rot = { x = 331.511, y = 134.811, z = 3.722 }, level = 30, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 特殊Region用来锁EyePoint
	{ config_id = 93008, shape = RegionShape.SPHERE, radius = 70, pos = { x = -384.037, y = 114.349, z = 4449.706 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 任务结束改显示屏为不可交互并设置保底变量
	{ config_id = 1093003, name = "QUEST_FINISH_93003", event = EventType.EVENT_QUEST_FINISH, source = "7318710", condition = "", action = "action_EVENT_QUEST_FINISH_93003", trigger_count = 0 },
	-- 显示屏gadget传来的lua_notify，通知任务进度
	{ config_id = 1093004, name = "LUA_NOTIFY_93004", event = EventType.EVENT_LUA_NOTIFY, source = "TitanMove", condition = "", action = "action_EVENT_LUA_NOTIFY_93004", trigger_count = 0 },
	-- 保底
	{ config_id = 1093005, name = "GROUP_LOAD_93005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93005", action = "action_EVENT_GROUP_LOAD_93005", trigger_count = 0 },
	{ config_id = 1093006, name = "TIME_AXIS_PASS_93006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_93006", action = "action_EVENT_TIME_AXIS_PASS_93006", trigger_count = 0 },
	-- 任务开始加交互
	{ config_id = 1093007, name = "QUEST_START_93007", event = EventType.EVENT_QUEST_START, source = "7318710", condition = "", action = "action_EVENT_QUEST_START_93007", trigger_count = 0 },
	-- 将视野点转移到外屏
	{ config_id = 1093009, name = "LUA_NOTIFY_93009", event = EventType.EVENT_LUA_NOTIFY, source = "OpenScreen", condition = "", action = "action_EVENT_LUA_NOTIFY_93009", trigger_count = 0 },
	-- 将视野点撤回
	{ config_id = 1093010, name = "LUA_NOTIFY_93010", event = EventType.EVENT_LUA_NOTIFY, source = "CloseScreen", condition = "", action = "action_EVENT_LUA_NOTIFY_93010", trigger_count = 0 }
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
		gadgets = { 93001, 93002 },
		regions = { },
		triggers = { "QUEST_FINISH_93003", "LUA_NOTIFY_93004", "GROUP_LOAD_93005", "TIME_AXIS_PASS_93006", "QUEST_START_93007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 任务完成suit,
		monsters = { },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_93003(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) then
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
function action_EVENT_LUA_NOTIFY_93004(context, evt)
	-- 将本组内变量名为 "notify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "notify", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"finish_quest"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "finish_quest", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_93005(context, evt)
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
function action_EVENT_GROUP_LOAD_93005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318710") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_93006(context, evt)
	if "finish_quest" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_93006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318710") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 停止标识为"finish_quest"的时间轴
	ScriptLib.EndTimeAxis(context, "finish_quest")
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_93007(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_93009(context, evt)
	ScriptLib.SetPlayerEyePoint(context, 42008,42008)
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_93010(context, evt)
	    ScriptLib.ClearPlayerEyePoint(context, 93008)
	
	return 0
end