-- 基础信息
local base_info = {
	group_id = 133313166
}

-- DEFS_MISCS
local JamshidRocks = 
{
    166001,
    166002,
    166003,
    166007,
    166008
}

local CorrectAnswer = 
{
    1,4,3,1,1
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
	[166001] = { config_id = 166001, gadget_id = 70290635, pos = { x = -471.973, y = -76.862, z = 5507.245 }, rot = { x = 1.270, y = 70.047, z = 349.945 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	[166002] = { config_id = 166002, gadget_id = 70290636, pos = { x = -471.072, y = -76.492, z = 5510.246 }, rot = { x = 0.853, y = 123.317, z = 347.968 }, level = 32, persistent = true, area_id = 32 },
	[166003] = { config_id = 166003, gadget_id = 70290637, pos = { x = -469.545, y = -77.658, z = 5504.671 }, rot = { x = 6.785, y = 8.395, z = 346.011 }, level = 32, persistent = true, area_id = 32 },
	[166004] = { config_id = 166004, gadget_id = 70211111, pos = { x = -458.309, y = -78.797, z = 5508.731 }, rot = { x = 0.000, y = 289.617, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[166007] = { config_id = 166007, gadget_id = 70290636, pos = { x = -465.416, y = -75.288, z = 5516.041 }, rot = { x = 18.113, y = 163.662, z = 356.446 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[166008] = { config_id = 166008, gadget_id = 70290635, pos = { x = -463.356, y = -75.460, z = 5516.633 }, rot = { x = 7.636, y = 194.331, z = 6.683 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1166005, name = "VARIABLE_CHANGE_166005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_166005", action = "action_EVENT_VARIABLE_CHANGE_166005" },
	{ config_id = 1166006, name = "GROUP_LOAD_166006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_166006", action = "action_EVENT_GROUP_LOAD_166006", trigger_count = 0 }
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
		gadgets = { 166001, 166002, 166003, 166007, 166008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_166005", "GROUP_LOAD_166006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_166005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_166005(context, evt)
	-- 创建id为166004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 166004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 166001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 166002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 166003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_166006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_166006(context, evt)
	-- 创建id为166004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 166004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 166001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 166002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 166003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"