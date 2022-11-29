-- 基础信息
local base_info = {
	group_id = 250004025
}

-- Trigger变量
local defs = {
	gadget_id_1 = 252,
	gadget_id_2 = 251,
	gadget_id_3 = 1,
	gadget_id_4 = 0,
	gadget_id_5 = 242,
	gadget_id_6 = 243
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
	{ config_id = 240, gadget_id = 70900208, pos = { x = 699.226, y = -11.411, z = -134.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 242, gadget_id = 70900224, pos = { x = 700.114, y = -10.080, z = -126.999 }, rot = { x = 0.000, y = 359.072, z = 0.000 }, level = 1 },
	{ config_id = 243, gadget_id = 70350004, pos = { x = 751.362, y = -11.063, z = -131.063 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 249, gadget_id = 70900208, pos = { x = 699.295, y = -11.362, z = -127.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 251, gadget_id = 70900206, pos = { x = 749.175, y = -10.973, z = -132.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 252, gadget_id = 70900224, pos = { x = 699.753, y = -10.111, z = -135.840 }, rot = { x = 0.000, y = 359.072, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 51, shape = RegionShape.SPHERE, radius = 5, pos = { x = 756.646, y = -11.000, z = -131.124 } }
}

-- 触发器
triggers = {
	{ config_id = 1000049, name = "CLIENT_EXECUTE_49", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_49", action = "action_EVENT_CLIENT_EXECUTE_49", trigger_count = 0 },
	{ config_id = 1000050, name = "CLIENT_EXECUTE_50", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_50", action = "action_EVENT_CLIENT_EXECUTE_50", trigger_count = 0 },
	{ config_id = 1000051, name = "ENTER_REGION_51", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51", action = "action_EVENT_ENTER_REGION_51", forbid_guest = false }
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
		gadgets = { 240, 242, 243, 249, 251, 252 },
		regions = { 51 },
		triggers = { "CLIENT_EXECUTE_49", "CLIENT_EXECUTE_50", "ENTER_REGION_51" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_49(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_49(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_3 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_2, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_50(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_5 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_50(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_3 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_6, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_6, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_ENTER_REGION_51(context, evt)
	if evt.param1 ~= 51 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51(context, evt)
	-- 将configid为 251 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end