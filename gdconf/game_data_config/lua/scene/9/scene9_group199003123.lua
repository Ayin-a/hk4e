-- 基础信息
local base_info = {
	group_id = 199003123
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
	{ config_id = 123001, gadget_id = 70310330, pos = { x = -673.519, y = 120.343, z = -86.048 }, rot = { x = 0.000, y = 55.564, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1123002, name = "QUEST_START_123002", event = EventType.EVENT_QUEST_START, source = "4007416", condition = "", action = "action_EVENT_QUEST_START_123002", trigger_count = 0 },
	{ config_id = 1123003, name = "QUEST_START_123003", event = EventType.EVENT_QUEST_START, source = "4007501", condition = "", action = "action_EVENT_QUEST_START_123003", trigger_count = 0 },
	{ config_id = 1123004, name = "QUEST_START_123004", event = EventType.EVENT_QUEST_START, source = "4007511", condition = "", action = "action_EVENT_QUEST_START_123004", trigger_count = 0 },
	{ config_id = 1123005, name = "QUEST_START_123005", event = EventType.EVENT_QUEST_START, source = "4007601", condition = "", action = "action_EVENT_QUEST_START_123005", trigger_count = 0 },
	{ config_id = 1123006, name = "QUEST_START_123006", event = EventType.EVENT_QUEST_START, source = "4007502", condition = "", action = "action_EVENT_QUEST_START_123006", trigger_count = 0 },
	{ config_id = 1123007, name = "QUEST_START_123007", event = EventType.EVENT_QUEST_START, source = "4007616", condition = "", action = "action_EVENT_QUEST_START_123007", trigger_count = 0 },
	{ config_id = 1123008, name = "GROUP_LOAD_123008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_123008", trigger_count = 0 }
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
		gadgets = { 123001 },
		regions = { },
		triggers = { "QUEST_START_123002", "QUEST_START_123003", "QUEST_START_123004", "QUEST_START_123005", "QUEST_START_123006", "QUEST_START_123007", "GROUP_LOAD_123008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_123002(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 202
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "state" 的变量设置为 202
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 202, 199003157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123003(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 202
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "state" 的变量设置为 202
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 202, 199003157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123004(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "state" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 201, 199003157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123005(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "state" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 201, 199003157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123006(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "state" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 0, 199003157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123007(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "state" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "state" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "state", 0, 199003157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_123008(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "state", 199003123) == 202 then
	
	ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStop) 
	
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "state", 199003123) == 201 then 
	ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStart)
	
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "state", 199003123) == 0 then
	ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.Default) 
	
	end
	
	return 0
end