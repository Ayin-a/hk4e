-- 基础信息
local base_info = {
	group_id = 133302654
}

-- Trigger变量
local defs = {
	group_id = 133302654,
	gadget_riddle_hint = 654001,
	gadget_riddle_1 = 654002,
	gadget_riddle_2 = 654003,
	gadget_riddle_3 = 654004,
	gadget_riddle_4 = 654005,
	gadget_chest = 654006
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
	{ config_id = 654001, gadget_id = 70220103, pos = { x = -74.842, y = 232.523, z = 2571.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 654002, gadget_id = 70310011, pos = { x = -64.916, y = 227.590, z = 2560.132 }, rot = { x = 19.592, y = 274.929, z = 6.942 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 654003, gadget_id = 70320005, pos = { x = -76.362, y = 226.984, z = 2559.839 }, rot = { x = 355.449, y = 318.438, z = 356.714 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 654004, gadget_id = 70310011, pos = { x = -83.898, y = 220.279, z = 2633.670 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 654005, gadget_id = 70320005, pos = { x = -94.271, y = 220.438, z = 2631.158 }, rot = { x = 0.787, y = 11.230, z = 353.298 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 654006, gadget_id = 70211102, pos = { x = -79.538, y = 218.489, z = 2597.992 }, rot = { x = 0.000, y = 167.212, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 654010, gadget_id = 70220103, pos = { x = -83.669, y = 224.970, z = 2622.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1654011, name = "GADGET_STATE_CHANGE_654011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_654011", action = "action_EVENT_GADGET_STATE_CHANGE_654011" },
	-- 保底
	{ config_id = 1654012, name = "GROUP_LOAD_654012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_654012", action = "action_EVENT_GROUP_LOAD_654012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1654007, name = "GADGET_STATE_CHANGE_654007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_654007", action = "action_EVENT_GADGET_STATE_CHANGE_654007", trigger_count = 0 },
		{ config_id = 1654008, name = "VARIABLE_CHANGE_654008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_654008", action = "action_EVENT_VARIABLE_CHANGE_654008", trigger_count = 0 },
		{ config_id = 1654009, name = "GROUP_LOAD_654009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_654009", trigger_count = 0 }
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
		gadgets = { 654001, 654002, 654003, 654004, 654005, 654006, 654010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_654011", "GROUP_LOAD_654012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_654011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_654011(context, evt)
	-- 将configid为 654006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_654012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302654, 654005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_654012(context, evt)
	-- 将configid为 654006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end