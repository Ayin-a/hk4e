-- 基础信息
local base_info = {
	group_id = 199004002
}

-- DEFS_MISCS
--仅测试用
local defs = {
	--填leveltagID，每次交互会顺次循环切换
    tag_list = {1,2},
    
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
	-- 自定义物件
	{ config_id = 2001, gadget_id = 70290379, pos = { x = -224.870, y = 121.794, z = -509.960 }, rot = { x = 0.000, y = 45.643, z = 0.000 }, level = 1, persistent = true, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "QUEST_FINISH_2002", event = EventType.EVENT_QUEST_FINISH, source = "7902502", condition = "", action = "action_EVENT_QUEST_FINISH_2002", trigger_count = 0 },
	{ config_id = 1002005, name = "QUEST_START_2005", event = EventType.EVENT_QUEST_START, source = "7902506", condition = "", action = "action_EVENT_QUEST_START_2005", trigger_count = 0 },
	{ config_id = 1002006, name = "QUEST_START_2006", event = EventType.EVENT_QUEST_START, source = "7902508", condition = "", action = "action_EVENT_QUEST_START_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "QUEST_START_2007", event = EventType.EVENT_QUEST_START, source = "7902547", condition = "", action = "action_EVENT_QUEST_START_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "QUEST_FINISH_2008", event = EventType.EVENT_QUEST_FINISH, source = "7902547", condition = "", action = "action_EVENT_QUEST_FINISH_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "QUEST_START_2009", event = EventType.EVENT_QUEST_START, source = "7902525", condition = "", action = "action_EVENT_QUEST_START_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "QUEST_FINISH_2010", event = EventType.EVENT_QUEST_FINISH, source = "7902525", condition = "", action = "action_EVENT_QUEST_FINISH_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "QUEST_FINISH_2011", event = EventType.EVENT_QUEST_FINISH, source = "7902534", condition = "", action = "action_EVENT_QUEST_FINISH_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "QUEST_FINISH_2012", event = EventType.EVENT_QUEST_FINISH, source = "7902535", condition = "", action = "action_EVENT_QUEST_FINISH_2012", trigger_count = 0 },
	{ config_id = 1002019, name = "GROUP_LOAD_2019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true }
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
		gadgets = { 2001 },
		regions = { },
		triggers = { "QUEST_FINISH_2002", "QUEST_START_2005", "QUEST_START_2006", "QUEST_START_2007", "QUEST_FINISH_2008", "QUEST_START_2009", "QUEST_FINISH_2010", "QUEST_FINISH_2011", "QUEST_FINISH_2012", "GROUP_LOAD_2019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_2002(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_2005(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_2006(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 199004002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_2007(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 0, 199004002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2008(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_2009(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2010(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2011(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2012(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 0, 199004002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2019(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 0 then
		ScriptLib.SetGadgetStateByConfigId(context,2001, GadgetState.Default)
	else
		ScriptLib.SetGadgetStateByConfigId(context,2001, GadgetState.GearStop)
	end
	
	return 0
end