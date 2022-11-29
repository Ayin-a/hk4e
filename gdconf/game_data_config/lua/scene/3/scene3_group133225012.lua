-- 基础信息
local base_info = {
	group_id = 133225012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12003, monster_id = 28040101, pos = { x = -6497.993, y = 200.000, z = -2713.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "水族", climate_area_id = 7, area_id = 18 },
	{ config_id = 12004, monster_id = 28040102, pos = { x = -6502.249, y = 200.000, z = -2711.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "水族", climate_area_id = 7, area_id = 18 },
	{ config_id = 12005, monster_id = 28010104, pos = { x = -6527.766, y = 200.000, z = -2620.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "采集动物", climate_area_id = 7, area_id = 18 },
	{ config_id = 12006, monster_id = 28010104, pos = { x = -6519.984, y = 200.046, z = -2613.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "采集动物", climate_area_id = 7, area_id = 18 },
	{ config_id = 12007, monster_id = 28010104, pos = { x = -6520.195, y = 200.000, z = -2626.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "采集动物", climate_area_id = 7, area_id = 18 },
	{ config_id = 12008, monster_id = 28010104, pos = { x = -6524.459, y = 200.000, z = -2585.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "采集动物", climate_area_id = 7, area_id = 18 },
	{ config_id = 12009, monster_id = 28010105, pos = { x = -6524.095, y = 200.000, z = -2593.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "采集动物", climate_area_id = 7, area_id = 18 },
	{ config_id = 12014, monster_id = 28040101, pos = { x = -6509.035, y = 200.000, z = -2625.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "水族", climate_area_id = 7, area_id = 18 },
	{ config_id = 12015, monster_id = 28040103, pos = { x = -6511.877, y = 200.000, z = -2626.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "水族", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { 12003, 12004, 12005, 12006, 12007, 12008, 12009, 12014, 12015 },
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