-- 基础信息
local base_info = {
	group_id = 133312057
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
	{ config_id = 57001, gadget_id = 70330262, pos = { x = -3326.881, y = 255.401, z = 4577.257 }, rot = { x = 342.210, y = 177.829, z = 75.362 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 57002, gadget_id = 70330451, pos = { x = -3294.964, y = 237.657, z = 4593.402 }, rot = { x = 16.606, y = 142.990, z = 7.246 }, level = 32, state = GadgetState.Action01, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 57004, gadget_id = 70330262, pos = { x = -3325.499, y = 255.170, z = 4573.576 }, rot = { x = 308.629, y = 71.518, z = 128.800 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 57006, gadget_id = 70330437, pos = { x = -3303.628, y = 207.286, z = 4593.738 }, rot = { x = 82.482, y = 178.180, z = 175.503 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 57011, gadget_id = 70330262, pos = { x = -3322.143, y = 254.793, z = 4582.224 }, rot = { x = 324.588, y = 252.200, z = 65.075 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 57012, gadget_id = 70950047, pos = { x = -3302.906, y = 211.454, z = 4590.778 }, rot = { x = 356.478, y = 1.457, z = 337.508 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 57013, gadget_id = 70950047, pos = { x = -3302.761, y = 211.712, z = 4595.188 }, rot = { x = 356.478, y = 1.457, z = 337.508 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 57014, gadget_id = 70950046, pos = { x = -3299.275, y = 210.160, z = 4591.387 }, rot = { x = 355.980, y = 8.512, z = 331.529 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 57015, gadget_id = 70950046, pos = { x = -3299.675, y = 210.863, z = 4594.296 }, rot = { x = 353.926, y = 9.633, z = 331.431 }, level = 32, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057003, name = "ANY_GADGET_DIE_57003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_57003", action = "action_EVENT_ANY_GADGET_DIE_57003", trigger_count = 0 },
	{ config_id = 1057007, name = "GROUP_LOAD_57007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57007", action = "action_EVENT_GROUP_LOAD_57007", trigger_count = 0 },
	{ config_id = 1057008, name = "QUEST_FINISH_57008", event = EventType.EVENT_QUEST_FINISH, source = "7308410", condition = "", action = "action_EVENT_QUEST_FINISH_57008", trigger_count = 0 },
	{ config_id = 1057009, name = "TIME_AXIS_PASS_57009", event = EventType.EVENT_TIME_AXIS_PASS, source = "die", condition = "condition_EVENT_TIME_AXIS_PASS_57009", action = "action_EVENT_TIME_AXIS_PASS_57009", trigger_count = 0 },
	{ config_id = 1057010, name = "VARIABLE_CHANGE_57010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_57010", action = "action_EVENT_VARIABLE_CHANGE_57010", trigger_count = 0 },
	{ config_id = 1057016, name = "GROUP_LOAD_57016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57016", action = "action_EVENT_GROUP_LOAD_57016", trigger_count = 0 },
	{ config_id = 1057017, name = "GROUP_LOAD_57017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57017", action = "action_EVENT_GROUP_LOAD_57017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "quest", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 57005, gadget_id = 70330437, pos = { x = -3301.599, y = 208.178, z = 4593.509 }, rot = { x = 52.635, y = 258.092, z = 124.576 }, level = 32, persistent = true, area_id = 28 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 57001, 57002, 57004, 57006, 57011, 57012, 57013, 57014, 57015 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_57003", "GROUP_LOAD_57007", "QUEST_FINISH_57008", "TIME_AXIS_PASS_57009", "VARIABLE_CHANGE_57010", "GROUP_LOAD_57016", "GROUP_LOAD_57017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_57007", "GROUP_LOAD_57016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_57003(context, evt)
	-- 判断指定group组剩余gadget数量是否是6 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133312057}) ~= 6 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_57003(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为100 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 100, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 57002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 57006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"die"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "die", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_57007(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_57007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308411") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133312057, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_57008(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 57001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_57009(context, evt)
	if "die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_57009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133312057, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 停止标识为"die"的时间轴
	ScriptLib.EndTimeAxis(context, "die")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_57010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_57010(context, evt)
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_57016(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_57016(context, evt)
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	
		end 
	
	-- 改变指定group组133312002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310020, 20008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_57017(context, evt)
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_57017(context, evt)
	-- 将configid为 57001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 57011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end