-- 基础信息
local base_info = {
	group_id = 133008335
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335001, monster_id = 20010801, pos = { x = 1150.577, y = 272.640, z = -496.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 335002, monster_id = 20010801, pos = { x = 1152.785, y = 272.656, z = -496.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 335003, monster_id = 20010801, pos = { x = 1149.007, y = 272.568, z = -497.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 335004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1150.400, y = 273.433, z = -496.925 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1335004, name = "ENTER_REGION_335004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335004", action = "action_EVENT_ENTER_REGION_335004" }
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
		regions = { 335004 },
		triggers = { "ENTER_REGION_335004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 335001, 335002, 335003 },
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
function condition_EVENT_ENTER_REGION_335004(context, evt)
	if evt.param1 ~= 335004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008335, 2)
	
	return 0
end