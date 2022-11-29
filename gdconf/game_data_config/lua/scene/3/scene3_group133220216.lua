-- 基础信息
local base_info = {
	group_id = 133220216
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
	{ config_id = 216005, gadget_id = 70360079, pos = { x = -2283.310, y = 206.171, z = -4293.022 }, rot = { x = 0.000, y = 154.534, z = 0.000 }, level = 32, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 0
	{ config_id = 1216001, name = "GROUP_LOAD_216001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_216001", action = "action_EVENT_GROUP_LOAD_216001", trigger_count = 0 },
	-- 1
	{ config_id = 1216002, name = "GROUP_LOAD_216002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_216002", action = "action_EVENT_GROUP_LOAD_216002", trigger_count = 0 },
	-- 2
	{ config_id = 1216003, name = "GROUP_LOAD_216003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_216003", action = "action_EVENT_GROUP_LOAD_216003", trigger_count = 0 },
	{ config_id = 1216006, name = "VARIABLE_CHANGE_216006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_216006", action = "action_EVENT_VARIABLE_CHANGE_216006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 216005 },
		regions = { },
		triggers = { "GROUP_LOAD_216001", "GROUP_LOAD_216002", "GROUP_LOAD_216003", "VARIABLE_CHANGE_216006" },
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_216001(context, evt)
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216001(context, evt)
	-- 将configid为 216005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_216002(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216002(context, evt)
	-- 将configid为 216005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_216003(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216003(context, evt)
	-- 将configid为 216005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_216006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_216006(context, evt)
	-- 将configid为 216005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end