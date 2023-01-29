-- 基础信息
local base_info = {
	group_id = 133314297
}

-- DEFS_MISCS
local JamshidRocks = 
{
    297001,
    297002
}

local CorrectAnswer = 
{
    2,3
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
	[297001] = { config_id = 297001, gadget_id = 70290635, pos = { x = -776.656, y = -87.032, z = 4477.293 }, rot = { x = 358.428, y = 272.065, z = 18.119 }, level = 32, persistent = true, area_id = 32 },
	[297002] = { config_id = 297002, gadget_id = 70290636, pos = { x = -775.029, y = -87.927, z = 4474.521 }, rot = { x = 5.649, y = 249.999, z = 19.867 }, level = 32, persistent = true, area_id = 32 },
	[297003] = { config_id = 297003, gadget_id = 70290684, pos = { x = -824.201, y = -82.510, z = 4469.999 }, rot = { x = 0.000, y = 98.758, z = 0.000 }, level = 32, area_id = 32 },
	[297004] = { config_id = 297004, gadget_id = 70290689, pos = { x = -824.803, y = -83.312, z = 4472.359 }, rot = { x = 0.000, y = 105.274, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297005, name = "VARIABLE_CHANGE_297005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_297005", action = "action_EVENT_VARIABLE_CHANGE_297005" },
	{ config_id = 1297006, name = "GROUP_LOAD_297006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_297006", action = "action_EVENT_GROUP_LOAD_297006", trigger_count = 0 }
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
		gadgets = { 297001, 297002, 297003, 297004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_297005", "GROUP_LOAD_297006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_297005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_297005(context, evt)
	-- 将configid为 297001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 297002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133314298中， configid为298001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314298, 298001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_297006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_297006(context, evt)
	-- 将configid为 297001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 297002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133314298中， configid为298001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314298, 298001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"