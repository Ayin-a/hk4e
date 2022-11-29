-- 基础信息
local base_info = {
	group_id = 250004032
}

-- Trigger变量
local defs = {
	gadget_id_1 = 342,
	gadget_id_2 = 343,
	gadget_id_3 = 344,
	gadget_id_4 = 346,
	gadget_id_5 = 345
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010701, pos = { x = 253.964, y = -10.280, z = 252.358 }, rot = { x = 0.000, y = 177.448, z = 0.000 }, level = 10 },
	{ config_id = 17, monster_id = 21010701, pos = { x = 254.914, y = -10.280, z = 250.363 }, rot = { x = 0.000, y = 177.849, z = 0.000 }, level = 10 },
	{ config_id = 18, monster_id = 21010701, pos = { x = 256.135, y = -10.280, z = 251.876 }, rot = { x = 0.000, y = 198.185, z = 0.000 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 321, gadget_id = 70350004, pos = { x = 255.052, y = -10.309, z = 248.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 322, gadget_id = 70900208, pos = { x = 249.859, y = -10.535, z = 233.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 323, gadget_id = 70900208, pos = { x = 260.386, y = -10.535, z = 233.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 324, gadget_id = 70900208, pos = { x = 249.848, y = -10.535, z = 235.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 325, gadget_id = 70900208, pos = { x = 260.376, y = -10.535, z = 235.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 326, gadget_id = 70900208, pos = { x = 249.842, y = -10.535, z = 237.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 327, gadget_id = 70900208, pos = { x = 260.370, y = -10.535, z = 237.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 328, gadget_id = 70900208, pos = { x = 249.822, y = -10.535, z = 239.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 329, gadget_id = 70900208, pos = { x = 260.351, y = -10.487, z = 239.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330, gadget_id = 70900208, pos = { x = 249.821, y = -10.535, z = 241.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 331, gadget_id = 70900208, pos = { x = 260.350, y = -10.459, z = 241.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 332, gadget_id = 70900208, pos = { x = 249.842, y = -10.535, z = 242.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 333, gadget_id = 70900208, pos = { x = 260.386, y = -10.535, z = 242.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 334, gadget_id = 70320002, pos = { x = 251.689, y = -10.280, z = 233.241 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 335, gadget_id = 70320002, pos = { x = 251.589, y = -10.280, z = 239.002 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 336, gadget_id = 70320002, pos = { x = 251.549, y = -10.280, z = 244.916 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 337, gadget_id = 70320002, pos = { x = 258.502, y = -10.280, z = 242.256 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 338, gadget_id = 70320002, pos = { x = 258.441, y = -10.280, z = 235.954 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 339, gadget_id = 70900208, pos = { x = 249.841, y = -10.515, z = 244.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 340, gadget_id = 70900208, pos = { x = 251.120, y = -10.605, z = 231.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 341, gadget_id = 70900208, pos = { x = 258.854, y = -10.484, z = 231.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 342, gadget_id = 70900224, pos = { x = 251.666, y = -8.163, z = 233.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 343, gadget_id = 70900224, pos = { x = 251.588, y = -8.249, z = 239.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 344, gadget_id = 70900224, pos = { x = 251.546, y = -8.157, z = 244.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 345, gadget_id = 70900224, pos = { x = 258.410, y = -8.185, z = 235.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 346, gadget_id = 70900224, pos = { x = 258.464, y = -8.255, z = 242.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 62, shape = RegionShape.SPHERE, radius = 5, pos = { x = 254.658, y = -10.280, z = 227.448 } }
}

-- 触发器
triggers = {
	{ config_id = 1000062, name = "ENTER_REGION_62", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62", action = "action_EVENT_ENTER_REGION_62", forbid_guest = false },
	{ config_id = 1000063, name = "CLIENT_EXECUTE_63", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_63", action = "action_EVENT_CLIENT_EXECUTE_63", trigger_count = 0 },
	{ config_id = 1000064, name = "CLIENT_EXECUTE_64", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_64", action = "action_EVENT_CLIENT_EXECUTE_64", trigger_count = 0 },
	{ config_id = 1000065, name = "CLIENT_EXECUTE_65", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_65", action = "action_EVENT_CLIENT_EXECUTE_65", trigger_count = 0 },
	{ config_id = 1000066, name = "CLIENT_EXECUTE_66", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_66", action = "action_EVENT_CLIENT_EXECUTE_66", trigger_count = 0 },
	{ config_id = 1000067, name = "CLIENT_EXECUTE_67", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_67", action = "action_EVENT_CLIENT_EXECUTE_67", trigger_count = 0 }
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
		monsters = { 16, 17, 18 },
		gadgets = { 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346 },
		regions = { 62 },
		triggers = { "ENTER_REGION_62", "CLIENT_EXECUTE_63", "CLIENT_EXECUTE_64", "CLIENT_EXECUTE_65", "CLIENT_EXECUTE_66", "CLIENT_EXECUTE_67" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_62(context, evt)
	if evt.param1 ~= 62 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62(context, evt)
	-- 将configid为 321 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_63(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_63(context, evt)
	-- 将configid为 334 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_64(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_64(context, evt)
	-- 将configid为 335 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_65(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_3 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_65(context, evt)
	-- 将configid为 336 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_66(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_4 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_66(context, evt)
	-- 将configid为 337 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_67(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_5 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_67(context, evt)
	-- 将configid为 338 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end