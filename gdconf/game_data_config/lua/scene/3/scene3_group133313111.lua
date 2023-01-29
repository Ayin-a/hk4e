-- 基础信息
local base_info = {
	group_id = 133313111
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
	{ config_id = 111001, gadget_id = 70330416, pos = { x = -332.299, y = -32.263, z = 5547.868 }, rot = { x = 0.000, y = 344.572, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 111004, gadget_id = 70211111, pos = { x = -337.562, y = -32.678, z = 5567.885 }, rot = { x = 0.000, y = 345.589, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 1
	{ config_id = 111006, gadget_id = 70290627, pos = { x = -312.421, y = -16.267, z = 5573.859 }, rot = { x = 0.000, y = 343.214, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 1
	{ config_id = 111007, gadget_id = 70290626, pos = { x = -311.405, y = -20.101, z = 5570.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2
	{ config_id = 111008, gadget_id = 70290627, pos = { x = -363.997, y = -18.571, z = 5558.980 }, rot = { x = 0.000, y = 340.316, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2
	{ config_id = 111009, gadget_id = 70290626, pos = { x = -363.032, y = -22.356, z = 5556.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111002, name = "VARIABLE_CHANGE_111002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_111002", action = "action_EVENT_VARIABLE_CHANGE_111002", trigger_count = 0 },
	{ config_id = 1111003, name = "GROUP_LOAD_111003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_111003", action = "action_EVENT_GROUP_LOAD_111003", trigger_count = 0 },
	-- 流沙1
	{ config_id = 1111005, name = "VARIABLE_CHANGE_111005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_111005", action = "action_EVENT_VARIABLE_CHANGE_111005" },
	-- 流沙2
	{ config_id = 1111010, name = "VARIABLE_CHANGE_111010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_111010", action = "action_EVENT_VARIABLE_CHANGE_111010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fire_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "fire_2", value = 0, no_refresh = true }
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
		gadgets = { 111001, 111006, 111007, 111008, 111009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_111002", "GROUP_LOAD_111003", "VARIABLE_CHANGE_111005", "VARIABLE_CHANGE_111010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_111002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fire_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fire_1") ~= 1 then
			return false
	end
	
	-- 判断变量"fire_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fire_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_111002(context, evt)
	-- 将configid为 111001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为111004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 111004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_111003(context, evt)
	-- 判断变量"fire_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fire_1") ~= 1 then
			return false
	end
	
	-- 判断变量"fire_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fire_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_111003(context, evt)
	-- 将configid为 111001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为111004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 111004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_111005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fire_1"为1
	if ScriptLib.GetGroupVariableValue(context, "fire_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_111005(context, evt)
	-- 将configid为 111006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 111007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_111010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fire_2"为1
	if ScriptLib.GetGroupVariableValue(context, "fire_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_111010(context, evt)
	-- 将configid为 111008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 111009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end