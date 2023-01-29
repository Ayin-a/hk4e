-- 基础信息
local base_info = {
	group_id = 133314112
}

-- DEFS_MISCS
local JamshidRocks = 
{
    112001,
    112002,
    112003
}

local CorrectAnswer = 
{
    3,1,4
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
	[112001] = { config_id = 112001, gadget_id = 70290635, pos = { x = -926.209, y = -48.828, z = 4985.813 }, rot = { x = 0.000, y = 211.591, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[112002] = { config_id = 112002, gadget_id = 70290636, pos = { x = -929.861, y = -50.307, z = 4983.903 }, rot = { x = 10.083, y = 215.316, z = 0.798 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[112003] = { config_id = 112003, gadget_id = 70290637, pos = { x = -933.084, y = -48.763, z = 4986.563 }, rot = { x = 0.000, y = 178.318, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[112005] = { config_id = 112005, gadget_id = 70211101, pos = { x = -938.496, y = -52.376, z = 4976.167 }, rot = { x = 0.000, y = 24.401, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[112007] = { config_id = 112007, gadget_id = 70290685, pos = { x = -898.000, y = -30.179, z = 5009.819 }, rot = { x = 18.787, y = 271.246, z = 348.838 }, level = 32, area_id = 32 },
	[112009] = { config_id = 112009, gadget_id = 70290691, pos = { x = -898.713, y = -32.056, z = 5013.947 }, rot = { x = 4.977, y = 298.419, z = 354.687 }, level = 32, area_id = 32 },
	[112010] = { config_id = 112010, gadget_id = 70290687, pos = { x = -900.314, y = -32.297, z = 5011.365 }, rot = { x = 7.461, y = 296.881, z = 353.058 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1112004, name = "VARIABLE_CHANGE_112004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_112004", action = "action_EVENT_VARIABLE_CHANGE_112004" },
	{ config_id = 1112006, name = "GROUP_LOAD_112006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_112006", action = "action_EVENT_GROUP_LOAD_112006", trigger_count = 0 }
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
		gadgets = { 112001, 112002, 112003, 112007, 112009, 112010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_112004", "GROUP_LOAD_112006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_112004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_112004(context, evt)
	-- 创建id为112005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 112005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 112001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_112006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_112006(context, evt)
	-- 创建id为112005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 112005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 112001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"