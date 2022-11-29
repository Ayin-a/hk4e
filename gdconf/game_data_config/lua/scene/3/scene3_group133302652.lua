-- 基础信息
local base_info = {
	group_id = 133302652
}

-- Trigger变量
local defs = {
	group_id = 133302652,
	gadget_riddle_hint = 652001,
	gadget_riddle_1 = 652002,
	gadget_riddle_2 = 652003,
	gadget_riddle_3 = 652004,
	gadget_riddle_4 = 652005,
	gadget_chest = 652006
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
	{ config_id = 652001, gadget_id = 70330218, pos = { x = -945.172, y = 217.778, z = 2904.651 }, rot = { x = 0.000, y = 253.750, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 652002, gadget_id = 70310011, pos = { x = -938.353, y = 221.400, z = 2885.649 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 652003, gadget_id = 70310011, pos = { x = -957.063, y = 219.148, z = 2894.522 }, rot = { x = 25.461, y = 316.024, z = 353.475 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 652004, gadget_id = 70320005, pos = { x = -945.447, y = 218.334, z = 2904.885 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 652005, gadget_id = 70310011, pos = { x = -958.711, y = 218.541, z = 2879.323 }, rot = { x = 354.646, y = 14.464, z = 352.225 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 652006, gadget_id = 70211102, pos = { x = -948.322, y = 218.025, z = 2896.332 }, rot = { x = 0.000, y = 244.608, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652010, name = "GADGET_STATE_CHANGE_652010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_652010", action = "action_EVENT_GADGET_STATE_CHANGE_652010" },
	{ config_id = 1652011, name = "GROUP_LOAD_652011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_652011", action = "action_EVENT_GROUP_LOAD_652011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1652007, name = "GADGET_STATE_CHANGE_652007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_652007", action = "action_EVENT_GADGET_STATE_CHANGE_652007", trigger_count = 0 },
		{ config_id = 1652008, name = "VARIABLE_CHANGE_652008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_652008", action = "action_EVENT_VARIABLE_CHANGE_652008", trigger_count = 0 },
		{ config_id = 1652009, name = "GROUP_LOAD_652009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_652009", trigger_count = 0 }
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
		gadgets = { 652001, 652002, 652003, 652004, 652005, 652006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_652010", "GROUP_LOAD_652011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_652010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_652010(context, evt)
	-- 将configid为 652006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 652006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_652011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302652, 652004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_652011(context, evt)
	-- 将configid为 652006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 652006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"