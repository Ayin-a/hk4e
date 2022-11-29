-- 基础信息
local base_info = {
	group_id = 247004027
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
	{ config_id = 27004, gadget_id = 70310154, pos = { x = 66.277, y = 1.931, z = 372.564 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 27005, gadget_id = 70360291, pos = { x = 84.640, y = 1.931, z = 372.564 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 27007, gadget_id = 70310154, pos = { x = 55.345, y = -3.591, z = 505.777 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 27008, gadget_id = 70310154, pos = { x = 104.757, y = -3.605, z = 513.746 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 27009, gadget_id = 70310154, pos = { x = 72.689, y = -3.612, z = 534.289 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 27010, gadget_id = 70310154, pos = { x = 41.662, y = 1.950, z = 237.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27011, gadget_id = 70360291, pos = { x = 41.662, y = 1.950, z = 250.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27013, gadget_id = 70310154, pos = { x = -93.734, y = 1.572, z = 292.595 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 27014, gadget_id = 70360291, pos = { x = -75.497, y = 1.572, z = 292.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27016, gadget_id = 70310154, pos = { x = 87.900, y = -3.616, z = 485.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27017, gadget_id = 70360291, pos = { x = 87.900, y = -3.632, z = 535.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27018, gadget_id = 70360291, pos = { x = 105.517, y = -3.598, z = 505.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27019, gadget_id = 70360291, pos = { x = 72.700, y = -3.617, z = 484.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27020, gadget_id = 70360291, pos = { x = 54.572, y = -3.591, z = 513.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 27006, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 4.500 }, pos = { x = 74.823, y = 1.931, z = 372.564 } },
	{ config_id = 27012, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 20.000 }, pos = { x = 41.662, y = 1.950, z = 243.247 } },
	{ config_id = 27015, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 4.500 }, pos = { x = -84.647, y = 1.572, z = 292.595 } },
	{ config_id = 27021, shape = RegionShape.CUBIC, size = { x = 50.000, y = 10.000, z = 4.500 }, pos = { x = 79.527, y = -3.591, z = 505.777 } },
	{ config_id = 27022, shape = RegionShape.CUBIC, size = { x = 50.000, y = 10.000, z = 4.500 }, pos = { x = 79.527, y = -3.591, z = 513.656 } },
	{ config_id = 27023, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 50.000 }, pos = { x = 72.689, y = -3.612, z = 509.475 } },
	{ config_id = 27024, shape = RegionShape.CUBIC, size = { x = 4.500, y = 10.000, z = 50.000 }, pos = { x = 87.841, y = -3.612, z = 509.475 } }
}

-- 触发器
triggers = {
	{ config_id = 1027006, name = "ENTER_REGION_27006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27006", action = "action_EVENT_ENTER_REGION_27006", trigger_count = 0 },
	{ config_id = 1027012, name = "ENTER_REGION_27012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27012", action = "action_EVENT_ENTER_REGION_27012", trigger_count = 0 },
	{ config_id = 1027015, name = "ENTER_REGION_27015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27015", action = "action_EVENT_ENTER_REGION_27015", trigger_count = 0 },
	{ config_id = 1027021, name = "ENTER_REGION_27021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27021", action = "action_EVENT_ENTER_REGION_27021", trigger_count = 0 },
	{ config_id = 1027022, name = "ENTER_REGION_27022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27022", action = "action_EVENT_ENTER_REGION_27022", trigger_count = 0 },
	{ config_id = 1027023, name = "ENTER_REGION_27023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27023", action = "action_EVENT_ENTER_REGION_27023", trigger_count = 0 },
	{ config_id = 1027024, name = "ENTER_REGION_27024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27024", action = "action_EVENT_ENTER_REGION_27024", trigger_count = 0 }
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
		gadgets = { 27004, 27005, 27007, 27008, 27009, 27010, 27011, 27013, 27014, 27016, 27017, 27018, 27019, 27020 },
		regions = { 27006, 27012, 27015, 27021, 27022, 27023, 27024 },
		triggers = { "ENTER_REGION_27006", "ENTER_REGION_27012", "ENTER_REGION_27015", "ENTER_REGION_27021", "ENTER_REGION_27022", "ENTER_REGION_27023", "ENTER_REGION_27024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_27006(context, evt)
	if evt.param1 ~= 27006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27006(context, evt)
	-- 将configid为 27004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27012(context, evt)
	if evt.param1 ~= 27012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27012(context, evt)
	-- 将configid为 27010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27015(context, evt)
	if evt.param1 ~= 27015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27015(context, evt)
	-- 将configid为 27013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27021(context, evt)
	if evt.param1 ~= 27021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27021(context, evt)
	-- 将configid为 27007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27022(context, evt)
	if evt.param1 ~= 27022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27022(context, evt)
	-- 将configid为 27008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27023(context, evt)
	if evt.param1 ~= 27023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27023(context, evt)
	-- 将configid为 27009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27024(context, evt)
	if evt.param1 ~= 27024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27024(context, evt)
	-- 将configid为 27016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end