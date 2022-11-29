-- 基础信息
local base_info = {
	group_id = 133220500
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500001, monster_id = 28050104, pos = { x = -2546.996, y = 150.718, z = -4403.406 }, rot = { x = 0.000, y = 162.811, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500002, monster_id = 28050104, pos = { x = -2544.912, y = 144.601, z = -4406.636 }, rot = { x = 0.000, y = 162.811, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500003, monster_id = 28050104, pos = { x = -2549.646, y = 148.863, z = -4397.842 }, rot = { x = 0.000, y = 219.512, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500004, monster_id = 28050104, pos = { x = -2544.130, y = 147.526, z = -4404.403 }, rot = { x = 0.000, y = 27.416, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500005, monster_id = 28050104, pos = { x = -2542.413, y = 155.924, z = -4400.535 }, rot = { x = 0.000, y = 162.811, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500006, monster_id = 28050104, pos = { x = -2549.784, y = 147.629, z = -4402.934 }, rot = { x = 0.000, y = 124.812, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500014, monster_id = 28050104, pos = { x = -2551.572, y = 149.685, z = -4405.076 }, rot = { x = 0.000, y = 299.871, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500015, monster_id = 28050104, pos = { x = -2547.660, y = 147.230, z = -4406.417 }, rot = { x = 0.000, y = 71.375, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 },
	{ config_id = 500016, monster_id = 28050104, pos = { x = -2544.922, y = 151.820, z = -4409.795 }, rot = { x = 0.000, y = 162.811, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 6, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 500007, gadget_id = 70500000, pos = { x = -2537.662, y = 142.153, z = -4423.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 500008, gadget_id = 70500000, pos = { x = -2550.598, y = 141.616, z = -4417.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 500009, gadget_id = 70500000, pos = { x = -2524.326, y = 143.312, z = -4373.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 500010, gadget_id = 70500000, pos = { x = -2519.875, y = 142.035, z = -4392.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 500011, gadget_id = 70500000, pos = { x = -2514.908, y = 142.943, z = -4384.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 500012, gadget_id = 70500000, pos = { x = -2561.990, y = 145.927, z = -4416.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 500013, gadget_id = 70500000, pos = { x = -2565.549, y = 150.791, z = -4374.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 500001, 500002, 500003, 500004, 500005, 500006, 500014, 500015, 500016 },
		gadgets = { 500007, 500008, 500009, 500010, 500011, 500012, 500013 },
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