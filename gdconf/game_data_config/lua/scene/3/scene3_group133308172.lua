-- 基础信息
local base_info = {
	group_id = 133308172
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
	{ config_id = 172001, gadget_id = 70330416, pos = { x = -2240.346, y = 64.036, z = 4234.351 }, rot = { x = 0.000, y = 45.558, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 172002, gadget_id = 70330333, pos = { x = -2239.774, y = 63.934, z = 4240.053 }, rot = { x = 0.000, y = 47.539, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 172005, gadget_id = 70360286, pos = { x = -2239.724, y = 65.828, z = 4240.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1172003, name = "QUEST_FINISH_172003", event = EventType.EVENT_QUEST_FINISH, source = "7305219", condition = "", action = "action_EVENT_QUEST_FINISH_172003", trigger_count = 0 },
	{ config_id = 1172004, name = "GADGET_STATE_CHANGE_172004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172004", action = "action_EVENT_GADGET_STATE_CHANGE_172004", trigger_count = 0 },
	{ config_id = 1172006, name = "SELECT_OPTION_172006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_172006", action = "action_EVENT_SELECT_OPTION_172006", trigger_count = 0 },
	{ config_id = 1172007, name = "GADGET_STATE_CHANGE_172007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172007", action = "action_EVENT_GADGET_STATE_CHANGE_172007", trigger_count = 0 },
	{ config_id = 1172008, name = "GROUP_LOAD_172008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_172008", action = "action_EVENT_GROUP_LOAD_172008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "opened", value = 0, no_refresh = true }
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
		gadgets = { 172001, 172002, 172005 },
		regions = { },
		triggers = { "QUEST_FINISH_172003", "GADGET_STATE_CHANGE_172004", "SELECT_OPTION_172006", "GADGET_STATE_CHANGE_172007", "GROUP_LOAD_172008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_172003(context, evt)
	-- 将configid为 172002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_172004(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308172, 172002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_172004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308172, 172005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_172006(context, evt)
	-- 判断是gadgetid 172005 option_id 1
	if 172005 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_172006(context, evt)
	-- 将configid为 172002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 172001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308172 ；指定config：172005；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308172, 172005, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_172007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308172, 172001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_172007(context, evt)
	-- 将本组内变量名为 "opened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_172008(context, evt)
	-- 判断变量"opened"为1
	if ScriptLib.GetGroupVariableValue(context, "opened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_172008(context, evt)
	-- 将configid为 172001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 172002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 172005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end