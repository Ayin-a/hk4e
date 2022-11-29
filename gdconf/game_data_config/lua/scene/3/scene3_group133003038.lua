-- 基础信息
local base_info = {
	group_id = 133003038
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
	{ config_id = 38001, gadget_id = 70690011, pos = { x = 1904.319, y = 196.068, z = -1457.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 38003, gadget_id = 70690001, pos = { x = 1917.599, y = 221.861, z = -1456.054 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38004, gadget_id = 70690001, pos = { x = 1927.220, y = 222.813, z = -1453.501 }, rot = { x = 354.538, y = 75.142, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38005, gadget_id = 70690001, pos = { x = 1936.842, y = 223.765, z = -1450.949 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38006, gadget_id = 70690001, pos = { x = 1946.464, y = 224.716, z = -1448.396 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38007, gadget_id = 70690001, pos = { x = 1956.085, y = 225.668, z = -1445.843 }, rot = { x = 354.538, y = 75.142, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38008, gadget_id = 70690001, pos = { x = 1965.707, y = 226.620, z = -1443.291 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38009, gadget_id = 70690001, pos = { x = 1995.937, y = 226.050, z = -1435.270 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 38010, gadget_id = 70690001, pos = { x = 2005.559, y = 227.001, z = -1432.717 }, rot = { x = 354.538, y = 75.142, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 38011, gadget_id = 70690001, pos = { x = 2015.181, y = 227.953, z = -1430.165 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 38012, gadget_id = 70690001, pos = { x = 2024.803, y = 228.905, z = -1427.612 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 38013, gadget_id = 70690001, pos = { x = 2034.424, y = 229.857, z = -1425.059 }, rot = { x = 354.538, y = 75.142, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 38014, gadget_id = 70690001, pos = { x = 2044.046, y = 230.809, z = -1422.507 }, rot = { x = 354.538, y = 75.141, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 38015, gadget_id = 70710126, pos = { x = 1904.061, y = 197.129, z = -1457.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 38017, gadget_id = 70690011, pos = { x = 1983.708, y = 201.272, z = -1442.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 38002, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2151.690, y = 222.128, z = -1369.788 }, area_id = 1 },
	{ config_id = 38016, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1904.157, y = 197.112, z = -1457.724 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1038002, name = "ENTER_REGION_38002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38002", action = "action_EVENT_ENTER_REGION_38002" },
	{ config_id = 1038016, name = "ENTER_REGION_38016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38016", action = "action_EVENT_ENTER_REGION_38016" }
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
		gadgets = { 38001, 38003, 38004, 38005, 38006, 38007, 38008, 38009, 38010, 38011, 38012, 38013, 38014, 38017 },
		regions = { 38002 },
		triggers = { "ENTER_REGION_38002" },
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
function condition_EVENT_ENTER_REGION_38002(context, evt)
	if evt.param1 ~= 38002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38002(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003038, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_38016(context, evt)
	if evt.param1 ~= 38016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end