-- 基础信息
local base_info = {
	group_id = 201006006
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
	{ config_id = 26, gadget_id = 70380003, pos = { x = 47.702, y = 6.952, z = -48.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 28, gadget_id = 70380003, pos = { x = 81.560, y = 17.592, z = -42.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 30, gadget_id = 70380003, pos = { x = 104.272, y = 54.679, z = -12.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 31, gadget_id = 70380003, pos = { x = 108.198, y = 54.586, z = -31.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 33, gadget_id = 70380003, pos = { x = 120.875, y = 54.483, z = -10.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 34, gadget_id = 70380003, pos = { x = 124.803, y = 54.391, z = -32.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1006010, start_route = false },
	{ config_id = 35, gadget_id = 70350005, pos = { x = 151.453, y = 60.542, z = -22.031 }, rot = { x = 0.000, y = 270.121, z = 0.000 }, level = 1 },
	{ config_id = 77, gadget_id = 70900201, pos = { x = 146.551, y = 60.512, z = -22.000 }, rot = { x = 0.000, y = 99.274, z = 0.000 }, level = 1 },
	{ config_id = 79, gadget_id = 70900201, pos = { x = 165.382, y = 82.039, z = -21.610 }, rot = { x = 0.000, y = 156.382, z = 0.000 }, level = 1 },
	{ config_id = 80, gadget_id = 70900201, pos = { x = 81.701, y = 19.364, z = -43.231 }, rot = { x = 0.000, y = 45.277, z = 0.000 }, level = 1 },
	{ config_id = 82, gadget_id = 70380003, pos = { x = 111.965, y = 54.553, z = -14.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1006009, start_route = false },
	{ config_id = 83, gadget_id = 70380003, pos = { x = 128.754, y = 54.352, z = -14.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false }
}

-- 区域
regions = {
	{ config_id = 22, shape = RegionShape.CUBIC, size = { x = 15.000, y = 3.000, z = 10.000 }, pos = { x = 144.501, y = 60.628, z = -22.229 } },
	{ config_id = 32, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 10.000 }, pos = { x = 81.308, y = 19.364, z = -41.478 } },
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 5, pos = { x = 41.132, y = 8.984, z = -49.844 } },
	{ config_id = 46, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 35.000 }, pos = { x = 172.225, y = 81.481, z = -21.051 } },
	{ config_id = 47, shape = RegionShape.SPHERE, radius = 5, pos = { x = 199.715, y = 72.180, z = -22.495 } },
	{ config_id = 48, shape = RegionShape.SPHERE, radius = 5, pos = { x = 99.655, y = 56.355, z = -21.746 } },
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 5, pos = { x = 114.355, y = 56.155, z = -22.655 } },
	{ config_id = 55, shape = RegionShape.CUBIC, size = { x = 4.000, y = 5.000, z = 4.000 }, pos = { x = 48.364, y = 8.817, z = -48.658 } }
}

-- 触发器
triggers = {
	{ config_id = 1000022, name = "ENTER_REGION_22", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22", action = "action_EVENT_ENTER_REGION_22", forbid_guest = false },
	{ config_id = 1000032, name = "ENTER_REGION_32", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32", action = "action_EVENT_ENTER_REGION_32", forbid_guest = false },
	{ config_id = 1000045, name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ config_id = 1000046, name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ config_id = 1000047, name = "ENTER_REGION_47", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47", action = "action_EVENT_ENTER_REGION_47", forbid_guest = false },
	{ config_id = 1000048, name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ config_id = 1000049, name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49", forbid_guest = false },
	{ config_id = 1000055, name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55", forbid_guest = false }
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
		gadgets = { 26, 28, 30, 31, 33, 34, 35, 82, 83 },
		regions = { 22, 32, 45, 46, 47, 48, 49, 55 },
		triggers = { "ENTER_REGION_22", "ENTER_REGION_32", "ENTER_REGION_45", "ENTER_REGION_46", "ENTER_REGION_47", "ENTER_REGION_48", "ENTER_REGION_49", "ENTER_REGION_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_22(context, evt)
	if evt.param1 ~= 22 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22(context, evt)
	-- 将configid为 35 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006006, monsters = {}, gadgets = {77} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32(context, evt)
	if evt.param1 ~= 32 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 28) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006006, monsters = {}, gadgets = {80} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为77的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= 45 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45(context, evt)
	-- 创建id为80的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006006, monsters = {}, gadgets = {79} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47(context, evt)
	if evt.param1 ~= 47 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006007, monsters = {}, gadgets = {78} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为79的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 79 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 82) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49(context, evt)
	if evt.param1 ~= 49 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 83) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 26) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end