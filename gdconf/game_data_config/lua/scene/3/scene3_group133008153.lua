-- 基础信息
local base_info = {
	group_id = 133008153
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 153001, monster_id = 20010801, pos = { x = 1552.576, y = 269.951, z = -918.051 }, rot = { x = 0.000, y = 334.090, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 153002, monster_id = 20010801, pos = { x = 1554.064, y = 269.471, z = -919.276 }, rot = { x = 0.000, y = 334.090, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 153003, monster_id = 20010801, pos = { x = 1551.093, y = 270.374, z = -919.184 }, rot = { x = 0.000, y = 334.090, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 153004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1552.601, y = 269.901, z = -919.699 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1153004, name = "ENTER_REGION_153004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153004", action = "action_EVENT_ENTER_REGION_153004" }
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
		regions = { 153004 },
		triggers = { "ENTER_REGION_153004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 153001, 153002, 153003 },
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
function condition_EVENT_ENTER_REGION_153004(context, evt)
	if evt.param1 ~= 153004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008153, 2)
	
	return 0
end