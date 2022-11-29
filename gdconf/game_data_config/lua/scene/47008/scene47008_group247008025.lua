-- 基础信息
local base_info = {
	group_id = 247008025
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
	{ config_id = 25001, gadget_id = 70310154, pos = { x = 379.575, y = -1.149, z = 323.926 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 25002, gadget_id = 70310154, pos = { x = 379.575, y = -1.149, z = 316.138 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 25003, gadget_id = 70310154, pos = { x = 346.030, y = -1.164, z = 344.464 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 25004, gadget_id = 70310154, pos = { x = 353.981, y = -1.156, z = 295.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25005, gadget_id = 70360291, pos = { x = 353.910, y = -1.185, z = 345.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25006, gadget_id = 70360291, pos = { x = 345.795, y = -1.129, z = 294.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25007, gadget_id = 70360291, pos = { x = 318.942, y = -1.135, z = 323.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25008, gadget_id = 70360291, pos = { x = 318.941, y = -1.131, z = 316.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25013, gadget_id = 70310154, pos = { x = 4.191, y = 1.490, z = 224.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25014, gadget_id = 70310154, pos = { x = -4.134, y = 1.490, z = 224.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25015, gadget_id = 70360291, pos = { x = 4.215, y = 1.481, z = 256.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25016, gadget_id = 70360291, pos = { x = -4.133, y = 1.475, z = 256.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25021, gadget_id = 70360291, pos = { x = 155.984, y = 1.475, z = 260.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25022, gadget_id = 70360291, pos = { x = 164.009, y = 1.481, z = 260.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25023, gadget_id = 70310154, pos = { x = 155.982, y = 1.490, z = 220.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25024, gadget_id = 70310154, pos = { x = 163.985, y = 1.490, z = 220.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 25009, shape = RegionShape.CUBIC, size = { x = 60.000, y = 10.000, z = 4.500 }, pos = { x = 351.169, y = -1.149, z = 323.926 } },
	{ config_id = 25010, shape = RegionShape.CUBIC, size = { x = 60.000, y = 10.000, z = 4.500 }, pos = { x = 351.169, y = -1.149, z = 315.948 } },
	{ config_id = 25011, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 50.000 }, pos = { x = 345.924, y = -1.164, z = 320.674 } },
	{ config_id = 25012, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 50.000 }, pos = { x = 353.874, y = -1.164, z = 320.674 } },
	{ config_id = 25017, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 30.000 }, pos = { x = 4.191, y = 1.490, z = 239.870 } },
	{ config_id = 25018, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 30.000 }, pos = { x = -4.100, y = 1.490, z = 239.870 } },
	{ config_id = 25019, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 40.000 }, pos = { x = 156.016, y = 1.490, z = 239.029 } },
	{ config_id = 25020, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 40.000 }, pos = { x = 163.985, y = 1.490, z = 239.166 } }
}

-- 触发器
triggers = {
	{ config_id = 1025009, name = "ENTER_REGION_25009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25009", action = "action_EVENT_ENTER_REGION_25009", trigger_count = 0 },
	{ config_id = 1025010, name = "ENTER_REGION_25010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25010", action = "action_EVENT_ENTER_REGION_25010", trigger_count = 0 },
	{ config_id = 1025011, name = "ENTER_REGION_25011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25011", action = "action_EVENT_ENTER_REGION_25011", trigger_count = 0 },
	{ config_id = 1025012, name = "ENTER_REGION_25012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25012", action = "action_EVENT_ENTER_REGION_25012", trigger_count = 0 },
	{ config_id = 1025017, name = "ENTER_REGION_25017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25017", action = "action_EVENT_ENTER_REGION_25017", trigger_count = 0 },
	{ config_id = 1025018, name = "ENTER_REGION_25018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25018", action = "action_EVENT_ENTER_REGION_25018", trigger_count = 0 },
	{ config_id = 1025019, name = "ENTER_REGION_25019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25019", action = "action_EVENT_ENTER_REGION_25019", trigger_count = 0 },
	{ config_id = 1025020, name = "ENTER_REGION_25020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25020", action = "action_EVENT_ENTER_REGION_25020", trigger_count = 0 }
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
		gadgets = { 25001, 25002, 25003, 25004, 25005, 25006, 25007, 25008, 25013, 25014, 25015, 25016, 25021, 25022, 25023, 25024 },
		regions = { 25009, 25010, 25011, 25012, 25017, 25018, 25019, 25020 },
		triggers = { "ENTER_REGION_25009", "ENTER_REGION_25010", "ENTER_REGION_25011", "ENTER_REGION_25012", "ENTER_REGION_25017", "ENTER_REGION_25018", "ENTER_REGION_25019", "ENTER_REGION_25020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_25009(context, evt)
	if evt.param1 ~= 25009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25009(context, evt)
	-- 将configid为 25001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25010(context, evt)
	if evt.param1 ~= 25010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25010(context, evt)
	-- 将configid为 25002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25011(context, evt)
	if evt.param1 ~= 25011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25011(context, evt)
	-- 将configid为 25003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25012(context, evt)
	if evt.param1 ~= 25012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25012(context, evt)
	-- 将configid为 25004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25017(context, evt)
	if evt.param1 ~= 25017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25017(context, evt)
	-- 将configid为 25013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25018(context, evt)
	if evt.param1 ~= 25018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25018(context, evt)
	-- 将configid为 25014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25019(context, evt)
	if evt.param1 ~= 25019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25019(context, evt)
	-- 将configid为 25023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25020(context, evt)
	if evt.param1 ~= 25020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25020(context, evt)
	-- 将configid为 25024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end