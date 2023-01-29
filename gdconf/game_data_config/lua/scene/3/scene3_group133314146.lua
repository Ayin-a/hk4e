-- 基础信息
local base_info = {
	group_id = 133314146
}

-- DEFS_MISCS
local JamshidRocks = 
{
    146001,
    146002,
    146003,
    146008,
    146009
}

local CorrectAnswer = 
{
    3,4,4,4,1
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
	[146001] = { config_id = 146001, gadget_id = 70290635, pos = { x = -879.236, y = -196.297, z = 5033.913 }, rot = { x = 10.865, y = 339.327, z = 357.256 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[146002] = { config_id = 146002, gadget_id = 70290636, pos = { x = -884.809, y = -196.288, z = 5032.644 }, rot = { x = 16.084, y = 0.573, z = 0.475 }, level = 32, persistent = true, area_id = 32 },
	[146003] = { config_id = 146003, gadget_id = 70290637, pos = { x = -900.613, y = -193.485, z = 5020.174 }, rot = { x = 8.660, y = 321.404, z = 346.614 }, level = 32, persistent = true, area_id = 32 },
	[146004] = { config_id = 146004, gadget_id = 70211111, pos = { x = -890.815, y = -196.124, z = 5024.556 }, rot = { x = 21.755, y = 353.954, z = 358.318 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[146007] = { config_id = 146007, gadget_id = 70290685, pos = { x = -908.876, y = -197.756, z = 5123.680 }, rot = { x = 0.310, y = 174.189, z = 350.556 }, level = 32, area_id = 32 },
	[146008] = { config_id = 146008, gadget_id = 70290637, pos = { x = -903.269, y = -195.011, z = 5023.735 }, rot = { x = 9.864, y = 313.435, z = 341.199 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[146009] = { config_id = 146009, gadget_id = 70290635, pos = { x = -905.267, y = -195.845, z = 5026.837 }, rot = { x = 19.624, y = 321.000, z = 347.882 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	[146010] = { config_id = 146010, gadget_id = 70290690, pos = { x = -906.783, y = -197.339, z = 5122.945 }, rot = { x = 7.674, y = 244.803, z = 8.548 }, level = 32, area_id = 32 },
	[146011] = { config_id = 146011, gadget_id = 70290691, pos = { x = -842.597, y = -187.700, z = 5098.144 }, rot = { x = 16.664, y = 248.014, z = 10.226 }, level = 32, area_id = 32 },
	[146012] = { config_id = 146012, gadget_id = 70290691, pos = { x = -846.025, y = -190.548, z = 5095.613 }, rot = { x = 355.191, y = 239.011, z = 343.201 }, level = 32, area_id = 32 },
	[146013] = { config_id = 146013, gadget_id = 70290683, pos = { x = -847.644, y = -192.604, z = 5091.913 }, rot = { x = 356.467, y = 269.068, z = 1.055 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146005, name = "VARIABLE_CHANGE_146005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_146005", action = "action_EVENT_VARIABLE_CHANGE_146005" },
	{ config_id = 1146006, name = "GROUP_LOAD_146006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_146006", action = "action_EVENT_GROUP_LOAD_146006", trigger_count = 0 }
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
		gadgets = { 146001, 146002, 146003, 146007, 146008, 146009, 146010, 146011, 146012, 146013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_146005", "GROUP_LOAD_146006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_146005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146005(context, evt)
	-- 创建id为146004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 146001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_146006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_146006(context, evt)
	-- 创建id为146004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 146001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 146003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"