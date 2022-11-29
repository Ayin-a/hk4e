-- 基础信息
local base_info = {
	group_id = 133101904
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904001, monster_id = 21020201, pos = { x = 971.984, y = 300.447, z = 1195.612 }, rot = { x = 354.271, y = 82.700, z = 356.692 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 904002, monster_id = 21010601, pos = { x = 979.210, y = 307.272, z = 1186.770 }, rot = { x = 0.000, y = 359.600, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 904003, monster_id = 21010601, pos = { x = 982.785, y = 306.629, z = 1187.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 904004, monster_id = 21010101, pos = { x = 990.469, y = 300.213, z = 1201.997 }, rot = { x = 0.000, y = 237.030, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 904006, monster_id = 21010101, pos = { x = 991.812, y = 300.568, z = 1197.286 }, rot = { x = 0.000, y = 263.000, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 904005, shape = RegionShape.SPHERE, radius = 5.9, pos = { x = 988.636, y = 300.274, z = 1197.938 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1904005, name = "ENTER_REGION_904005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_904005", action = "action_EVENT_ENTER_REGION_904005" }
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
	suite = 3,
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
		regions = { 904005 },
		triggers = { "ENTER_REGION_904005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 904001, 904002, 904003, 904004, 904006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_904005(context, evt)
	if evt.param1 ~= 904005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_904005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101904, 2)
	
	return 0
end