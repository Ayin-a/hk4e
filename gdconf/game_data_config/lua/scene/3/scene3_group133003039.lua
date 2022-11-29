-- 基础信息
local base_info = {
	group_id = 133003039
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
	{ config_id = 39001, gadget_id = 70690013, pos = { x = 2177.184, y = 222.912, z = -1373.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 39003, gadget_id = 70690001, pos = { x = 2190.370, y = 276.890, z = -1385.984 }, rot = { x = 355.568, y = 142.231, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39004, gadget_id = 70690001, pos = { x = 2196.477, y = 277.663, z = -1393.865 }, rot = { x = 355.568, y = 142.230, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39005, gadget_id = 70690001, pos = { x = 2202.583, y = 278.436, z = -1401.747 }, rot = { x = 355.568, y = 142.231, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39006, gadget_id = 70690001, pos = { x = 2208.689, y = 279.208, z = -1409.628 }, rot = { x = 355.568, y = 142.231, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39007, gadget_id = 70690001, pos = { x = 2214.796, y = 279.981, z = -1417.510 }, rot = { x = 355.568, y = 142.231, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39008, gadget_id = 70690001, pos = { x = 2220.902, y = 280.754, z = -1425.391 }, rot = { x = 355.568, y = 142.230, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39009, gadget_id = 70690001, pos = { x = 2227.009, y = 281.526, z = -1433.271 }, rot = { x = 355.568, y = 142.231, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39010, gadget_id = 70690001, pos = { x = 2233.116, y = 282.299, z = -1441.153 }, rot = { x = 316.899, y = 142.234, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39011, gadget_id = 70690010, pos = { x = 2240.969, y = 224.056, z = -1450.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 39012, gadget_id = 70690001, pos = { x = 2238.654, y = 289.503, z = -1448.298 }, rot = { x = 274.927, y = 322.119, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39013, gadget_id = 70690001, pos = { x = 2238.126, y = 299.466, z = -1447.620 }, rot = { x = 274.927, y = 322.124, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39014, gadget_id = 70690001, pos = { x = 2237.599, y = 309.429, z = -1446.942 }, rot = { x = 274.927, y = 322.119, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39015, gadget_id = 70690001, pos = { x = 2237.072, y = 319.393, z = -1446.264 }, rot = { x = 276.562, y = 119.223, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39016, gadget_id = 70710126, pos = { x = 2177.263, y = 224.967, z = -1373.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39018, gadget_id = 70690001, pos = { x = 2257.306, y = 323.270, z = -1462.630 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39019, gadget_id = 70690001, pos = { x = 2265.043, y = 322.493, z = -1468.917 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39020, gadget_id = 70690001, pos = { x = 2272.781, y = 321.716, z = -1475.204 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39021, gadget_id = 70690001, pos = { x = 2280.518, y = 320.939, z = -1481.491 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39022, gadget_id = 70690001, pos = { x = 2288.256, y = 320.162, z = -1487.778 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39023, gadget_id = 70690001, pos = { x = 2295.994, y = 319.385, z = -1494.065 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 39024, gadget_id = 70690001, pos = { x = 2303.731, y = 318.608, z = -1500.352 }, rot = { x = 4.456, y = 129.095, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 39002, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2392.282, y = 282.209, z = -1572.087 }, area_id = 1 },
	{ config_id = 39017, shape = RegionShape.SPHERE, radius = 4, pos = { x = 2177.116, y = 224.938, z = -1373.818 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1039002, name = "ENTER_REGION_39002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39002", action = "action_EVENT_ENTER_REGION_39002" },
	{ config_id = 1039017, name = "ENTER_REGION_39017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39017", action = "action_EVENT_ENTER_REGION_39017" }
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
		gadgets = { 39001, 39003, 39005, 39007, 39009, 39010, 39011, 39012, 39013, 39014, 39018, 39020, 39022, 39024 },
		regions = { 39002 },
		triggers = { "ENTER_REGION_39002" },
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
function condition_EVENT_ENTER_REGION_39002(context, evt)
	if evt.param1 ~= 39002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39002(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003039, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39017(context, evt)
	if evt.param1 ~= 39017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end