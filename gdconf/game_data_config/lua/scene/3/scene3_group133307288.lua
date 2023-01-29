-- 基础信息
local base_info = {
	group_id = 133307288
}

-- DEFS_MISCS
local JamshidRocks = 
{
    288001,
    288002,
    288003,
    288007,
    288008
}

local CorrectAnswer = 
{
    2,2,2,1,4
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
	[288001] = { config_id = 288001, gadget_id = 70290635, pos = { x = -1421.970, y = -49.979, z = 5495.623 }, rot = { x = 0.000, y = 265.441, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[288002] = { config_id = 288002, gadget_id = 70290636, pos = { x = -1418.271, y = -47.929, z = 5492.519 }, rot = { x = 0.000, y = 273.123, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[288003] = { config_id = 288003, gadget_id = 70290637, pos = { x = -1421.382, y = -49.639, z = 5489.132 }, rot = { x = 0.000, y = 263.154, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	[288004] = { config_id = 288004, gadget_id = 70211101, pos = { x = -1429.045, y = -51.101, z = 5496.024 }, rot = { x = 0.000, y = 313.014, z = 3.160 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[288007] = { config_id = 288007, gadget_id = 70290635, pos = { x = -1435.900, y = -49.181, z = 5502.704 }, rot = { x = 0.000, y = 123.939, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[288008] = { config_id = 288008, gadget_id = 70290637, pos = { x = -1434.192, y = -49.083, z = 5504.829 }, rot = { x = 1.129, y = 154.998, z = 357.349 }, level = 32, persistent = true, area_id = 32 },
	[288009] = { config_id = 288009, gadget_id = 70290683, pos = { x = -1409.116, y = -46.809, z = 5519.249 }, rot = { x = 4.234, y = 256.115, z = 6.218 }, level = 32, area_id = 32 },
	[288010] = { config_id = 288010, gadget_id = 70290691, pos = { x = -1408.689, y = -47.176, z = 5517.625 }, rot = { x = 4.265, y = 299.616, z = 355.343 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288005, name = "VARIABLE_CHANGE_288005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_288005", action = "action_EVENT_VARIABLE_CHANGE_288005" },
	{ config_id = 1288006, name = "GROUP_LOAD_288006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_288006", action = "action_EVENT_GROUP_LOAD_288006", trigger_count = 0 }
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
		gadgets = { 288001, 288002, 288003, 288007, 288008, 288009, 288010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_288005", "GROUP_LOAD_288006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_288005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_288005(context, evt)
	-- 创建id为288004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 288004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 288001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 288002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 288003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_288006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_288006(context, evt)
	-- 创建id为288004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 288004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 288001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 288002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 288003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"