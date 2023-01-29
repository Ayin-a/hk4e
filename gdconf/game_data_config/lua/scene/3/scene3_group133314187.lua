-- 基础信息
local base_info = {
	group_id = 133314187
}

-- DEFS_MISCS
local JamshidRocks = 
{
    187001,
    187002,
    187003
}

local CorrectAnswer = 
{
    4,1,3
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
	-- 3-4 v
	[187001] = { config_id = 187001, gadget_id = 70290637, pos = { x = -198.316, y = 219.546, z = 4459.029 }, rot = { x = 3.690, y = 295.325, z = 351.241 }, level = 32, persistent = true, area_id = 32 },
	-- 1-1 z
	[187002] = { config_id = 187002, gadget_id = 70290635, pos = { x = -196.857, y = 219.045, z = 4461.614 }, rot = { x = 2.523, y = 299.801, z = 355.979 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 1-3 t
	[187003] = { config_id = 187003, gadget_id = 70290635, pos = { x = -194.974, y = 218.692, z = 4464.231 }, rot = { x = 3.253, y = 303.734, z = 354.857 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[187004] = { config_id = 187004, gadget_id = 70211101, pos = { x = -201.545, y = 217.269, z = 4464.741 }, rot = { x = 334.183, y = 125.055, z = 6.588 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[187007] = { config_id = 187007, gadget_id = 70290691, pos = { x = -212.218, y = 213.434, z = 4461.671 }, rot = { x = 277.090, y = 326.977, z = 164.533 }, level = 32, area_id = 32 },
	[187008] = { config_id = 187008, gadget_id = 70290683, pos = { x = -206.669, y = 212.801, z = 4467.808 }, rot = { x = 283.702, y = 269.906, z = 213.507 }, level = 32, area_id = 32 },
	[187009] = { config_id = 187009, gadget_id = 70290685, pos = { x = -200.678, y = 212.540, z = 4475.547 }, rot = { x = 292.876, y = 216.881, z = 252.504 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1187005, name = "VARIABLE_CHANGE_187005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_187005", action = "action_EVENT_VARIABLE_CHANGE_187005" },
	{ config_id = 1187006, name = "GROUP_LOAD_187006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_187006", action = "action_EVENT_GROUP_LOAD_187006", trigger_count = 0 }
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
		gadgets = { 187001, 187002, 187003, 187007, 187008, 187009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_187005", "GROUP_LOAD_187006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187005(context, evt)
	-- 创建id为187004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 187001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 187003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_187006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_187006(context, evt)
	-- 创建id为187004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 187001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 187003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"