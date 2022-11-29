-- 基础信息
local base_info = {
	group_id = 133001044
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
	{ config_id = 44001, gadget_id = 70690011, pos = { x = 1574.726, y = 265.456, z = -1474.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 44002, gadget_id = 70690001, pos = { x = 1585.208, y = 290.342, z = -1472.066 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44003, gadget_id = 70690001, pos = { x = 1595.155, y = 289.461, z = -1471.531 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44004, gadget_id = 70690001, pos = { x = 1605.101, y = 288.582, z = -1470.995 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44005, gadget_id = 70690001, pos = { x = 1615.047, y = 287.701, z = -1470.459 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44006, gadget_id = 70690001, pos = { x = 1624.995, y = 286.821, z = -1469.923 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44007, gadget_id = 70690001, pos = { x = 1715.326, y = 275.738, z = -1476.328 }, rot = { x = 45.499, y = 170.813, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44008, gadget_id = 70690001, pos = { x = 1657.022, y = 283.012, z = -1468.198 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44009, gadget_id = 70690001, pos = { x = 1714.917, y = 275.217, z = -1476.845 }, rot = { x = 359.277, y = 178.553, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44010, gadget_id = 70690001, pos = { x = 1715.169, y = 275.343, z = -1486.841 }, rot = { x = 359.277, y = 178.553, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44011, gadget_id = 70710126, pos = { x = 1574.814, y = 267.475, z = -1474.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44013, gadget_id = 70690001, pos = { x = 1666.967, y = 282.132, z = -1467.663 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44014, gadget_id = 70690001, pos = { x = 1676.914, y = 281.252, z = -1467.127 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44015, gadget_id = 70690001, pos = { x = 1686.862, y = 280.372, z = -1466.591 }, rot = { x = 5.049, y = 86.917, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44016, gadget_id = 70690001, pos = { x = 1716.109, y = 270.745, z = -1481.171 }, rot = { x = 45.499, y = 170.812, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44017, gadget_id = 70690001, pos = { x = 1716.893, y = 265.753, z = -1486.015 }, rot = { x = 45.499, y = 170.813, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44018, gadget_id = 70690001, pos = { x = 1717.676, y = 260.760, z = -1490.858 }, rot = { x = 45.499, y = 170.813, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44019, gadget_id = 70690001, pos = { x = 1718.460, y = 255.767, z = -1495.702 }, rot = { x = 45.499, y = 170.813, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 44021, gadget_id = 70690001, pos = { x = 1719.243, y = 250.775, z = -1500.545 }, rot = { x = 45.499, y = 170.813, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 44012, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1574.689, y = 267.482, z = -1474.603 }, area_id = 2 },
	{ config_id = 44020, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1733.140, y = 194.682, z = -1526.196 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1044012, name = "ENTER_REGION_44012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44012", action = "action_EVENT_ENTER_REGION_44012" },
	{ config_id = 1044020, name = "ENTER_REGION_44020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44020", action = "action_EVENT_ENTER_REGION_44020" }
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
		gadgets = { 44001, 44002, 44003, 44004, 44005, 44006, 44007, 44008, 44013, 44014, 44015, 44016, 44017, 44018, 44019, 44021 },
		regions = { 44020 },
		triggers = { "ENTER_REGION_44020" },
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
function condition_EVENT_ENTER_REGION_44012(context, evt)
	if evt.param1 ~= 44012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44020(context, evt)
	if evt.param1 ~= 44020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44020(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001044, 1)
	
	return 0
end