-- 基础信息
local base_info = {
	group_id = 220139004
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
	{ config_id = 4001, gadget_id = 70310251, pos = { x = -5.324, y = 84.795, z = 22.381 }, rot = { x = 0.000, y = 269.338, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 36 } },
	{ config_id = 4002, gadget_id = 70310453, pos = { x = -0.514, y = 87.735, z = 22.168 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4009, gadget_id = 70690011, pos = { x = 20.584, y = 68.814, z = 22.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4010, gadget_id = 70690011, pos = { x = 48.861, y = 74.861, z = 22.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70690011, pos = { x = 74.294, y = 84.540, z = 22.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "GADGET_STATE_CHANGE_4003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4003", action = "action_EVENT_GADGET_STATE_CHANGE_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "VARIABLE_CHANGE_4004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4004", action = "action_EVENT_VARIABLE_CHANGE_4004" },
	{ config_id = 1004005, name = "VARIABLE_CHANGE_4005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4005", action = "action_EVENT_VARIABLE_CHANGE_4005" },
	{ config_id = 1004006, name = "VARIABLE_CHANGE_4006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4006", action = "action_EVENT_VARIABLE_CHANGE_4006" },
	{ config_id = 1004007, name = "OBSERVATION_POINT_NOTIFY_4007", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "VARIABLE_CHANGE_4008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4008", action = "action_EVENT_VARIABLE_CHANGE_4008" },
	{ config_id = 1004012, name = "VARIABLE_CHANGE_4012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4012", action = "action_EVENT_VARIABLE_CHANGE_4012" },
	{ config_id = 1004013, name = "QUEST_FINISH_4013", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_4013", action = "action_EVENT_QUEST_FINISH_4013" },
	-- 运营埋点-触发组件
	{ config_id = 1004014, name = "GADGET_STATE_CHANGE_4014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4014", action = "action_EVENT_GADGET_STATE_CHANGE_4014", trigger_count = 0 },
	{ config_id = 1004015, name = "GROUP_LOAD_4015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4015", action = "action_EVENT_GROUP_LOAD_4015", trigger_count = 0 },
	-- 4007308 任务保底
	{ config_id = 1004016, name = "QUEST_START_4016", event = EventType.EVENT_QUEST_START, source = "4007308", condition = "condition_EVENT_QUEST_START_4016", action = "action_EVENT_QUEST_START_4016", trigger_count = 0 },
	-- 4007307 任务保底
	{ config_id = 1004017, name = "QUEST_START_4017", event = EventType.EVENT_QUEST_START, source = "4007307", condition = "condition_EVENT_QUEST_START_4017", action = "action_EVENT_QUEST_START_4017", trigger_count = 0 },
	-- 4007308 任务保底
	{ config_id = 1004018, name = "GROUP_LOAD_4018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4018", action = "action_EVENT_GROUP_LOAD_4018", trigger_count = 0 },
	-- 4007307 任务保底
	{ config_id = 1004019, name = "GROUP_LOAD_4019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4019", action = "action_EVENT_GROUP_LOAD_4019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CastleToyB", value = 0, no_refresh = true },
	{ config_id = 2, name = "CastleToyC", value = 0, no_refresh = true },
	{ config_id = 3, name = "finish", value = 0, no_refresh = false }
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
		gadgets = { 4001, 4002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4003", "VARIABLE_CHANGE_4004", "VARIABLE_CHANGE_4005", "VARIABLE_CHANGE_4006", "OBSERVATION_POINT_NOTIFY_4007", "VARIABLE_CHANGE_4008", "VARIABLE_CHANGE_4012", "QUEST_FINISH_4013", "GADGET_STATE_CHANGE_4014", "GROUP_LOAD_4015", "QUEST_START_4016", "QUEST_START_4017", "GROUP_LOAD_4018", "GROUP_LOAD_4019" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4009, 4010, 4011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_4003(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4003(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"CastleToyB"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyB") ~= 1 then
			return false
	end
	
	-- 判断变量"CastleToyC"为0
	if ScriptLib.GetGroupVariableValue(context, "CastleToyC") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4004(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"CastleToyC"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyC") ~= 1 then
			return false
	end
	
	-- 判断变量"CastleToyB"为0
	if ScriptLib.GetGroupVariableValue(context, "CastleToyB") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4005(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"CastleToyC"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyC") ~= 1 then
			return false
	end
	
	-- 判断变量"CastleToyB"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyB") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4006(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_4007(context, evt)
	if 4001 == evt.param1 and 305 == evt.param2 then
		ScriptLib.ChangeToTargetLevelTag(context, 41)
		
		ScriptLib.AddQuestProgress(context, "4007310")
		
		ScriptLib.SetGadgetStateByConfigId(context,4001, GadgetState.ChestOpened)
		
		ScriptLib.SetGroupVariableValue(context, "finish", 1)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "castle", 1, 220139046)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139004, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4012(context, evt)
	ScriptLib.ChangeToTargetLevelTag(context, 41)
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_4013(context, evt)
	--检查ID为4007309的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4007309 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_4013(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4014(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 3, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4015(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139004, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_4016(context, evt)
	-- 判断变量"CastleToyC"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyC") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_4016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007308") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_4017(context, evt)
	-- 判断变量"CastleToyB"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyB") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_4017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007307") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4018(context, evt)
	-- 判断变量"CastleToyC"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyC") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007308") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4019(context, evt)
	-- 判断变量"CastleToyB"为1
	if ScriptLib.GetGroupVariableValue(context, "CastleToyB") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007307") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end