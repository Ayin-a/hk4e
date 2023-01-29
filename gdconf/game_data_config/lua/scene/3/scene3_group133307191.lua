-- 基础信息
local base_info = {
	group_id = 133307191
}

-- DEFS_MISCS
local JamshidRocks = 
{
    191001,
    191002,
    191003
}

local CorrectAnswer = 
{
    1,3,1
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
	[191001] = { config_id = 191001, gadget_id = 70290635, pos = { x = -1489.687, y = -4.389, z = 5278.283 }, rot = { x = 10.110, y = 275.171, z = 358.530 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[191002] = { config_id = 191002, gadget_id = 70290636, pos = { x = -1489.393, y = -3.681, z = 5272.895 }, rot = { x = 0.000, y = 257.318, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[191003] = { config_id = 191003, gadget_id = 70290636, pos = { x = -1485.689, y = -1.755, z = 5266.764 }, rot = { x = 9.178, y = 236.253, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[191004] = { config_id = 191004, gadget_id = 70211101, pos = { x = -1495.957, y = -3.698, z = 5273.317 }, rot = { x = 8.624, y = 94.722, z = 3.944 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[191007] = { config_id = 191007, gadget_id = 70290683, pos = { x = -1478.750, y = 4.615, z = 5256.223 }, rot = { x = 15.049, y = 266.705, z = 349.958 }, level = 32, area_id = 32 },
	[191008] = { config_id = 191008, gadget_id = 70290689, pos = { x = -1477.137, y = 5.798, z = 5253.094 }, rot = { x = 7.660, y = 234.132, z = 343.377 }, level = 32, area_id = 32 },
	[191009] = { config_id = 191009, gadget_id = 70290687, pos = { x = -1473.790, y = 7.295, z = 5251.619 }, rot = { x = 0.818, y = 184.492, z = 344.132 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1191005, name = "VARIABLE_CHANGE_191005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_191005", action = "action_EVENT_VARIABLE_CHANGE_191005" },
	{ config_id = 1191006, name = "GROUP_LOAD_191006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_191006", action = "action_EVENT_GROUP_LOAD_191006", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 191001, 191002, 191003, 191007, 191008, 191009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_191005", "GROUP_LOAD_191006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_191005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_191005(context, evt)
	-- 创建id为191004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 191004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 191001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_191006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_191006(context, evt)
	-- 创建id为191004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 191004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 191001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"