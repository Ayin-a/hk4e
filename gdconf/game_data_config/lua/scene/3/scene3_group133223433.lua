-- 基础信息
local base_info = {
	group_id = 133223433
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 433001, monster_id = 20011401, pos = { x = -5918.008, y = 167.156, z = -2768.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 433002, monster_id = 20011401, pos = { x = -5921.486, y = 167.277, z = -2766.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 433003, monster_id = 20011401, pos = { x = -5915.344, y = 166.670, z = -2766.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 433005, monster_id = 20011401, pos = { x = -5918.732, y = 166.736, z = -2765.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 433004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5918.948, y = 166.951, z = -2766.299 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1433004, name = "ENTER_REGION_433004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_433004", action = "action_EVENT_ENTER_REGION_433004" }
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
		regions = { 433004 },
		triggers = { "ENTER_REGION_433004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 433001, 433002, 433003, 433005 },
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
function condition_EVENT_ENTER_REGION_433004(context, evt)
	if evt.param1 ~= 433004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_433004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223433, 2)
	
	return 0
end