-- 基础信息
local base_info = {
	group_id = 133314300
}

-- DEFS_MISCS
local JamshidRocks = 
{
    300001,
    300003
}

local CorrectAnswer = 
{
    3,2
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
	[300001] = { config_id = 300001, gadget_id = 70290635, pos = { x = -775.666, y = -92.351, z = 4429.032 }, rot = { x = 0.000, y = 40.225, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[300002] = { config_id = 300002, gadget_id = 70290685, pos = { x = -733.465, y = -87.206, z = 4438.621 }, rot = { x = 20.365, y = 277.809, z = 339.139 }, level = 32, area_id = 32 },
	[300003] = { config_id = 300003, gadget_id = 70290637, pos = { x = -777.619, y = -92.349, z = 4429.849 }, rot = { x = 24.634, y = 41.141, z = 354.941 }, level = 32, persistent = true, area_id = 32 },
	[300004] = { config_id = 300004, gadget_id = 70290689, pos = { x = -735.514, y = -87.017, z = 4436.544 }, rot = { x = 20.930, y = 290.145, z = 348.087 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300005, name = "VARIABLE_CHANGE_300005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_300005", action = "action_EVENT_VARIABLE_CHANGE_300005" },
	{ config_id = 1300006, name = "GROUP_LOAD_300006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_300006", action = "action_EVENT_GROUP_LOAD_300006", trigger_count = 0 }
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
		gadgets = { 300001, 300002, 300003, 300004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_300005", "GROUP_LOAD_300006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_300005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_300005(context, evt)
	-- 将configid为 300001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 300003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133314298中， configid为298003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314298, 298003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_300006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_300006(context, evt)
	-- 将configid为 300001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 300003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133314298中， configid为298003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314298, 298003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"