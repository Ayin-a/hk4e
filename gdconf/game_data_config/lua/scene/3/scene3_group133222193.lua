-- 基础信息
local base_info = {
	group_id = 133222193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 28010105, pos = { x = -4791.362, y = 200.163, z = -4602.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 193002, monster_id = 28010104, pos = { x = -4801.224, y = 200.354, z = -4605.568 }, rot = { x = 0.000, y = 139.388, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 193003, monster_id = 28010201, pos = { x = -4663.943, y = 210.551, z = -4456.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193004, monster_id = 28010201, pos = { x = -4629.190, y = 217.865, z = -4421.184 }, rot = { x = 0.000, y = 220.273, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193005, monster_id = 28010105, pos = { x = -4812.441, y = 200.209, z = -4437.362 }, rot = { x = 0.000, y = 333.894, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193006, monster_id = 28010105, pos = { x = -4810.994, y = 200.077, z = -4455.437 }, rot = { x = 0.000, y = 202.634, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193007, monster_id = 28010105, pos = { x = -4767.885, y = 201.357, z = -4485.218 }, rot = { x = 0.000, y = 88.141, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193008, monster_id = 28010105, pos = { x = -4761.800, y = 200.048, z = -4521.855 }, rot = { x = 0.000, y = 190.362, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193009, monster_id = 28010105, pos = { x = -4738.683, y = 200.815, z = -4517.664 }, rot = { x = 0.000, y = 319.407, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193010, monster_id = 28010105, pos = { x = -4705.992, y = 200.165, z = -4531.182 }, rot = { x = 0.000, y = 289.225, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193013, monster_id = 28050104, pos = { x = -4831.768, y = 209.729, z = -4374.969 }, rot = { x = 0.000, y = 358.043, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193014, monster_id = 28050104, pos = { x = -4846.068, y = 206.823, z = -4355.286 }, rot = { x = 0.000, y = 77.909, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 193015, monster_id = 28050104, pos = { x = -4827.330, y = 211.887, z = -4361.655 }, rot = { x = 0.000, y = 77.334, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 193011, monster_id = 28050104, pos = { x = -4623.646, y = 200.000, z = -4818.282 }, rot = { x = 0.000, y = 14.754, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 14 },
		{ config_id = 193012, monster_id = 28050104, pos = { x = -4626.779, y = 200.000, z = -4816.080 }, rot = { x = 0.000, y = 93.445, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 14 }
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
		monsters = { 193001, 193002, 193003, 193004, 193005, 193006, 193007, 193008, 193009, 193010, 193013, 193014, 193015 },
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