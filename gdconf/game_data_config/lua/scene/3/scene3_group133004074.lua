-- 基础信息
local base_info = {
	group_id = 133004074
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
	{ config_id = 74001, npc_id = 30217, pos = { x = 2206.674, y = 230.089, z = -801.455 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, area_id = 1 }
}

-- 装置
gadgets = {
	{ config_id = 74002, gadget_id = 70290425, pos = { x = 2206.853, y = 230.089, z = -803.203 }, rot = { x = 0.000, y = 74.076, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 74003, gadget_id = 70290426, pos = { x = 2206.853, y = 230.089, z = -803.203 }, rot = { x = 0.000, y = 74.076, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 74007, gadget_id = 70290425, pos = { x = 2206.853, y = 230.089, z = -803.203 }, rot = { x = 0.000, y = 74.076, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74008, gadget_id = 70290426, pos = { x = 2206.853, y = 230.089, z = -803.203 }, rot = { x = 0.000, y = 74.076, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74015, gadget_id = 71700417, pos = { x = 2207.042, y = 230.089, z = -805.041 }, rot = { x = 0.000, y = 164.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074004, name = "QUEST_FINISH_74004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_74004", action = "action_EVENT_QUEST_FINISH_74004", trigger_count = 0 },
	{ config_id = 1074005, name = "QUEST_FINISH_74005", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_74005", action = "action_EVENT_QUEST_FINISH_74005", trigger_count = 0 },
	{ config_id = 1074006, name = "QUEST_FINISH_74006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_74006", action = "action_EVENT_QUEST_FINISH_74006", trigger_count = 0 },
	{ config_id = 1074009, name = "VARIABLE_CHANGE_74009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74009", action = "action_EVENT_VARIABLE_CHANGE_74009", trigger_count = 0 },
	{ config_id = 1074010, name = "VARIABLE_CHANGE_74010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74010", action = "action_EVENT_VARIABLE_CHANGE_74010", trigger_count = 0 },
	{ config_id = 1074011, name = "VARIABLE_CHANGE_74011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74011", action = "action_EVENT_VARIABLE_CHANGE_74011", trigger_count = 0 },
	{ config_id = 1074012, name = "GROUP_LOAD_74012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_74012", action = "action_EVENT_GROUP_LOAD_74012", trigger_count = 0 },
	{ config_id = 1074013, name = "GROUP_REFRESH_74013", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_74013", action = "action_EVENT_GROUP_REFRESH_74013", trigger_count = 0 },
	{ config_id = 1074014, name = "GROUP_REFRESH_74014", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_74014", action = "action_EVENT_GROUP_REFRESH_74014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "7051404", value = 0, no_refresh = true },
	{ config_id = 2, name = "7051501", value = 0, no_refresh = true },
	{ config_id = 3, name = "7051502", value = 0, no_refresh = true }
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
		gadgets = { 74002, 74003, 74015 },
		regions = { },
		triggers = { "QUEST_FINISH_74004", "VARIABLE_CHANGE_74009", "GROUP_LOAD_74012" },
		npcs = { 74001 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 74003, 74007, 74015 },
		regions = { },
		triggers = { "QUEST_FINISH_74005", "VARIABLE_CHANGE_74010", "GROUP_REFRESH_74013" },
		npcs = { 74001 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 74002, 74008, 74015 },
		regions = { },
		triggers = { "QUEST_FINISH_74006", "VARIABLE_CHANGE_74011", "GROUP_REFRESH_74014" },
		npcs = { 74001 },
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
function condition_EVENT_QUEST_FINISH_74004(context, evt)
	--检查ID为7051404的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7051404 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_74004(context, evt)
	-- 将本组内变量名为 "7051404" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "7051404", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_74005(context, evt)
	--检查ID为7051501的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7051501 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_74005(context, evt)
	-- 将本组内变量名为 "7051501" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "7051501", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_74006(context, evt)
	--检查ID为7051502的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7051502 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_74006(context, evt)
	-- 将本组内变量名为 "7051502" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "7051502", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"7051404"为1
	if ScriptLib.GetGroupVariableValue(context, "7051404") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004074, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"7051501"为1
	if ScriptLib.GetGroupVariableValue(context, "7051501") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004074, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"7051502"为1
	if ScriptLib.GetGroupVariableValue(context, "7051502") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004074, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_74012(context, evt)
	-- 判断变量"7051404"为1
	if ScriptLib.GetGroupVariableValue(context, "7051404") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_74012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004074, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_74013(context, evt)
	-- 判断变量"7051501"为1
	if ScriptLib.GetGroupVariableValue(context, "7051501") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_74013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004074, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_74014(context, evt)
	-- 判断变量"7051502"为1
	if ScriptLib.GetGroupVariableValue(context, "7051502") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_74014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004074, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end