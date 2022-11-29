-- 基础信息
local base_info = {
	group_id = 133008368
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
	{ config_id = 368001, gadget_id = 70310025, pos = { x = 989.620, y = 414.072, z = -985.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 10 },
	{ config_id = 368016, gadget_id = 70310025, pos = { x = 937.942, y = 350.120, z = -833.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 368017, gadget_id = 70310025, pos = { x = 941.616, y = 369.481, z = -902.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 10 },
	{ config_id = 368024, gadget_id = 70310025, pos = { x = 934.557, y = 374.270, z = -928.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 368018, shape = RegionShape.SPHERE, radius = 7, pos = { x = 940.856, y = 349.629, z = -902.153 }, area_id = 10 },
	{ config_id = 368021, shape = RegionShape.SPHERE, radius = 5, pos = { x = 938.918, y = 340.852, z = -833.518 }, area_id = 10 },
	{ config_id = 368022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 989.413, y = 406.568, z = -986.078 }, area_id = 10 },
	{ config_id = 368025, shape = RegionShape.SPHERE, radius = 9, pos = { x = 934.276, y = 347.270, z = -928.746 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1368018, name = "ENTER_REGION_368018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_368018", action = "action_EVENT_ENTER_REGION_368018" },
	{ config_id = 1368021, name = "ENTER_REGION_368021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_368021", action = "action_EVENT_ENTER_REGION_368021" },
	{ config_id = 1368022, name = "ENTER_REGION_368022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_368022", action = "action_EVENT_ENTER_REGION_368022" },
	{ config_id = 1368025, name = "ENTER_REGION_368025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_368025", action = "action_EVENT_ENTER_REGION_368025" }
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
		gadgets = { 368001, 368016, 368017, 368024 },
		regions = { 368018, 368021, 368022, 368025 },
		triggers = { "ENTER_REGION_368018", "ENTER_REGION_368021", "ENTER_REGION_368022", "ENTER_REGION_368025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_368018(context, evt)
	if evt.param1 ~= 368018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_368018(context, evt)
	-- 将configid为 368017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_368021(context, evt)
	if evt.param1 ~= 368021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_368021(context, evt)
	-- 将configid为 368016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_368022(context, evt)
	if evt.param1 ~= 368022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_368022(context, evt)
	-- 将configid为 368001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_368025(context, evt)
	if evt.param1 ~= 368025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_368025(context, evt)
	-- 将configid为 368024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end