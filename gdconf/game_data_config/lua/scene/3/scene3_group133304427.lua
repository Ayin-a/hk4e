-- 基础信息
local base_info = {
	group_id = 133304427
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
	{ config_id = 427001, gadget_id = 70230107, pos = { x = -1192.913, y = 175.853, z = 2439.834 }, rot = { x = 33.697, y = 332.661, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 427002, gadget_id = 70230108, pos = { x = -1206.499, y = 209.752, z = 2551.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 427003, gadget_id = 70230109, pos = { x = -1199.691, y = 185.154, z = 2464.872 }, rot = { x = 9.356, y = 298.421, z = 343.280 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 427004, gadget_id = 70230110, pos = { x = -1127.041, y = 173.624, z = 2448.368 }, rot = { x = 45.878, y = 217.553, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 427005, gadget_id = 70230111, pos = { x = -1125.365, y = 174.547, z = 2451.637 }, rot = { x = 275.594, y = 199.962, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 427006, gadget_id = 70230112, pos = { x = -1124.764, y = 174.498, z = 2455.181 }, rot = { x = 275.421, y = 159.839, z = 0.003 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 427014, gadget_id = 70211111, pos = { x = -1186.544, y = 199.200, z = 2476.325 }, rot = { x = 0.000, y = 18.765, z = 344.247 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 427007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1192.913, y = 175.853, z = 2439.834 }, area_id = 21 },
	{ config_id = 427008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1206.499, y = 209.752, z = 2551.560 }, area_id = 21 },
	{ config_id = 427009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1199.691, y = 185.154, z = 2464.872 }, area_id = 21 },
	{ config_id = 427010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1127.041, y = 173.624, z = 2448.368 }, area_id = 21 },
	{ config_id = 427011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1125.365, y = 174.547, z = 2451.637 }, area_id = 21 },
	{ config_id = 427012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1124.764, y = 174.498, z = 2455.181 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1427007, name = "ENTER_REGION_427007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427007", action = "action_EVENT_ENTER_REGION_427007", trigger_count = 0 },
	{ config_id = 1427008, name = "ENTER_REGION_427008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427008", action = "action_EVENT_ENTER_REGION_427008", trigger_count = 0 },
	{ config_id = 1427009, name = "ENTER_REGION_427009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427009", action = "action_EVENT_ENTER_REGION_427009", trigger_count = 0 },
	{ config_id = 1427010, name = "ENTER_REGION_427010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427010", action = "action_EVENT_ENTER_REGION_427010", trigger_count = 0 },
	{ config_id = 1427011, name = "ENTER_REGION_427011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427011", action = "action_EVENT_ENTER_REGION_427011", trigger_count = 0 },
	{ config_id = 1427012, name = "ENTER_REGION_427012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427012", action = "action_EVENT_ENTER_REGION_427012", trigger_count = 0 },
	{ config_id = 1427013, name = "GADGET_STATE_CHANGE_427013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_427013", action = "action_EVENT_GADGET_STATE_CHANGE_427013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active", value = 0, no_refresh = true }
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
		gadgets = { 427001, 427002, 427003, 427004, 427005, 427006 },
		regions = { 427007, 427008, 427009, 427010, 427011, 427012 },
		triggers = { "ENTER_REGION_427007", "ENTER_REGION_427008", "ENTER_REGION_427009", "ENTER_REGION_427010", "ENTER_REGION_427011", "ENTER_REGION_427012", "GADGET_STATE_CHANGE_427013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_427007(context, evt)
	if evt.param1 ~= 427007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427007(context, evt)
	-- 将configid为 427001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_427008(context, evt)
	if evt.param1 ~= 427008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427008(context, evt)
	-- 将configid为 427002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_427009(context, evt)
	if evt.param1 ~= 427009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427009(context, evt)
	-- 将configid为 427003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_427010(context, evt)
	if evt.param1 ~= 427010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427010(context, evt)
	-- 将configid为 427004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_427011(context, evt)
	if evt.param1 ~= 427011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427011(context, evt)
	-- 将configid为 427005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_427012(context, evt)
	if evt.param1 ~= 427012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427012(context, evt)
	-- 将configid为 427006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_427013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304427, 427001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304427, 427002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304427, 427003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304427, 427004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304427, 427005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304427, 427006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_427013(context, evt)
	-- 创建id为427014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end