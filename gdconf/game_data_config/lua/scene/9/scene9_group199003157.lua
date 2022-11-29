-- 基础信息
local base_info = {
	group_id = 199003157
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
	{ config_id = 157001, gadget_id = 70310330, pos = { x = -672.669, y = 121.023, z = -87.275 }, rot = { x = 2.491, y = 55.294, z = 354.315 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1157002, name = "QUEST_FINISH_157002", event = EventType.EVENT_QUEST_FINISH, source = "4007416", condition = "", action = "action_EVENT_QUEST_FINISH_157002", trigger_count = 0 },
	{ config_id = 1157003, name = "QUEST_START_157003", event = EventType.EVENT_QUEST_START, source = "4007501", condition = "", action = "action_EVENT_QUEST_START_157003", trigger_count = 0 },
	{ config_id = 1157004, name = "QUEST_FINISH_157004", event = EventType.EVENT_QUEST_FINISH, source = "4007511", condition = "", action = "action_EVENT_QUEST_FINISH_157004", trigger_count = 0 },
	{ config_id = 1157005, name = "QUEST_START_157005", event = EventType.EVENT_QUEST_START, source = "4007601", condition = "", action = "action_EVENT_QUEST_START_157005", trigger_count = 0 },
	{ config_id = 1157006, name = "QUEST_START_157006", event = EventType.EVENT_QUEST_START, source = "4007502", condition = "", action = "action_EVENT_QUEST_START_157006", trigger_count = 0 },
	{ config_id = 1157007, name = "QUEST_START_157007", event = EventType.EVENT_QUEST_START, source = "4007616", condition = "", action = "action_EVENT_QUEST_START_157007", trigger_count = 0 },
	{ config_id = 1157008, name = "GROUP_LOAD_157008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_157008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "state", value = 0, no_refresh = true }
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
		gadgets = { 157001 },
		regions = { },
		triggers = { "QUEST_FINISH_157002", "QUEST_START_157003", "QUEST_FINISH_157004", "QUEST_START_157005", "QUEST_START_157006", "QUEST_START_157007", "GROUP_LOAD_157008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_157002(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 202
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 157001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 202
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 202, 199003123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_157003(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 202
	ScriptLib.SetGroupVariableValue(context, "state", 202) 
	
	 ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.GearStop) 
	
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 2 }) 
	
	ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 2 }) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 2 }) 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_157004(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 157001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 201, 199003123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_157005(context, evt)
	ScriptLib.SetGroupVariableValue(context, "state", 201)
	
	 ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.GearStart) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 2 }) 
	
	ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 2 }) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 2 }) 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_157006(context, evt)
	ScriptLib.SetGroupVariableValue(context, "state", 0) 
	
	 ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.Default) 
	
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 1 }) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 1 }) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 1 })
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_157007(context, evt)
	 ScriptLib.SetGroupVariableValue(context, "state", 0)
	
	 ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.Default) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 1 }) 
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 1 }) 
	
	ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 1 })
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_157008(context, evt)
	if ScriptLib.GetHostQuestState(context,4007501)==2 then
	
	ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.GearStop) 
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 2 }) 
	 ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 2 }) 
	 ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 2 })
	
	
	elseif ScriptLib.GetHostQuestState(context,4007601)==2 then
	 
	ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.GearStart)
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 2 }) 
	 ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 2 }) 
	 ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 2 })
	
	
	else
	
	ScriptLib.SetGadgetStateByConfigId(context, 157001, GadgetState.Default) 
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 1 }) 
	 ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 1 }) 
	 ScriptLib.RefreshGroup(context, { group_id = 199003129, suite = 1 })
	
	end
	
	return 0
end