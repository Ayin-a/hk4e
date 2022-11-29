-- 基础信息
local base_info = {
	group_id = 250004003
}

-- Trigger变量
local defs = {
	gadget_id_1 = 186,
	gadget_id_2 = 26
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
	{ config_id = 24, gadget_id = 70900208, pos = { x = 494.436, y = -8.642, z = -121.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25, gadget_id = 70900208, pos = { x = 497.298, y = -8.604, z = -121.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 26, gadget_id = 70900224, pos = { x = 516.385, y = -7.664, z = -126.984 }, rot = { x = 0.000, y = 359.072, z = 0.000 }, level = 1 },
	{ config_id = 27, gadget_id = 70350004, pos = { x = 518.503, y = -11.167, z = -131.043 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 186, gadget_id = 70900224, pos = { x = 499.299, y = -8.831, z = -122.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 187, gadget_id = 70900206, pos = { x = 499.275, y = -11.181, z = -122.713 }, rot = { x = 0.000, y = 268.484, z = 0.000 }, level = 1 },
	{ config_id = 188, gadget_id = 70900208, pos = { x = 501.462, y = -8.616, z = -121.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 190, gadget_id = 70900208, pos = { x = 505.621, y = -8.632, z = -121.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 191, gadget_id = 70900208, pos = { x = 510.170, y = -8.594, z = -121.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192, gadget_id = 70900208, pos = { x = 514.469, y = -8.612, z = -121.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 193, gadget_id = 70900208, pos = { x = 516.679, y = -8.656, z = -124.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 194, gadget_id = 70900208, pos = { x = 491.617, y = -8.629, z = -122.769 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 195, gadget_id = 70220005, pos = { x = 496.144, y = -8.598, z = -122.137 }, rot = { x = 0.000, y = 345.204, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 521.279, y = -11.000, z = -130.221 } }
}

-- 触发器
triggers = {
	{ config_id = 1000002, name = "CLIENT_EXECUTE_2", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_2", action = "action_EVENT_CLIENT_EXECUTE_2", trigger_count = 0 },
	{ config_id = 1000039, name = "CLIENT_EXECUTE_39", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_39", action = "action_EVENT_CLIENT_EXECUTE_39", trigger_count = 0 },
	{ config_id = 1000053, name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false }
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
		gadgets = { 24, 25, 26, 27, 186, 187, 188, 190, 191, 192, 193, 194, 195 },
		regions = { 53 },
		triggers = { "CLIENT_EXECUTE_2", "CLIENT_EXECUTE_39", "ENTER_REGION_53" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_2(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_2(context, evt)
	-- 将configid为 187 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_39(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_39(context, evt)
	-- 将configid为 27 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53(context, evt)
	if evt.param1 ~= 53 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53(context, evt)
	-- 将configid为 187 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end