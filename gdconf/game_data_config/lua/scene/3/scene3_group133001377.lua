-- 基础信息
local base_info = {
	group_id = 133001377
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
	{ config_id = 377001, gadget_id = 71700106, pos = { x = 1613.942, y = 249.612, z = -1607.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1377002, name = "QUEST_FINISH_377002", event = EventType.EVENT_QUEST_FINISH, source = "101104", condition = "condition_EVENT_QUEST_FINISH_377002", action = "action_EVENT_QUEST_FINISH_377002", trigger_count = 0 },
	{ config_id = 1377003, name = "GADGET_STATE_CHANGE_377003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377003", action = "action_EVENT_GADGET_STATE_CHANGE_377003", trigger_count = 0 },
	{ config_id = 1377005, name = "GADGET_STATE_CHANGE_377005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377005", action = "action_EVENT_GADGET_STATE_CHANGE_377005", trigger_count = 0 },
	{ config_id = 1377007, name = "GADGET_STATE_CHANGE_377007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377007", action = "action_EVENT_GADGET_STATE_CHANGE_377007", trigger_count = 0 },
	{ config_id = 1377008, name = "GADGET_STATE_CHANGE_377008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377008", action = "action_EVENT_GADGET_STATE_CHANGE_377008", trigger_count = 0 },
	{ config_id = 1377009, name = "GADGET_STATE_CHANGE_377009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377009", action = "action_EVENT_GADGET_STATE_CHANGE_377009", trigger_count = 0 },
	{ config_id = 1377010, name = "GADGET_STATE_CHANGE_377010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377010", action = "action_EVENT_GADGET_STATE_CHANGE_377010", trigger_count = 0 },
	{ config_id = 1377011, name = "GADGET_STATE_CHANGE_377011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377011", action = "action_EVENT_GADGET_STATE_CHANGE_377011", trigger_count = 0 },
	{ config_id = 1377012, name = "GADGET_STATE_CHANGE_377012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377012", action = "action_EVENT_GADGET_STATE_CHANGE_377012", trigger_count = 0 },
	{ config_id = 1377013, name = "GADGET_STATE_CHANGE_377013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377013", action = "action_EVENT_GADGET_STATE_CHANGE_377013", trigger_count = 0 },
	{ config_id = 1377014, name = "GADGET_STATE_CHANGE_377014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377014", action = "action_EVENT_GADGET_STATE_CHANGE_377014", trigger_count = 0 },
	{ config_id = 1377015, name = "GADGET_STATE_CHANGE_377015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377015", action = "action_EVENT_GADGET_STATE_CHANGE_377015", trigger_count = 0 },
	{ config_id = 1377016, name = "GADGET_STATE_CHANGE_377016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377016", action = "action_EVENT_GADGET_STATE_CHANGE_377016", trigger_count = 0 },
	{ config_id = 1377017, name = "GADGET_STATE_CHANGE_377017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377017", action = "action_EVENT_GADGET_STATE_CHANGE_377017", trigger_count = 0 },
	{ config_id = 1377018, name = "GADGET_STATE_CHANGE_377018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377018", action = "action_EVENT_GADGET_STATE_CHANGE_377018", trigger_count = 0 },
	{ config_id = 1377019, name = "GADGET_STATE_CHANGE_377019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377019", action = "action_EVENT_GADGET_STATE_CHANGE_377019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true }
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
		gadgets = { 377001 },
		regions = { },
		triggers = { "QUEST_FINISH_377002", "GADGET_STATE_CHANGE_377003", "GADGET_STATE_CHANGE_377005", "GADGET_STATE_CHANGE_377007", "GADGET_STATE_CHANGE_377008", "GADGET_STATE_CHANGE_377009", "GADGET_STATE_CHANGE_377010", "GADGET_STATE_CHANGE_377011", "GADGET_STATE_CHANGE_377012", "GADGET_STATE_CHANGE_377013", "GADGET_STATE_CHANGE_377014", "GADGET_STATE_CHANGE_377015", "GADGET_STATE_CHANGE_377016", "GADGET_STATE_CHANGE_377017", "GADGET_STATE_CHANGE_377018", "GADGET_STATE_CHANGE_377019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_377002(context, evt)
	--检查ID为101104的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 101104 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_377002(context, evt)
	-- 将configid为 377001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isfinished" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377003(context, evt)
	if 377001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001378, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300137701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377005(context, evt)
	if 377001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001378, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300137702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377007(context, evt)
	if 377001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300137703") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377008(context, evt)
	-- 检测config_id为377001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 377001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001377204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377009(context, evt)
	-- 检测config_id为377001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 377001 ~= evt.param2 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001377901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377010(context, evt)
	-- 检测config_id为377001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 377001 ~= evt.param2 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001377201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377011(context, evt)
	-- 检测config_id为377001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 377001 ~= evt.param2 or GadgetState.Action02 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001377902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377012(context, evt)
	-- 检测config_id为377001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 377001 ~= evt.param2 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001377202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377013(context, evt)
	-- 检测config_id为377001的gadget是否从GadgetState.Default变为GadgetState.GearAction2
	if 377001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001377203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377014(context, evt)
	if 377001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013779011") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377015(context, evt)
	if 377001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013772011") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377016(context, evt)
	if 377001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013779021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377017(context, evt)
	if 377001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013772021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377018(context, evt)
	if 377001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013772031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "isfinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377019(context, evt)
	if 377001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013772041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end