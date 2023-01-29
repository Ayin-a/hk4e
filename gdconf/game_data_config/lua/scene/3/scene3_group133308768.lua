-- 基础信息
local base_info = {
	group_id = 133308768
}

-- DEFS_MISCS
local JamshidRocks = 
{
    768001,
    768003,
    768002
}

local CorrectAnswer = 
{
    4,1,4
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
	[768001] = { config_id = 768001, gadget_id = 70290635, pos = { x = -1486.169, y = 77.359, z = 4988.774 }, rot = { x = 0.000, y = 358.703, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[768002] = { config_id = 768002, gadget_id = 70290636, pos = { x = -1492.597, y = 78.051, z = 4993.889 }, rot = { x = 0.000, y = 87.098, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[768003] = { config_id = 768003, gadget_id = 70290637, pos = { x = -1491.272, y = 78.032, z = 4989.996 }, rot = { x = 0.000, y = 64.088, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[768004] = { config_id = 768004, gadget_id = 70211101, pos = { x = -1497.463, y = 79.274, z = 4992.865 }, rot = { x = 0.000, y = 58.486, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[768007] = { config_id = 768007, gadget_id = 70290686, pos = { x = -1516.411, y = 78.665, z = 5030.653 }, rot = { x = 0.000, y = 204.648, z = 0.000 }, level = 30, area_id = 32 },
	[768008] = { config_id = 768008, gadget_id = 70290688, pos = { x = -1511.587, y = 77.762, z = 5032.211 }, rot = { x = 0.000, y = 227.855, z = 0.000 }, level = 32, area_id = 32 },
	[768009] = { config_id = 768009, gadget_id = 70290690, pos = { x = -1511.674, y = 78.628, z = 5027.363 }, rot = { x = 0.000, y = 262.989, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1768005, name = "VARIABLE_CHANGE_768005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_768005", action = "action_EVENT_VARIABLE_CHANGE_768005" },
	{ config_id = 1768006, name = "GROUP_LOAD_768006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_768006", action = "action_EVENT_GROUP_LOAD_768006", trigger_count = 0 }
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
		gadgets = { 768001, 768002, 768003, 768007, 768008, 768009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_768005", "GROUP_LOAD_768006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_768005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_768005(context, evt)
	-- 创建id为768004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 768004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 768001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 768001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 768002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 768002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 768003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 768003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_768006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_768006(context, evt)
	-- 创建id为768004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 768004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 768001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 768001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 768002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 768002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 768003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 768003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"