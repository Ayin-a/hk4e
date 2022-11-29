-- 基础信息
local base_info = {
	group_id = 133008428
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
	{ config_id = 428001, gadget_id = 70310025, pos = { x = 895.004, y = 238.029, z = -1166.182 }, rot = { x = 0.000, y = 22.370, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 428002, gadget_id = 70310025, pos = { x = 907.046, y = 227.294, z = -1143.777 }, rot = { x = 0.000, y = 284.210, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 428003, gadget_id = 70310025, pos = { x = 876.684, y = 230.834, z = -1161.296 }, rot = { x = 0.000, y = 74.605, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 428004, gadget_id = 70310025, pos = { x = 901.910, y = 230.687, z = -1132.062 }, rot = { x = 0.000, y = 328.729, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 428005, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = 896.154, y = 199.428, z = -1164.903 }, area_id = 10 },
	{ config_id = 428006, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = 878.282, y = 200.177, z = -1157.262 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1428005, name = "ENTER_REGION_428005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_428005", action = "action_EVENT_ENTER_REGION_428005" },
	{ config_id = 1428006, name = "ENTER_REGION_428006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_428006", action = "action_EVENT_ENTER_REGION_428006" }
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
		gadgets = { 428001, 428002, 428003, 428004 },
		regions = { 428005, 428006 },
		triggers = { "ENTER_REGION_428005", "ENTER_REGION_428006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_428005(context, evt)
	if evt.param1 ~= 428005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_428005(context, evt)
	-- 将configid为 428001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 428001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_428006(context, evt)
	if evt.param1 ~= 428006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_428006(context, evt)
	-- 将configid为 428003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 428003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end