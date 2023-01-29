-- 基础信息
local base_info = {
	group_id = 133313070
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
	{ config_id = 70001, gadget_id = 70350451, pos = { x = -167.669, y = 153.610, z = 5339.036 }, rot = { x = 14.472, y = 215.609, z = 356.533 }, level = 32, area_id = 32 },
	{ config_id = 70002, gadget_id = 70290638, pos = { x = -139.888, y = 183.886, z = 5369.677 }, rot = { x = 328.298, y = 44.222, z = 20.273 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 特殊Region用来锁EyePoint
	{ config_id = 70007, shape = RegionShape.SPHERE, radius = 70, pos = { x = -122.363, y = 179.039, z = 5383.133 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 任务结束改显示屏为不可交互并设置保底变量
	{ config_id = 1070003, name = "QUEST_FINISH_70003", event = EventType.EVENT_QUEST_FINISH, source = "7310303", condition = "", action = "action_EVENT_QUEST_FINISH_70003", trigger_count = 0 },
	-- 显示屏gadget传来的lua_notify，通知任务进度
	{ config_id = 1070004, name = "LUA_NOTIFY_70004", event = EventType.EVENT_LUA_NOTIFY, source = "TitanMove", condition = "", action = "action_EVENT_LUA_NOTIFY_70004", trigger_count = 0 },
	-- 保底
	{ config_id = 1070005, name = "GROUP_LOAD_70005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_70005", action = "action_EVENT_GROUP_LOAD_70005", trigger_count = 0 },
	-- 任务开始加交互
	{ config_id = 1070006, name = "QUEST_START_70006", event = EventType.EVENT_QUEST_START, source = "7310303", condition = "", action = "action_EVENT_QUEST_START_70006", trigger_count = 0 },
	-- 将视野点转移到外屏
	{ config_id = 1070008, name = "LUA_NOTIFY_70008", event = EventType.EVENT_LUA_NOTIFY, source = "OpenScreen", condition = "", action = "action_EVENT_LUA_NOTIFY_70008", trigger_count = 0 },
	-- 将视野点撤回
	{ config_id = 1070009, name = "LUA_NOTIFY_70009", event = EventType.EVENT_LUA_NOTIFY, source = "CloseScreen", condition = "", action = "action_EVENT_LUA_NOTIFY_70009", trigger_count = 0 },
	-- 1s后通知任务完成
	{ config_id = 1070010, name = "TIME_AXIS_PASS_70010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_70010", action = "action_EVENT_TIME_AXIS_PASS_70010", trigger_count = 0 }
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
		gadgets = { 70001, 70002 },
		regions = { 70007 },
		triggers = { "QUEST_FINISH_70003", "LUA_NOTIFY_70004", "GROUP_LOAD_70005", "QUEST_START_70006", "TIME_AXIS_PASS_70010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function action_EVENT_QUEST_FINISH_70003(context, evt)
	-- 将configid为 70002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70002, GadgetState.Default) then
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
function action_EVENT_LUA_NOTIFY_70004(context, evt)
	-- 将本组内变量名为 "notify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "notify", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"quest_finish"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "quest_finish", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_70005(context, evt)
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
function action_EVENT_GROUP_LOAD_70005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318714") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70006(context, evt)
	-- 将configid为 70002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_70008(context, evt)
	ScriptLib.SetPlayerEyePoint(context, 42008,42008)
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_70009(context, evt)
	    ScriptLib.ClearPlayerEyePoint(context, 70007)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_70010(context, evt)
	if "quest_finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_70010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 停止标识为"quest_finish"的时间轴
	ScriptLib.EndTimeAxis(context, "quest_finish")
	
	
	return 0
end