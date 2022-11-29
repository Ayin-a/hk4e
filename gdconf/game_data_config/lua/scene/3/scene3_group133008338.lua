-- 基础信息
local base_info = {
	group_id = 133008338
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 338001, monster_id = 28030101, pos = { x = 734.749, y = 200.565, z = -1062.350 }, rot = { x = 0.000, y = 39.364, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 338002, monster_id = 28030101, pos = { x = 579.848, y = 200.599, z = -1133.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 338003, monster_id = 28030101, pos = { x = 585.654, y = 200.800, z = -1206.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 338004, monster_id = 28030204, pos = { x = 587.493, y = 239.991, z = -1148.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 1, area_id = 10 },
	{ config_id = 338005, monster_id = 28030101, pos = { x = 615.625, y = 199.784, z = -1095.047 }, rot = { x = 0.000, y = 39.364, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 338006, monster_id = 28030101, pos = { x = 617.129, y = 199.807, z = -1096.107 }, rot = { x = 0.000, y = 123.199, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 338007, monster_id = 28030101, pos = { x = 546.091, y = 200.958, z = -1155.298 }, rot = { x = 0.000, y = 324.207, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 338008, monster_id = 28030101, pos = { x = 544.170, y = 200.877, z = -1158.120 }, rot = { x = 0.000, y = 262.574, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 2, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 338009, gadget_id = 70220058, pos = { x = 531.911, y = 200.394, z = -1190.707 }, rot = { x = 12.304, y = 0.482, z = 4.467 }, level = 30, area_id = 10 },
	{ config_id = 338010, gadget_id = 70220058, pos = { x = 542.375, y = 200.409, z = -1159.679 }, rot = { x = 9.589, y = 0.893, z = 10.620 }, level = 30, area_id = 10 },
	{ config_id = 338011, gadget_id = 70220060, pos = { x = 532.379, y = 200.445, z = -1189.740 }, rot = { x = 88.484, y = 213.987, z = 180.000 }, level = 30, area_id = 10 }
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
		monsters = { 338001, 338002, 338003, 338004, 338005, 338006, 338007, 338008 },
		gadgets = { 338009, 338010, 338011 },
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