-- 基础信息
local base_info = {
	group_id = 250004023
}

-- Trigger变量
local defs = {
	gadget_id_1 = 174,
	gadget_id_2 = 163
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
	{ config_id = 163, gadget_id = 70900224, pos = { x = 398.234, y = -10.038, z = -140.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 164, gadget_id = 70350004, pos = { x = 412.138, y = -11.281, z = -131.170 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 165, gadget_id = 70900208, pos = { x = 398.253, y = -11.141, z = -137.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 167, gadget_id = 70350004, pos = { x = 396.942, y = -11.005, z = -138.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 168, gadget_id = 70900208, pos = { x = 406.951, y = -11.098, z = -142.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 169, gadget_id = 70900208, pos = { x = 409.768, y = -11.112, z = -142.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 170, gadget_id = 70900208, pos = { x = 412.811, y = -8.137, z = -142.408 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 171, gadget_id = 70900208, pos = { x = 412.332, y = -6.781, z = -141.154 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 172, gadget_id = 70900208, pos = { x = 412.463, y = -6.789, z = -139.103 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 173, gadget_id = 70900208, pos = { x = 412.463, y = -6.815, z = -137.034 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 174, gadget_id = 70900224, pos = { x = 411.049, y = -6.502, z = -134.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000036, name = "CLIENT_EXECUTE_36", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_36", action = "action_EVENT_CLIENT_EXECUTE_36", trigger_count = 0 },
	{ config_id = 1000037, name = "CLIENT_EXECUTE_37", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_37", action = "action_EVENT_CLIENT_EXECUTE_37", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 163, 164, 165, 167, 168, 169, 170, 171, 172, 173, 174 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_36", "CLIENT_EXECUTE_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_36(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_36(context, evt)
	-- 将configid为 164 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_37(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_37(context, evt)
	-- 将configid为 167 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end