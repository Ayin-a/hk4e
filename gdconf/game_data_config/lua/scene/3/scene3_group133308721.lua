-- 基础信息
local base_info = {
	group_id = 133308721
}

-- DEFS_MISCS
local JamshidRocks = 
{
    721001,
    721003
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
	-- 1-2-f
	[721001] = { config_id = 721001, gadget_id = 70290635, pos = { x = -1231.377, y = 77.384, z = 5074.732 }, rot = { x = 0.000, y = 25.275, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[721002] = { config_id = 721002, gadget_id = 70290684, pos = { x = -1238.764, y = 86.006, z = 5064.377 }, rot = { x = 349.092, y = 17.122, z = 27.736 }, level = 32, area_id = 32 },
	-- 3-3-r
	[721003] = { config_id = 721003, gadget_id = 70290637, pos = { x = -1237.768, y = 75.282, z = 5076.539 }, rot = { x = 0.000, y = 349.841, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[721004] = { config_id = 721004, gadget_id = 70211101, pos = { x = -1236.186, y = 75.351, z = 5079.332 }, rot = { x = 356.253, y = 192.313, z = 344.062 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[721007] = { config_id = 721007, gadget_id = 70290686, pos = { x = -1244.194, y = 83.436, z = 5067.405 }, rot = { x = 343.709, y = 7.896, z = 29.596 }, level = 32, area_id = 32 },
	[721008] = { config_id = 721008, gadget_id = 70330430, pos = { x = -1238.960, y = 85.611, z = 5063.955 }, rot = { x = 350.953, y = 356.802, z = 27.400 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1721005, name = "VARIABLE_CHANGE_721005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_721005", action = "action_EVENT_VARIABLE_CHANGE_721005" },
	{ config_id = 1721006, name = "GROUP_LOAD_721006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_721006", action = "action_EVENT_GROUP_LOAD_721006", trigger_count = 0 }
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
		gadgets = { 721001, 721002, 721003, 721007, 721008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_721005", "GROUP_LOAD_721006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_721005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_721005(context, evt)
	-- 创建id为721004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 721004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 721001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 721001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 721003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 721003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_721006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_721006(context, evt)
	-- 创建id为721004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 721004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 721001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 721001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 721003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 721003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"