-- 基础信息
local base_info = {
	group_id = 133106607
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 607001, monster_id = 20011501, pos = { x = -485.816, y = 278.987, z = 1609.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 607002, monster_id = 20011501, pos = { x = -489.480, y = 276.535, z = 1611.623 }, rot = { x = 0.000, y = 30.429, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 607003, monster_id = 21010401, pos = { x = -483.947, y = 279.843, z = 1619.080 }, rot = { x = 0.000, y = 161.255, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 19 },
	{ config_id = 607004, monster_id = 21010401, pos = { x = -484.899, y = 279.230, z = 1619.261 }, rot = { x = 0.000, y = 222.277, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 607006, gadget_id = 70690001, pos = { x = -481.213, y = 280.870, z = 1624.621 }, rot = { x = 0.000, y = 49.560, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 607007, gadget_id = 70690001, pos = { x = -476.670, y = 280.870, z = 1628.493 }, rot = { x = 345.192, y = 49.560, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 607008, gadget_id = 70690001, pos = { x = -463.962, y = 285.284, z = 1639.323 }, rot = { x = 345.192, y = 49.560, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 607009, gadget_id = 70690001, pos = { x = -460.527, y = 286.477, z = 1642.250 }, rot = { x = 352.460, y = 49.560, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 607010, gadget_id = 70690001, pos = { x = -450.045, y = 288.502, z = 1651.184 }, rot = { x = 342.489, y = 49.560, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 607011, gadget_id = 70690001, pos = { x = -446.968, y = 289.778, z = 1653.807 }, rot = { x = 342.489, y = 49.560, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 607012, gadget_id = 70290200, pos = { x = -500.478, y = 271.990, z = 1583.318 }, rot = { x = 1.249, y = 0.584, z = 30.875 }, level = 36, area_id = 19 },
	{ config_id = 607013, gadget_id = 70290324, pos = { x = -499.489, y = 272.501, z = 1580.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 607014, gadget_id = 70290323, pos = { x = -502.186, y = 270.830, z = 1586.272 }, rot = { x = 0.642, y = 0.197, z = 34.082 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 607005, shape = RegionShape.SPHERE, radius = 7, pos = { x = -485.147, y = 279.925, z = 1616.849 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1607005, name = "ENTER_REGION_607005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_607005", action = "action_EVENT_ENTER_REGION_607005" }
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
		monsters = { 607001, 607002, 607003, 607004 },
		gadgets = { 607012, 607013, 607014 },
		regions = { 607005 },
		triggers = { "ENTER_REGION_607005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 607006, 607007, 607008, 607009, 607010, 607011 },
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
function condition_EVENT_ENTER_REGION_607005(context, evt)
	if evt.param1 ~= 607005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_607005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106607, 2)
	
	return 0
end