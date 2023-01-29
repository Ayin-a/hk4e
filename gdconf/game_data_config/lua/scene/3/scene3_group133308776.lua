-- 基础信息
local base_info = {
	group_id = 133308776
}

-- DEFS_MISCS
local JamshidRocks = 
{
    776001,
    776002,
    776003,
    776007
}

local CorrectAnswer = 
{
    2,2,2,3
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
	[776001] = { config_id = 776001, gadget_id = 70290635, pos = { x = -902.283, y = 53.486, z = 4505.391 }, rot = { x = 0.000, y = 144.317, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[776002] = { config_id = 776002, gadget_id = 70290636, pos = { x = -900.997, y = 53.040, z = 4506.733 }, rot = { x = 0.000, y = 122.092, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[776003] = { config_id = 776003, gadget_id = 70290637, pos = { x = -901.588, y = 52.220, z = 4514.277 }, rot = { x = 0.000, y = 34.480, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[776004] = { config_id = 776004, gadget_id = 70211101, pos = { x = -899.907, y = 52.497, z = 4509.023 }, rot = { x = 0.000, y = 147.981, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[776007] = { config_id = 776007, gadget_id = 70290635, pos = { x = -900.205, y = 52.058, z = 4512.921 }, rot = { x = 0.000, y = 50.500, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[776008] = { config_id = 776008, gadget_id = 70290684, pos = { x = -867.851, y = 58.880, z = 4462.434 }, rot = { x = 12.682, y = 337.991, z = 340.617 }, level = 32, area_id = 32 },
	[776009] = { config_id = 776009, gadget_id = 70290688, pos = { x = -866.350, y = 58.149, z = 4463.460 }, rot = { x = 14.443, y = 346.583, z = 342.050 }, level = 32, area_id = 32 },
	[776010] = { config_id = 776010, gadget_id = 70290689, pos = { x = -875.018, y = 58.779, z = 4573.323 }, rot = { x = 12.933, y = 219.718, z = 350.516 }, level = 32, area_id = 32 },
	[776011] = { config_id = 776011, gadget_id = 70290685, pos = { x = -873.795, y = 59.052, z = 4572.611 }, rot = { x = 15.171, y = 232.800, z = 354.766 }, level = 32, area_id = 32 },
	[776012] = { config_id = 776012, gadget_id = 70290601, pos = { x = -867.851, y = 58.880, z = 4462.434 }, rot = { x = 12.682, y = 337.991, z = 340.617 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1776005, name = "VARIABLE_CHANGE_776005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_776005", action = "action_EVENT_VARIABLE_CHANGE_776005" },
	{ config_id = 1776006, name = "GROUP_LOAD_776006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_776006", action = "action_EVENT_GROUP_LOAD_776006", trigger_count = 0 }
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
		gadgets = { 776001, 776002, 776003, 776007, 776008, 776009, 776010, 776011, 776012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_776005", "GROUP_LOAD_776006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_776005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_776005(context, evt)
	-- 创建id为776004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 776004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 776001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 776002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 776003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 776007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_776006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_776006(context, evt)
	-- 创建id为776004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 776004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 776001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 776002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 776003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 776007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 776007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"