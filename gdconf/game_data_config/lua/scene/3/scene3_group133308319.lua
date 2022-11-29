-- 基础信息
local base_info = {
	group_id = 133308319
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
	{ config_id = 319001, gadget_id = 70330407, pos = { x = -2416.809, y = 54.014, z = 4371.057 }, rot = { x = -0.001, y = 32.704, z = 328.752 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 },
	{ config_id = 319002, gadget_id = 70330407, pos = { x = -2403.118, y = 54.121, z = 4368.110 }, rot = { x = 0.000, y = 227.469, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 },
	{ config_id = 319003, gadget_id = 70330407, pos = { x = -2401.266, y = 54.132, z = 4355.630 }, rot = { x = 0.000, y = 44.299, z = 0.000 }, level = 32, server_global_value_config = {SGV_BulletType = 0}, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 319004, shape = RegionShape.POLYGON, pos = { x = -2404.932, y = 54.463, z = 4364.800 }, height = 40.576, point_array = { { x = -2389.352, y = 4355.705 }, { x = -2412.471, y = 4380.473 }, { x = -2420.513, y = 4372.649 }, { x = -2395.772, y = 4349.126 } }, area_id = 26 },
	{ config_id = 319005, shape = RegionShape.POLYGON, pos = { x = -2404.932, y = 54.463, z = 4364.800 }, height = 40.576, point_array = { { x = -2389.352, y = 4355.705 }, { x = -2412.471, y = 4380.473 }, { x = -2420.513, y = 4372.649 }, { x = -2395.772, y = 4349.126 } }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1319004, name = "ENTER_REGION_319004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_319004", action = "action_EVENT_ENTER_REGION_319004", trigger_count = 0 },
	{ config_id = 1319005, name = "LEAVE_REGION_319005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_319005", action = "action_EVENT_LEAVE_REGION_319005", trigger_count = 0 }
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
		gadgets = { 319001, 319002, 319003 },
		regions = { 319004, 319005 },
		triggers = { "ENTER_REGION_319004", "LEAVE_REGION_319005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_319004(context, evt)
	if evt.param1 ~= 319004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_319004(context, evt)
	-- 将configid为 319002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定319002物件设置其SGV:"SGV_BulletType"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 319002, "SGV_BulletType", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	-- 将configid为 319003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定319003物件设置其SGV:"SGV_BulletType"为1
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 319003, "SGV_BulletType", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_319005(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_319005(context, evt)
	-- 将configid为 319002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定319002物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 319002, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	-- 将configid为 319003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 为特定319003物件设置其SGV:"SGV_BulletType"为0
	if 0 ~= ScriptLib.SetEntityServerGlobalValueByConfigId(context, 319003, "SGV_BulletType", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_entity_SGV_by_cid")
	  return -1
	end
	
	return 0
end