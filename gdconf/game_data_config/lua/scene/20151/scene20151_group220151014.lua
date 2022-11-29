-- 基础信息
local base_info = {
	group_id = 220151014
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
	{ config_id = 14001, gadget_id = 70330354, pos = { x = 671.740, y = 56.901, z = 422.453 }, rot = { x = 359.309, y = 311.683, z = 334.573 }, level = 1 },
	{ config_id = 14002, gadget_id = 70330354, pos = { x = 679.021, y = 57.674, z = 436.884 }, rot = { x = 354.045, y = 25.501, z = 12.264 }, level = 1 },
	{ config_id = 14003, gadget_id = 70330354, pos = { x = 666.093, y = 56.911, z = 435.786 }, rot = { x = 14.562, y = 317.970, z = 351.906 }, level = 1 },
	{ config_id = 14004, gadget_id = 70330354, pos = { x = 665.189, y = 54.190, z = 449.122 }, rot = { x = 9.791, y = 337.786, z = 12.599 }, level = 1 },
	{ config_id = 14005, gadget_id = 70330354, pos = { x = 649.936, y = 57.401, z = 466.935 }, rot = { x = 21.700, y = 324.204, z = 350.355 }, level = 1 },
	{ config_id = 14006, gadget_id = 70330354, pos = { x = 637.544, y = 59.511, z = 473.028 }, rot = { x = 345.000, y = 341.000, z = 8.600 }, level = 1 },
	{ config_id = 14007, gadget_id = 70330354, pos = { x = 638.204, y = 58.435, z = 461.318 }, rot = { x = 11.000, y = 328.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14008, shape = RegionShape.SPHERE, radius = 25, pos = { x = 658.543, y = 57.391, z = 462.657 } },
	{ config_id = 14009, shape = RegionShape.SPHERE, radius = 25, pos = { x = 637.913, y = 58.803, z = 468.507 } },
	{ config_id = 14010, shape = RegionShape.SPHERE, radius = 25, pos = { x = 625.434, y = 60.559, z = 470.964 } },
	{ config_id = 14011, shape = RegionShape.SPHERE, radius = 15, pos = { x = 662.517, y = 57.615, z = 428.638 } },
	{ config_id = 14012, shape = RegionShape.SPHERE, radius = 15, pos = { x = 672.599, y = 55.065, z = 441.987 } },
	{ config_id = 14013, shape = RegionShape.SPHERE, radius = 15, pos = { x = 662.836, y = 54.654, z = 440.659 } }
}

-- 触发器
triggers = {
	{ config_id = 1014008, name = "ENTER_REGION_14008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14008", action = "action_EVENT_ENTER_REGION_14008" },
	{ config_id = 1014009, name = "ENTER_REGION_14009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14009", action = "action_EVENT_ENTER_REGION_14009" },
	{ config_id = 1014010, name = "ENTER_REGION_14010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14010", action = "action_EVENT_ENTER_REGION_14010" },
	{ config_id = 1014011, name = "ENTER_REGION_14011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14011", action = "action_EVENT_ENTER_REGION_14011" },
	{ config_id = 1014012, name = "ENTER_REGION_14012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14012", action = "action_EVENT_ENTER_REGION_14012" },
	{ config_id = 1014013, name = "ENTER_REGION_14013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14013", action = "action_EVENT_ENTER_REGION_14013" }
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
		gadgets = { 14001, 14002, 14003, 14004, 14005, 14006, 14007 },
		regions = { 14008, 14009, 14010, 14011, 14012, 14013 },
		triggers = { "ENTER_REGION_14008", "ENTER_REGION_14009", "ENTER_REGION_14010", "ENTER_REGION_14011", "ENTER_REGION_14012", "ENTER_REGION_14013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_14008(context, evt)
	if evt.param1 ~= 14008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14008(context, evt)
	-- 将configid为 14004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14009(context, evt)
	if evt.param1 ~= 14009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14009(context, evt)
	-- 将configid为 14005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14010(context, evt)
	if evt.param1 ~= 14010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14010(context, evt)
	-- 将configid为 14006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14011(context, evt)
	if evt.param1 ~= 14011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14011(context, evt)
	-- 将configid为 14001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14012(context, evt)
	if evt.param1 ~= 14012 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14012(context, evt)
	-- 将configid为 14002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14013(context, evt)
	if evt.param1 ~= 14013 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14013(context, evt)
	-- 将configid为 14003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end