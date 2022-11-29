-- 基础信息
local base_info = {
	group_id = 133217224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 28010301, pos = { x = -4739.178, y = 200.000, z = -4036.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224002, monster_id = 28010301, pos = { x = -4705.389, y = 200.000, z = -4007.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224003, monster_id = 28040101, pos = { x = -4763.893, y = 200.000, z = -4041.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", climate_area_id = 10, area_id = 14 },
	{ config_id = 224004, monster_id = 28040101, pos = { x = -4765.651, y = 200.000, z = -4044.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", climate_area_id = 10, area_id = 14 },
	{ config_id = 224005, monster_id = 28040101, pos = { x = -4767.103, y = 200.000, z = -4041.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", climate_area_id = 10, area_id = 14 },
	{ config_id = 224006, monster_id = 28040102, pos = { x = -4708.126, y = 200.000, z = -3931.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 14 },
	{ config_id = 224007, monster_id = 28040102, pos = { x = -4711.029, y = 200.000, z = -3925.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 14 },
	{ config_id = 224008, monster_id = 28040102, pos = { x = -4711.591, y = 200.000, z = -3929.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 14 },
	{ config_id = 224009, monster_id = 28010105, pos = { x = -4661.418, y = 200.230, z = -3977.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224010, monster_id = 28010105, pos = { x = -4707.035, y = 200.417, z = -4045.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224011, monster_id = 28010105, pos = { x = -4802.888, y = 200.136, z = -4077.429 }, rot = { x = 0.000, y = 287.843, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224012, monster_id = 28010104, pos = { x = -4662.838, y = 200.111, z = -4013.202 }, rot = { x = 0.000, y = 240.907, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224013, monster_id = 28010104, pos = { x = -4627.650, y = 200.000, z = -3982.447 }, rot = { x = 0.000, y = 281.463, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224014, monster_id = 28010104, pos = { x = -4633.955, y = 200.462, z = -4084.942 }, rot = { x = 0.000, y = 358.047, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224015, monster_id = 28010104, pos = { x = -4730.350, y = 200.189, z = -4044.268 }, rot = { x = 0.000, y = 187.471, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 224016, monster_id = 28010104, pos = { x = -4829.325, y = 200.135, z = -3913.243 }, rot = { x = 0.000, y = 100.774, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 224017, monster_id = 28010104, pos = { x = -4776.692, y = 200.222, z = -3915.124 }, rot = { x = 0.000, y = 262.470, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 224018, monster_id = 28010104, pos = { x = -4738.821, y = 200.252, z = -3919.538 }, rot = { x = 0.000, y = 278.103, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 }
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
		monsters = { 224001, 224002, 224003, 224004, 224005, 224006, 224007, 224008, 224009, 224010, 224011, 224012, 224013, 224014, 224015, 224016, 224017, 224018 },
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