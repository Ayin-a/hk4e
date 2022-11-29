-- 基础信息
local base_info = {
	group_id = 133223166
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 166001, monster_id = 26010301, pos = { x = -6036.223, y = 200.671, z = -2402.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "骗骗花", climate_area_id = 7, area_id = 18 },
	{ config_id = 166002, monster_id = 20010501, pos = { x = -6032.729, y = 200.664, z = -2400.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 166003, monster_id = 20010501, pos = { x = -6035.456, y = 200.610, z = -2407.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 166005, monster_id = 20010501, pos = { x = -6027.951, y = 201.324, z = -2406.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 166004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6033.776, y = 200.514, z = -2404.325 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1166004, name = "ENTER_REGION_166004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_166004", action = "action_EVENT_ENTER_REGION_166004" }
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
		monsters = { 166002, 166003, 166005 },
		gadgets = { },
		regions = { 166004 },
		triggers = { "ENTER_REGION_166004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 166001 },
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
function condition_EVENT_ENTER_REGION_166004(context, evt)
	if evt.param1 ~= 166004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_166004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223166, 2)
	
	return 0
end