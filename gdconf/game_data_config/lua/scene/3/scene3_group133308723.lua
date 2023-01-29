-- 基础信息
local base_info = {
	group_id = 133308723
}

-- DEFS_MISCS
local JamshidRocks = 
{
    723001,
    723002,
    723003
}

local CorrectAnswer = 
{
    1,3,2
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
	[723001] = { config_id = 723001, gadget_id = 70290635, pos = { x = -1052.308, y = 126.243, z = 5021.818 }, rot = { x = 0.000, y = 358.763, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[723002] = { config_id = 723002, gadget_id = 70290636, pos = { x = -1048.741, y = 126.356, z = 5024.099 }, rot = { x = 0.000, y = 10.791, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[723003] = { config_id = 723003, gadget_id = 70290637, pos = { x = -1046.305, y = 128.696, z = 5021.928 }, rot = { x = 0.000, y = 351.726, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[723004] = { config_id = 723004, gadget_id = 70211101, pos = { x = -1044.283, y = 126.694, z = 5028.215 }, rot = { x = 348.465, y = 185.497, z = 10.244 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1723005, name = "VARIABLE_CHANGE_723005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_723005", action = "action_EVENT_VARIABLE_CHANGE_723005" },
	{ config_id = 1723006, name = "GROUP_LOAD_723006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_723006", action = "action_EVENT_GROUP_LOAD_723006", trigger_count = 0 }
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
		gadgets = { 723001, 723002, 723003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_723005", "GROUP_LOAD_723006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_723005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_723005(context, evt)
	-- 创建id为723004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 723004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 723001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 723002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 723003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_723006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_723006(context, evt)
	-- 创建id为723004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 723004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 723001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 723002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 723003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"