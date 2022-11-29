-- 基础信息
local base_info = {
	group_id = 133312059
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
	{ config_id = 59001, gadget_id = 70330262, pos = { x = -3274.414, y = 229.727, z = 4610.380 }, rot = { x = 15.327, y = 267.169, z = 27.923 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 59002, gadget_id = 70330451, pos = { x = -3274.957, y = 231.061, z = 4612.495 }, rot = { x = 30.183, y = 22.868, z = 326.786 }, level = 32, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成
	{ config_id = 1059003, name = "ANY_GADGET_DIE_59003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_59003", action = "action_EVENT_ANY_GADGET_DIE_59003", trigger_count = 0 },
	-- 保底
	{ config_id = 1059004, name = "GROUP_LOAD_59004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_59004", action = "action_EVENT_GROUP_LOAD_59004", trigger_count = 0 },
	{ config_id = 1059005, name = "TIME_AXIS_PASS_59005", event = EventType.EVENT_TIME_AXIS_PASS, source = "die", condition = "condition_EVENT_TIME_AXIS_PASS_59005", action = "action_EVENT_TIME_AXIS_PASS_59005", trigger_count = 0 },
	{ config_id = 1059006, name = "QUEST_START_59006", event = EventType.EVENT_QUEST_START, source = "7308410", condition = "", action = "action_EVENT_QUEST_START_59006", trigger_count = 0 },
	{ config_id = 1059007, name = "VARIABLE_CHANGE_59007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_59007", action = "action_EVENT_VARIABLE_CHANGE_59007", trigger_count = 0 },
	{ config_id = 1059008, name = "GROUP_LOAD_59008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_59008", action = "action_EVENT_GROUP_LOAD_59008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 59001, 59002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_59003", "GROUP_LOAD_59004", "TIME_AXIS_PASS_59005", "QUEST_START_59006", "VARIABLE_CHANGE_59007", "GROUP_LOAD_59008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_59004", "GROUP_LOAD_59008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_59003(context, evt)
	if 59001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_59003(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 59002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"die"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "die", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_59004(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133312059, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_59005(context, evt)
	if "die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_59005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133312059, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 停止标识为"die"的时间轴
	ScriptLib.EndTimeAxis(context, "die")
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_59006(context, evt)
	-- 将configid为 59001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_59007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59007(context, evt)
	-- 改变指定group组133312003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310018, 18001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组0中， configid为0的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310018, 18003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组0中， configid为0的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310018, 18004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_59008(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59008(context, evt)
	-- 改变指定group组133312003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310018, 18001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组0中， configid为0的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310018, 18003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组0中， configid为0的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133310018, 18004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end