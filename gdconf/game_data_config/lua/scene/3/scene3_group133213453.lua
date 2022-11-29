-- 基础信息
local base_info = {
	group_id = 133213453
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 453001, monster_id = 20010601, pos = { x = -3656.895, y = 202.654, z = -3105.614 }, rot = { x = 0.000, y = 206.984, z = 0.000 }, level = 28, drop_tag = "大史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 453002, monster_id = 20010501, pos = { x = -3656.276, y = 201.341, z = -3109.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 453003, monster_id = 20010801, pos = { x = -3659.247, y = 201.341, z = -3109.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "史莱姆", climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 453004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3657.774, y = 201.341, z = -3109.593 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1453004, name = "ENTER_REGION_453004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_453004", action = "action_EVENT_ENTER_REGION_453004" }
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
		regions = { 453004 },
		triggers = { "ENTER_REGION_453004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 453001, 453002, 453003 },
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
function condition_EVENT_ENTER_REGION_453004(context, evt)
	if evt.param1 ~= 453004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_453004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213453, 2)
	
	return 0
end