-- 基础信息
local base_info = {
	group_id = 133314299
}

-- DEFS_MISCS
local JamshidRocks = 
{
    299002,
    299003
}

local CorrectAnswer = 
{
    3,3
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
	[299001] = { config_id = 299001, gadget_id = 70290689, pos = { x = -683.074, y = -70.908, z = 4454.761 }, rot = { x = 0.000, y = 204.478, z = 0.000 }, level = 32, area_id = 32 },
	[299002] = { config_id = 299002, gadget_id = 70290636, pos = { x = -749.243, y = -86.064, z = 4473.846 }, rot = { x = 353.004, y = 90.106, z = 358.491 }, level = 32, persistent = true, area_id = 32 },
	[299003] = { config_id = 299003, gadget_id = 70290637, pos = { x = -748.634, y = -85.102, z = 4475.299 }, rot = { x = 0.000, y = 102.414, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[299004] = { config_id = 299004, gadget_id = 70290686, pos = { x = -681.072, y = -70.623, z = 4454.834 }, rot = { x = 0.000, y = 219.716, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1299005, name = "VARIABLE_CHANGE_299005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_299005", action = "action_EVENT_VARIABLE_CHANGE_299005" },
	{ config_id = 1299006, name = "GROUP_LOAD_299006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_299006", action = "action_EVENT_GROUP_LOAD_299006", trigger_count = 0 }
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
		gadgets = { 299001, 299002, 299003, 299004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_299005", "GROUP_LOAD_299006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_299005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_299005(context, evt)
	-- 将configid为 299002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 299003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133314298中， configid为298002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314298, 298002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_299006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_299006(context, evt)
	-- 将configid为 299002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 299003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133314298中， configid为298002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314298, 298002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"