-- 基础信息
local base_info = {
	group_id = 133102292
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 292003, monster_id = 28010203, pos = { x = 1419.627, y = 205.221, z = 295.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 292004, monster_id = 28010202, pos = { x = 1418.342, y = 205.187, z = 295.639 }, rot = { x = 0.000, y = 122.896, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 292005, monster_id = 26060101, pos = { x = 1395.993, y = 201.895, z = 286.464 }, rot = { x = 0.000, y = 115.200, z = 0.000 }, level = 16, drop_tag = "雷萤", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 292001, shape = RegionShape.SPHERE, radius = 1, pos = { x = 1425.482, y = 206.380, z = 294.979 }, area_id = 5 },
	{ config_id = 292002, shape = RegionShape.SPHERE, radius = 1, pos = { x = 1409.280, y = 206.380, z = 304.406 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1292001, name = "ENTER_REGION_292001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292001", action = "action_EVENT_ENTER_REGION_292001" },
	{ config_id = 1292002, name = "ENTER_REGION_292002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292002", action = "action_EVENT_ENTER_REGION_292002" }
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
		regions = { 292001, 292002 },
		triggers = { "ENTER_REGION_292001", "ENTER_REGION_292002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 292003, 292004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 292005 },
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
function condition_EVENT_ENTER_REGION_292001(context, evt)
	if evt.param1 ~= 292001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_292001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102292, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_292002(context, evt)
	if evt.param1 ~= 292002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_292002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102292, 3)
	
	return 0
end