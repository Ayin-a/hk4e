-- 基础信息
local base_info = {
	group_id = 220134065
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
	{ config_id = 65001, gadget_id = 70310241, pos = { x = 705.826, y = 612.198, z = -1751.861 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65002, gadget_id = 70310241, pos = { x = 718.742, y = 612.198, z = -1730.835 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65003, gadget_id = 70310241, pos = { x = 739.593, y = 612.198, z = -1743.908 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65004, gadget_id = 70310241, pos = { x = 726.511, y = 612.198, z = -1765.109 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65005, gadget_id = 70310241, pos = { x = 746.634, y = 612.198, z = -1780.082 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65006, gadget_id = 70310241, pos = { x = 768.010, y = 612.198, z = -1792.427 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65007, gadget_id = 70310241, pos = { x = 759.681, y = 612.198, z = -1758.869 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65008, gadget_id = 70310241, pos = { x = 782.166, y = 612.198, z = -1769.921 }, rot = { x = 0.000, y = 31.644, z = 0.000 }, level = 1 },
	{ config_id = 65013, gadget_id = 70310447, pos = { x = 735.788, y = 619.456, z = -1740.029 }, rot = { x = 341.911, y = 99.560, z = 0.000 }, level = 1 },
	{ config_id = 65014, gadget_id = 70310446, pos = { x = 754.277, y = 620.820, z = -1750.841 }, rot = { x = 9.298, y = 137.873, z = -0.001 }, level = 1 },
	{ config_id = 65015, gadget_id = 70310448, pos = { x = 747.048, y = 617.061, z = -1760.233 }, rot = { x = 2.004, y = 155.423, z = 1.166 }, level = 1 },
	{ config_id = 65016, gadget_id = 70310448, pos = { x = 730.480, y = 617.733, z = -1759.350 }, rot = { x = 357.858, y = 327.772, z = 359.111 }, level = 1 },
	{ config_id = 65020, gadget_id = 70310459, pos = { x = 711.597, y = 622.816, z = -1749.331 }, rot = { x = 11.353, y = 359.726, z = 0.638 }, level = 1 },
	{ config_id = 65023, gadget_id = 70310459, pos = { x = 743.335, y = 619.481, z = -1768.268 }, rot = { x = 17.624, y = 280.214, z = 2.117 }, level = 1 },
	{ config_id = 65030, gadget_id = 70310447, pos = { x = 719.146, y = 620.452, z = -1738.001 }, rot = { x = 337.244, y = 264.442, z = 2.110 }, level = 1 },
	{ config_id = 65033, gadget_id = 70310447, pos = { x = 762.697, y = 621.263, z = -1765.450 }, rot = { x = 20.468, y = 336.832, z = 358.936 }, level = 1 },
	{ config_id = 65036, gadget_id = 70310447, pos = { x = 745.083, y = 618.752, z = -1752.453 }, rot = { x = 27.690, y = 179.011, z = 4.001 }, level = 1 },
	{ config_id = 65039, gadget_id = 70310446, pos = { x = 714.714, y = 617.479, z = -1753.500 }, rot = { x = 330.746, y = 317.191, z = 353.943 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 65017, shape = RegionShape.SPHERE, radius = 5, pos = { x = 760.598, y = 619.301, z = -1757.745 } },
	{ config_id = 65018, shape = RegionShape.SPHERE, radius = 5, pos = { x = 744.348, y = 622.031, z = -1741.368 } },
	{ config_id = 65019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 726.310, y = 617.641, z = -1737.467 } },
	{ config_id = 65021, shape = RegionShape.SPHERE, radius = 5, pos = { x = 707.746, y = 623.401, z = -1740.844 } },
	{ config_id = 65022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 708.702, y = 624.821, z = -1762.203 } },
	{ config_id = 65024, shape = RegionShape.SPHERE, radius = 5, pos = { x = 758.974, y = 621.520, z = -1773.603 } },
	{ config_id = 65025, shape = RegionShape.SPHERE, radius = 5, pos = { x = 729.637, y = 617.121, z = -1770.416 } },
	{ config_id = 65026, shape = RegionShape.CUBIC, size = { x = 40.000, y = 10.000, z = 60.000 }, pos = { x = 709.102, y = 609.007, z = -1748.925 } },
	{ config_id = 65027, shape = RegionShape.CUBIC, size = { x = 40.000, y = 10.000, z = 60.000 }, pos = { x = 749.304, y = 609.007, z = -1748.925 } },
	{ config_id = 65028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 734.232, y = 622.101, z = -1778.388 } },
	{ config_id = 65029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 745.986, y = 622.031, z = -1742.009 } },
	{ config_id = 65031, shape = RegionShape.SPHERE, radius = 5, pos = { x = 725.699, y = 617.690, z = -1737.716 } },
	{ config_id = 65032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 709.003, y = 623.338, z = -1738.025 } },
	{ config_id = 65034, shape = RegionShape.SPHERE, radius = 5, pos = { x = 759.695, y = 619.301, z = -1759.487 } },
	{ config_id = 65035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 765.828, y = 622.561, z = -1773.530 } },
	{ config_id = 65037, shape = RegionShape.SPHERE, radius = 5, pos = { x = 744.494, y = 618.261, z = -1757.251 } },
	{ config_id = 65038, shape = RegionShape.SPHERE, radius = 3, pos = { x = 745.291, y = 622.486, z = -1742.821 } },
	{ config_id = 65040, shape = RegionShape.SPHERE, radius = 5, pos = { x = 722.210, y = 613.431, z = -1759.521 } },
	{ config_id = 65041, shape = RegionShape.SPHERE, radius = 5, pos = { x = 708.385, y = 623.400, z = -1741.315 } }
}

-- 触发器
triggers = {
	{ config_id = 1065017, name = "ENTER_REGION_65017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65017", action = "action_EVENT_ENTER_REGION_65017", trigger_count = 0 },
	{ config_id = 1065018, name = "ENTER_REGION_65018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65018", action = "action_EVENT_ENTER_REGION_65018", trigger_count = 0 },
	{ config_id = 1065019, name = "ENTER_REGION_65019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65019", action = "action_EVENT_ENTER_REGION_65019", trigger_count = 0 },
	{ config_id = 1065021, name = "ENTER_REGION_65021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65021", action = "action_EVENT_ENTER_REGION_65021", trigger_count = 0 },
	{ config_id = 1065022, name = "ENTER_REGION_65022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65022", action = "action_EVENT_ENTER_REGION_65022", trigger_count = 0 },
	{ config_id = 1065024, name = "ENTER_REGION_65024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65024", action = "action_EVENT_ENTER_REGION_65024", trigger_count = 0 },
	{ config_id = 1065025, name = "ENTER_REGION_65025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65025", action = "action_EVENT_ENTER_REGION_65025", trigger_count = 0 },
	{ config_id = 1065026, name = "ENTER_REGION_65026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65026", action = "action_EVENT_ENTER_REGION_65026", trigger_count = 0 },
	{ config_id = 1065027, name = "ENTER_REGION_65027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65027", action = "action_EVENT_ENTER_REGION_65027", trigger_count = 0 },
	{ config_id = 1065028, name = "ENTER_REGION_65028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65028", action = "action_EVENT_ENTER_REGION_65028", trigger_count = 0 },
	{ config_id = 1065029, name = "ENTER_REGION_65029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65029", action = "action_EVENT_ENTER_REGION_65029", trigger_count = 0 },
	{ config_id = 1065031, name = "ENTER_REGION_65031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65031", action = "action_EVENT_ENTER_REGION_65031", trigger_count = 0 },
	{ config_id = 1065032, name = "ENTER_REGION_65032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65032", action = "action_EVENT_ENTER_REGION_65032", trigger_count = 0 },
	{ config_id = 1065034, name = "ENTER_REGION_65034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65034", action = "action_EVENT_ENTER_REGION_65034", trigger_count = 0 },
	{ config_id = 1065035, name = "ENTER_REGION_65035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65035", action = "action_EVENT_ENTER_REGION_65035", trigger_count = 0 },
	{ config_id = 1065037, name = "ENTER_REGION_65037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65037", action = "action_EVENT_ENTER_REGION_65037", trigger_count = 0 },
	{ config_id = 1065038, name = "ENTER_REGION_65038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65038", action = "action_EVENT_ENTER_REGION_65038", trigger_count = 0 },
	{ config_id = 1065040, name = "ENTER_REGION_65040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65040", action = "action_EVENT_ENTER_REGION_65040", trigger_count = 0 },
	{ config_id = 1065041, name = "ENTER_REGION_65041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65041", action = "action_EVENT_ENTER_REGION_65041", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 65009, gadget_id = 70690029, pos = { x = 744.336, y = 604.797, z = -1780.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 65010, gadget_id = 70690029, pos = { x = 750.683, y = 604.797, z = -1763.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 65011, gadget_id = 70690029, pos = { x = 735.527, y = 604.797, z = -1751.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 65012, gadget_id = 70690029, pos = { x = 714.257, y = 604.797, z = -1753.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 65001, 65002, 65003, 65004, 65005, 65006, 65007, 65008 },
		regions = { 65017, 65018, 65019, 65021, 65022, 65024, 65025, 65026, 65027, 65028, 65029, 65031, 65032, 65034, 65035, 65037, 65038, 65040, 65041 },
		triggers = { "ENTER_REGION_65017", "ENTER_REGION_65018", "ENTER_REGION_65019", "ENTER_REGION_65021", "ENTER_REGION_65022", "ENTER_REGION_65024", "ENTER_REGION_65025", "ENTER_REGION_65026", "ENTER_REGION_65027", "ENTER_REGION_65028", "ENTER_REGION_65029", "ENTER_REGION_65031", "ENTER_REGION_65032", "ENTER_REGION_65034", "ENTER_REGION_65035", "ENTER_REGION_65037", "ENTER_REGION_65038", "ENTER_REGION_65040", "ENTER_REGION_65041" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_65017(context, evt)
	if evt.param1 ~= 65017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65017(context, evt)
	-- 创建id为65014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65018(context, evt)
	if evt.param1 ~= 65018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65019(context, evt)
	if evt.param1 ~= 65019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65019(context, evt)
	-- 创建id为65013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65021(context, evt)
	if evt.param1 ~= 65021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65021(context, evt)
	-- 创建id为65020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65022(context, evt)
	if evt.param1 ~= 65022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65024(context, evt)
	if evt.param1 ~= 65024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65025(context, evt)
	if evt.param1 ~= 65025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65025(context, evt)
	-- 创建id为65023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65026(context, evt)
	if evt.param1 ~= 65026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65026(context, evt)
	-- 创建id为65016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65027(context, evt)
	if evt.param1 ~= 65027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65027(context, evt)
	-- 创建id为65015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65028(context, evt)
	if evt.param1 ~= 65028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65029(context, evt)
	if evt.param1 ~= 65029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65031(context, evt)
	if evt.param1 ~= 65031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65031(context, evt)
	-- 创建id为65030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65032(context, evt)
	if evt.param1 ~= 65032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65034(context, evt)
	if evt.param1 ~= 65034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65034(context, evt)
	-- 创建id为65033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65035(context, evt)
	if evt.param1 ~= 65035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65035(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65037(context, evt)
	if evt.param1 ~= 65037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65037(context, evt)
	-- 创建id为65036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65038(context, evt)
	if evt.param1 ~= 65038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65038(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65040(context, evt)
	if evt.param1 ~= 65040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65040(context, evt)
	-- 创建id为65039的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 65039 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65041(context, evt)
	if evt.param1 ~= 65041 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65041(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end