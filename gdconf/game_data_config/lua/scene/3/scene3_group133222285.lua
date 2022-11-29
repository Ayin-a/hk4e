-- 基础信息
local base_info = {
	group_id = 133222285
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 285001, monster_id = 20011401, pos = { x = -4649.527, y = 120.167, z = -4276.838 }, rot = { x = 0.000, y = 173.192, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 285002, monster_id = 20011401, pos = { x = -4649.395, y = 120.108, z = -4279.855 }, rot = { x = 0.000, y = 5.752, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 285004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4648.469, y = 120.169, z = -4278.552 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1285004, name = "ENTER_REGION_285004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_285004", action = "action_EVENT_ENTER_REGION_285004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 285003, monster_id = 20011401, pos = { x = -4649.300, y = 120.105, z = -4281.568 }, rot = { x = 0.000, y = 333.027, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
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
		monsters = { },
		gadgets = { },
		regions = { 285004 },
		triggers = { "ENTER_REGION_285004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 285001, 285002 },
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
function condition_EVENT_ENTER_REGION_285004(context, evt)
	if evt.param1 ~= 285004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_285004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222285, 2)
	
	return 0
end