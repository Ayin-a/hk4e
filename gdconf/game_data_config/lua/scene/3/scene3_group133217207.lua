-- 基础信息
local base_info = {
	group_id = 133217207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207001, monster_id = 20060201, pos = { x = -4899.153, y = 203.999, z = -4021.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 207002, monster_id = 20060201, pos = { x = -4894.646, y = 202.106, z = -4030.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 207003, monster_id = 20060101, pos = { x = -4899.273, y = 201.138, z = -3972.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 207004, monster_id = 20060101, pos = { x = -4925.656, y = 200.000, z = -4187.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 207005, monster_id = 20060101, pos = { x = -4906.806, y = 200.005, z = -4153.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 207006, monster_id = 20060101, pos = { x = -4888.728, y = 200.000, z = -4128.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 207007, monster_id = 20060101, pos = { x = -4932.445, y = 200.619, z = -4035.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 207008, monster_id = 20060101, pos = { x = -4925.931, y = 200.584, z = -4013.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 207009, monster_id = 20060101, pos = { x = -4915.808, y = 201.098, z = -3991.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 207010, monster_id = 20060201, pos = { x = -4810.035, y = 200.075, z = -3911.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 207011, monster_id = 20060201, pos = { x = -4880.045, y = 202.766, z = -4026.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 }
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
		monsters = { 207001, 207002, 207003, 207004, 207005, 207006, 207007, 207008, 207009, 207010, 207011 },
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