-- 基础信息
local base_info = {
	group_id = 133314248
}

-- DEFS_MISCS
local JamshidRocks = 
{
    248001,
    248002,
    248003
}

local CorrectAnswer = 
{
    1,3,4
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
	-- Z
	[248001] = { config_id = 248001, gadget_id = 70290635, pos = { x = -93.820, y = 36.046, z = 4905.262 }, rot = { x = 0.000, y = 258.475, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- S
	[248002] = { config_id = 248002, gadget_id = 70290636, pos = { x = -92.897, y = 35.534, z = 4900.958 }, rot = { x = 0.000, y = 276.897, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- V
	[248003] = { config_id = 248003, gadget_id = 70290637, pos = { x = -94.759, y = 35.728, z = 4896.180 }, rot = { x = 0.000, y = 294.831, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[248004] = { config_id = 248004, gadget_id = 70211101, pos = { x = -98.718, y = 35.685, z = 4901.209 }, rot = { x = 0.000, y = 94.514, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- Z
	[248007] = { config_id = 248007, gadget_id = 70290683, pos = { x = -129.159, y = 56.023, z = 4907.431 }, rot = { x = 0.000, y = 127.212, z = 0.000 }, level = 32, area_id = 32 },
	-- S
	[248008] = { config_id = 248008, gadget_id = 70290689, pos = { x = -126.338, y = 54.668, z = 4909.434 }, rot = { x = 0.000, y = 172.034, z = 0.000 }, level = 32, area_id = 32 },
	-- V
	[248009] = { config_id = 248009, gadget_id = 70290682, pos = { x = -122.880, y = 53.012, z = 4910.093 }, rot = { x = 0.000, y = 190.468, z = 0.000 }, level = 32, area_id = 32 },
	[248010] = { config_id = 248010, gadget_id = 70220103, pos = { x = -118.438, y = 54.745, z = 4900.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[248011] = { config_id = 248011, gadget_id = 70220103, pos = { x = -96.230, y = 37.218, z = 4934.167 }, rot = { x = 0.000, y = 228.713, z = 0.000 }, level = 32, area_id = 32 },
	[248012] = { config_id = 248012, gadget_id = 70220103, pos = { x = -110.441, y = 7.179, z = 4952.498 }, rot = { x = 0.000, y = 355.668, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1248005, name = "VARIABLE_CHANGE_248005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_248005", action = "action_EVENT_VARIABLE_CHANGE_248005" },
	{ config_id = 1248006, name = "GROUP_LOAD_248006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_248006", action = "action_EVENT_GROUP_LOAD_248006", trigger_count = 0 }
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
		gadgets = { 248001, 248002, 248003, 248007, 248008, 248009, 248010, 248011, 248012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_248005", "GROUP_LOAD_248006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_248005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_248005(context, evt)
	-- 创建id为248004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 248004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 248001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 248002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 248003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_248006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_248006(context, evt)
	-- 创建id为248004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 248004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 248001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 248002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 248003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"