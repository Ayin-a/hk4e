-- 基础信息
local base_info = {
	group_id = 133307255
}

-- DEFS_MISCS
local JamshidRocks = 
{
    255001,
    255002,
    255003
}

local CorrectAnswer = 
{
    2,1,3
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
	-- 1-2-z
	[255001] = { config_id = 255001, gadget_id = 70290635, pos = { x = -913.814, y = 86.675, z = 5597.662 }, rot = { x = 32.771, y = 182.437, z = 340.286 }, level = 32, persistent = true, area_id = 32 },
	-- 2-1-p
	[255002] = { config_id = 255002, gadget_id = 70290636, pos = { x = -909.283, y = 90.164, z = 5597.419 }, rot = { x = 8.606, y = 196.700, z = 343.069 }, level = 32, persistent = true, area_id = 32 },
	-- 3-3-r
	[255003] = { config_id = 255003, gadget_id = 70290637, pos = { x = -903.160, y = 90.035, z = 5594.133 }, rot = { x = 14.130, y = 206.401, z = 328.451 }, level = 32, persistent = true, area_id = 32 },
	[255004] = { config_id = 255004, gadget_id = 70211101, pos = { x = -908.808, y = 82.816, z = 5583.976 }, rot = { x = 4.180, y = 349.356, z = 16.880 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[255007] = { config_id = 255007, gadget_id = 70290683, pos = { x = -918.540, y = 80.987, z = 5581.882 }, rot = { x = 7.176, y = 15.036, z = 357.326 }, level = 32, area_id = 32 },
	[255008] = { config_id = 255008, gadget_id = 70290687, pos = { x = -915.772, y = 81.307, z = 5581.542 }, rot = { x = 0.000, y = 12.051, z = 0.000 }, level = 32, area_id = 32 },
	[255009] = { config_id = 255009, gadget_id = 70290686, pos = { x = -912.677, y = 82.247, z = 5581.783 }, rot = { x = 0.000, y = 356.680, z = 0.000 }, level = 32, area_id = 32 },
	[255010] = { config_id = 255010, gadget_id = 70330430, pos = { x = -911.851, y = 82.638, z = 5581.006 }, rot = { x = 35.790, y = 7.276, z = 14.832 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1255005, name = "VARIABLE_CHANGE_255005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_255005", action = "action_EVENT_VARIABLE_CHANGE_255005" },
	{ config_id = 1255006, name = "GROUP_LOAD_255006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255006", action = "action_EVENT_GROUP_LOAD_255006", trigger_count = 0 }
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
		gadgets = { 255001, 255002, 255003, 255007, 255008, 255009, 255010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_255005", "GROUP_LOAD_255006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_255005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_255005(context, evt)
	-- 创建id为255004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 255004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 255001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 255002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 255003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255006(context, evt)
	-- 创建id为255004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 255004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 255001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 255002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 255003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"