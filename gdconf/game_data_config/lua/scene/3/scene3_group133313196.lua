-- 基础信息
local base_info = {
	group_id = 133313196
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
	{ config_id = 196001, gadget_id = 70211032, pos = { x = -811.288, y = -262.627, z = 5771.604 }, rot = { x = 0.000, y = 174.357, z = 0.000 }, level = 26, drop_tag = "战斗超级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 锁定1
	{ config_id = 196002, gadget_id = 70330404, pos = { x = -825.438, y = -263.087, z = 5767.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	-- 锁定2
	{ config_id = 196003, gadget_id = 70330404, pos = { x = -796.563, y = -263.087, z = 5770.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 196004, gadget_id = 70330404, pos = { x = -837.414, y = -255.781, z = 5781.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 196006, gadget_id = 70330404, pos = { x = -787.643, y = -255.781, z = 5787.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196007, name = "GADGET_STATE_CHANGE_196007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196007", action = "action_EVENT_GADGET_STATE_CHANGE_196007" },
	{ config_id = 1196008, name = "GROUP_LOAD_196008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196008", action = "action_EVENT_GROUP_LOAD_196008", trigger_count = 0 },
	-- 解锁1
	{ config_id = 1196009, name = "VARIABLE_CHANGE_196009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_196009", action = "action_EVENT_VARIABLE_CHANGE_196009", trigger_count = 0 },
	-- 解锁2
	{ config_id = 1196010, name = "VARIABLE_CHANGE_196010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_196010", action = "action_EVENT_VARIABLE_CHANGE_196010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "unlock_1", value = 0, no_refresh = true },
	{ config_id = 3, name = "unlock_2", value = 0, no_refresh = true }
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
		gadgets = { 196001, 196002, 196003, 196004, 196006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_196007", "GROUP_LOAD_196008", "VARIABLE_CHANGE_196009", "VARIABLE_CHANGE_196010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_196007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196007(context, evt)
	-- 将configid为 196001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196008(context, evt)
	-- 将configid为 196001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_196009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_1"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_1") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_196009(context, evt)
	-- 将configid为 196002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_196010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_2"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_2") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313196, 196003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_196010(context, evt)
	-- 将configid为 196003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end