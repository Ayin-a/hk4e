-- 基础信息
local base_info = {
	group_id = 133225125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 20010501, pos = { x = -6145.355, y = 200.000, z = -2763.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 125002, monster_id = 20010501, pos = { x = -6137.056, y = 200.230, z = -2762.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 125003, monster_id = 20010601, pos = { x = -6141.757, y = 200.000, z = -2763.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 125005, monster_id = 20010501, pos = { x = -6139.846, y = 200.000, z = -2765.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 125004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6143.320, y = 200.000, z = -2762.598 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1125004, name = "ENTER_REGION_125004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_125004", action = "action_EVENT_ENTER_REGION_125004" }
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
		regions = { 125004 },
		triggers = { "ENTER_REGION_125004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 125001, 125002, 125003, 125005 },
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
function condition_EVENT_ENTER_REGION_125004(context, evt)
	if evt.param1 ~= 125004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_125004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225125, 2)
	
	return 0
end