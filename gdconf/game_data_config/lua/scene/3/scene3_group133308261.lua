-- 基础信息
local base_info = {
	group_id = 133308261
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
	{ config_id = 261002, gadget_id = 70330407, pos = { x = -2383.955, y = 54.396, z = 4444.611 }, rot = { x = 0.000, y = 40.516, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 },
	{ config_id = 261003, gadget_id = 70330407, pos = { x = -2372.614, y = 54.315, z = 4443.083 }, rot = { x = 352.722, y = 353.124, z = 341.863 }, level = 32, area_id = 26 },
	{ config_id = 261004, gadget_id = 70330407, pos = { x = -2430.645, y = 54.142, z = 4430.877 }, rot = { x = 359.694, y = 335.987, z = 332.604 }, level = 32, area_id = 26 },
	{ config_id = 261006, gadget_id = 70330407, pos = { x = -2415.128, y = 54.306, z = 4445.682 }, rot = { x = 0.000, y = 139.525, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 261007, shape = RegionShape.POLYGON, pos = { x = -2418.394, y = 55.208, z = 4437.355 }, height = 40.486, point_array = { { x = -2436.684, y = 4428.611 }, { x = -2425.532, y = 4418.974 }, { x = -2400.103, y = 4444.275 }, { x = -2410.850, y = 4455.736 } }, area_id = 26 },
	{ config_id = 261008, shape = RegionShape.POLYGON, pos = { x = -2418.394, y = 55.208, z = 4437.355 }, height = 40.486, point_array = { { x = -2436.684, y = 4428.611 }, { x = -2425.532, y = 4418.974 }, { x = -2400.103, y = 4444.275 }, { x = -2410.850, y = 4455.736 } }, area_id = 26 },
	{ config_id = 261009, shape = RegionShape.POLYGON, pos = { x = -2383.403, y = 55.270, z = 4449.383 }, height = 41.996, point_array = { { x = -2391.899, y = 4466.931 }, { x = -2400.374, y = 4457.010 }, { x = -2376.502, y = 4431.834 }, { x = -2366.433, y = 4441.600 } }, area_id = 26 },
	{ config_id = 261010, shape = RegionShape.POLYGON, pos = { x = -2383.403, y = 55.270, z = 4449.383 }, height = 41.996, point_array = { { x = -2391.899, y = 4466.931 }, { x = -2400.374, y = 4457.010 }, { x = -2376.502, y = 4431.834 }, { x = -2366.433, y = 4441.600 } }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1261007, name = "ENTER_REGION_261007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_261007", action = "action_EVENT_ENTER_REGION_261007", trigger_count = 0 },
	{ config_id = 1261008, name = "LEAVE_REGION_261008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_261008", action = "action_EVENT_LEAVE_REGION_261008", trigger_count = 0 },
	{ config_id = 1261009, name = "ENTER_REGION_261009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_261009", action = "action_EVENT_ENTER_REGION_261009", trigger_count = 0 },
	{ config_id = 1261010, name = "LEAVE_REGION_261010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_261010", action = "action_EVENT_LEAVE_REGION_261010", trigger_count = 0 }
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
		gadgets = { 261002, 261003, 261004, 261006 },
		regions = { 261007, 261008, 261009, 261010 },
		triggers = { "ENTER_REGION_261007", "LEAVE_REGION_261008", "ENTER_REGION_261009", "LEAVE_REGION_261010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_261007(context, evt)
	if evt.param1 ~= 261007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_261007(context, evt)
	-- 将configid为 261006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定261006物件设置其SGV:"SGV_BulletType"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 261006, "SGV_BulletType", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_261008(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) > 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_261008(context, evt)
	-- 将configid为 261006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定261006物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 261006, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_261009(context, evt)
	if evt.param1 ~= 261009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_261009(context, evt)
	-- 将configid为 261002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定261002物件设置其SGV:"SGV_BulletType"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 261002, "SGV_BulletType", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_261010(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) > 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_261010(context, evt)
	-- 将configid为 261002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定261002物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 261002, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end