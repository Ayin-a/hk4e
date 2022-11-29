-- 基础信息
local base_info = {
	group_id = 133302645
}

-- Trigger变量
local defs = {
	group_id = 133302645,
	gadget_riddle_1 = 645001,
	gadget_riddle_2 = 645002,
	gadget_riddle_3 = 645003,
	gadget_riddle_4 = 645004,
	gadget_chest = 645005
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
	{ config_id = 645001, gadget_id = 70310011, pos = { x = -638.371, y = 200.000, z = 2855.594 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 645002, gadget_id = 70320005, pos = { x = -653.997, y = 200.044, z = 2860.975 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 645003, gadget_id = 70310011, pos = { x = -648.152, y = 200.000, z = 2876.853 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 645004, gadget_id = 70310011, pos = { x = -636.111, y = 200.035, z = 2870.079 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 645005, gadget_id = 70211102, pos = { x = -648.578, y = 200.207, z = 2862.402 }, rot = { x = 6.798, y = 186.486, z = 1.993 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1645009, name = "GADGET_STATE_CHANGE_645009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_645009", action = "action_EVENT_GADGET_STATE_CHANGE_645009" },
	{ config_id = 1645010, name = "GROUP_LOAD_645010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_645010", action = "action_EVENT_GROUP_LOAD_645010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1645006, name = "GADGET_STATE_CHANGE_645006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_645006", action = "action_EVENT_GADGET_STATE_CHANGE_645006", trigger_count = 0 },
		{ config_id = 1645007, name = "VARIABLE_CHANGE_645007", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_645007", action = "action_EVENT_VARIABLE_CHANGE_645007", trigger_count = 0 },
		{ config_id = 1645008, name = "GROUP_LOAD_645008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_645008", trigger_count = 0 }
	}
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
		gadgets = { 645001, 645002, 645003, 645004, 645005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_645009", "GROUP_LOAD_645010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_645009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_645009(context, evt)
	-- 将configid为 645005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 645005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_645010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302645, 645002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_645010(context, evt)
	-- 将configid为 645005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 645005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end