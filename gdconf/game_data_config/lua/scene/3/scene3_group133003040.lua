-- 基础信息
local base_info = {
	group_id = 133003040
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
	{ config_id = 40001, gadget_id = 70690013, pos = { x = 2406.765, y = 284.865, z = -1595.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 40003, gadget_id = 70690001, pos = { x = 2410.048, y = 338.978, z = -1608.779 }, rot = { x = 358.479, y = 169.660, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 40004, gadget_id = 70690001, pos = { x = 2411.842, y = 339.244, z = -1618.613 }, rot = { x = 358.479, y = 169.662, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 40005, gadget_id = 70690001, pos = { x = 2413.636, y = 339.509, z = -1628.447 }, rot = { x = 358.479, y = 169.660, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 40006, gadget_id = 70690001, pos = { x = 2415.430, y = 339.774, z = -1638.282 }, rot = { x = 313.058, y = 170.267, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 40007, gadget_id = 70690001, pos = { x = 2416.249, y = 346.403, z = -1643.054 }, rot = { x = 270.649, y = 286.334, z = 0.001 }, level = 1, area_id = 1 },
	{ config_id = 40008, gadget_id = 70690001, pos = { x = 2416.139, y = 356.402, z = -1643.022 }, rot = { x = 270.649, y = 286.393, z = 0.001 }, level = 1, area_id = 1 },
	{ config_id = 40009, gadget_id = 70690001, pos = { x = 2416.030, y = 366.401, z = -1642.990 }, rot = { x = 288.932, y = 134.015, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 40010, gadget_id = 70690001, pos = { x = 2438.475, y = 380.088, z = -1655.000 }, rot = { x = 2.728, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40011, gadget_id = 70690001, pos = { x = 2447.480, y = 379.612, z = -1659.323 }, rot = { x = 2.727, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40012, gadget_id = 70690001, pos = { x = 2456.485, y = 379.136, z = -1663.647 }, rot = { x = 2.727, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40013, gadget_id = 70690001, pos = { x = 2465.490, y = 378.660, z = -1667.968 }, rot = { x = 2.727, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40014, gadget_id = 70690001, pos = { x = 2474.495, y = 378.184, z = -1672.292 }, rot = { x = 2.727, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40015, gadget_id = 70690001, pos = { x = 2483.500, y = 377.709, z = -1676.615 }, rot = { x = 2.727, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40016, gadget_id = 70690001, pos = { x = 2492.504, y = 377.233, z = -1680.938 }, rot = { x = 2.728, y = 115.644, z = 359.140 }, level = 1, area_id = 1 },
	{ config_id = 40017, gadget_id = 70690010, pos = { x = 2416.239, y = 286.567, z = -1643.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 40018, gadget_id = 70710126, pos = { x = 2406.765, y = 287.908, z = -1596.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 40002, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2571.547, y = 358.537, z = -1712.473 }, area_id = 1 },
	{ config_id = 40019, shape = RegionShape.SPHERE, radius = 4, pos = { x = 2406.765, y = 287.905, z = -1595.985 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1040002, name = "ENTER_REGION_40002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40002", action = "action_EVENT_ENTER_REGION_40002" },
	{ config_id = 1040019, name = "ENTER_REGION_40019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40019", action = "action_EVENT_ENTER_REGION_40019" }
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
		gadgets = { 40001, 40003, 40005, 40006, 40007, 40008, 40009, 40010, 40012, 40014, 40016, 40017 },
		regions = { 40002 },
		triggers = { "ENTER_REGION_40002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_40002(context, evt)
	if evt.param1 ~= 40002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40002(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003040, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40019(context, evt)
	if evt.param1 ~= 40019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end