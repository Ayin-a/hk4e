-- 基础信息
local base_info = {
	group_id = 133008396
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
	{ config_id = 396002, gadget_id = 70310025, pos = { x = 1174.685, y = 280.825, z = -561.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 396005, gadget_id = 70310025, pos = { x = 1146.082, y = 279.993, z = -528.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 396001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1174.557, y = 265.053, z = -561.144 }, area_id = 10 },
	{ config_id = 396003, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1145.983, y = 270.531, z = -529.150 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1396001, name = "ENTER_REGION_396001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396001", action = "action_EVENT_ENTER_REGION_396001" },
	{ config_id = 1396003, name = "ENTER_REGION_396003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396003", action = "action_EVENT_ENTER_REGION_396003" }
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
		gadgets = { 396002, 396005 },
		regions = { 396001, 396003 },
		triggers = { "ENTER_REGION_396001", "ENTER_REGION_396003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_396001(context, evt)
	if evt.param1 ~= 396001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396001(context, evt)
	-- 将configid为 396002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 396002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_396003(context, evt)
	if evt.param1 ~= 396003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396003(context, evt)
	-- 将configid为 396005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 396005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end