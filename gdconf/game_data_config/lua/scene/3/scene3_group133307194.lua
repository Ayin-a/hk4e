-- 基础信息
local base_info = {
	group_id = 133307194
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 赤王陵北
	{ config_id = 194001, shape = RegionShape.SPHERE, radius = 300, pos = { x = -1918.697, y = 148.700, z = 5876.967 }, area_id = 27, vision_type_list = { 33070004 } },
	-- 阿凡苗圃
	{ config_id = 194002, shape = RegionShape.SPHERE, radius = 300, pos = { x = -1801.812, y = 326.307, z = 4111.969 }, area_id = 26, vision_type_list = { 33080023 } },
	-- 死域苗圃
	{ config_id = 194003, shape = RegionShape.SPHERE, radius = 300, pos = { x = -1830.450, y = 213.525, z = 4629.090 }, area_id = 26, vision_type_list = { 33080024 } },
	-- 流沙坑
	{ config_id = 194004, shape = RegionShape.SPHERE, radius = 300, pos = { x = -2419.728, y = 184.800, z = 4550.072 }, area_id = 26, vision_type_list = { 33100017 } },
	-- 阿里巴巴
	{ config_id = 194005, shape = RegionShape.SPHERE, radius = 300, pos = { x = -2942.642, y = 297.842, z = 4734.512 }, area_id = 28, vision_type_list = { 33100018 } }
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
		regions = { 194001, 194002, 194003, 194004, 194005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================