-- 基础信息
local base_info = {
	group_id = 133106481
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 481002, monster_id = 25010201, pos = { x = -630.638, y = 162.195, z = 1990.173 }, rot = { x = 0.000, y = 274.106, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9003, area_id = 19 },
	{ config_id = 481012, monster_id = 28030201, pos = { x = -707.239, y = 229.085, z = 1910.183 }, rot = { x = 0.000, y = 96.909, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 481001, gadget_id = 70290200, pos = { x = -633.730, y = 161.742, z = 1991.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 481004, gadget_id = 70290200, pos = { x = -675.211, y = 185.345, z = 2015.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 481005, gadget_id = 70290200, pos = { x = -642.297, y = 205.070, z = 2018.184 }, rot = { x = 344.521, y = 0.630, z = 355.365 }, level = 36, area_id = 19 },
	{ config_id = 481006, gadget_id = 70690001, pos = { x = -645.454, y = 179.588, z = 1991.808 }, rot = { x = 0.000, y = 263.221, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 481007, gadget_id = 70690001, pos = { x = -656.974, y = 179.791, z = 1989.238 }, rot = { x = 348.521, y = 250.756, z = 2.395 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 481008, gadget_id = 70690001, pos = { x = -668.106, y = 182.239, z = 1983.339 }, rot = { x = 345.097, y = 245.388, z = 3.459 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 481009, gadget_id = 70690001, pos = { x = -677.970, y = 185.183, z = 1977.781 }, rot = { x = 346.536, y = 229.744, z = 7.315 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 481010, gadget_id = 70690010, pos = { x = -686.514, y = 178.368, z = 1966.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 481011, gadget_id = 70690001, pos = { x = -688.296, y = 236.294, z = 1966.692 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 481015, gadget_id = 70290190, pos = { x = -624.172, y = 185.633, z = 2008.426 }, rot = { x = 349.635, y = 12.469, z = 1.591 }, level = 36, area_id = 19 },
	{ config_id = 481016, gadget_id = 70290200, pos = { x = -690.533, y = 240.801, z = 2012.425 }, rot = { x = 343.315, y = 1.023, z = 353.029 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 481003, shape = RegionShape.SPHERE, radius = 13, pos = { x = -634.293, y = 192.843, z = 1990.964 }, area_id = 19 },
	{ config_id = 481013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -682.359, y = 238.400, z = 1998.272 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1481003, name = "ENTER_REGION_481003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_481003", action = "action_EVENT_ENTER_REGION_481003", trigger_count = 0 },
	{ config_id = 1481013, name = "ENTER_REGION_481013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_481013", action = "action_EVENT_ENTER_REGION_481013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 481014, monster_id = 28030201, pos = { x = -710.436, y = 221.294, z = 1886.860 }, rot = { x = 0.000, y = 266.554, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 }
	}
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
		monsters = { 481002, 481012 },
		gadgets = { 481001, 481004, 481005, 481015, 481016 },
		regions = { 481003, 481013 },
		triggers = { "ENTER_REGION_481003", "ENTER_REGION_481013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 481006, 481007, 481008, 481009, 481010, 481011 },
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
function condition_EVENT_ENTER_REGION_481003(context, evt)
	if evt.param1 ~= 481003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_481003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106481, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_481013(context, evt)
	if evt.param1 ~= 481013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_481013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106481, 2)
	
	return 0
end