-- 基础信息
local base_info = {
	group_id = 133103082
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
	{ config_id = 82002, gadget_id = 70310013, pos = { x = 871.975, y = 398.926, z = 1429.208 }, rot = { x = 0.000, y = 223.257, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 82003, gadget_id = 70690006, pos = { x = 870.888, y = 400.565, z = 1429.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 82001, shape = RegionShape.SPHERE, radius = 4, pos = { x = 866.813, y = 400.635, z = 1431.186 }, area_id = 6 },
	{ config_id = 82004, shape = RegionShape.SPHERE, radius = 2, pos = { x = 872.061, y = 399.613, z = 1429.377 }, area_id = 6 },
	{ config_id = 82005, shape = RegionShape.SPHERE, radius = 4, pos = { x = 872.648, y = 427.618, z = 1428.559 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1082001, name = "ENTER_REGION_82001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82001", action = "action_EVENT_ENTER_REGION_82001", trigger_count = 0 },
	{ config_id = 1082004, name = "ENTER_REGION_82004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82004", action = "action_EVENT_ENTER_REGION_82004", trigger_count = 0 },
	{ config_id = 1082005, name = "ENTER_REGION_82005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82005", action = "action_EVENT_ENTER_REGION_82005", trigger_count = 0 }
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
		gadgets = { },
		regions = { 82001, 82004, 82005 },
		triggers = { "ENTER_REGION_82001", "ENTER_REGION_82004", "ENTER_REGION_82005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 82002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 82003 },
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
function condition_EVENT_ENTER_REGION_82001(context, evt)
	if evt.param1 ~= 82001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103082, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82004(context, evt)
	if evt.param1 ~= 82004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103082, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82005(context, evt)
	if evt.param1 ~= 82005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103082, 2)
	
	return 0
end