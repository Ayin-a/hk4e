-- 基础信息
local base_info = {
	group_id = 133106130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 20010201, pos = { x = -212.165, y = 181.680, z = 861.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130002, monster_id = 20010201, pos = { x = -774.134, y = 194.599, z = 1179.232 }, rot = { x = 0.000, y = 89.573, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130003, monster_id = 20010201, pos = { x = -878.742, y = 191.415, z = 792.748 }, rot = { x = 0.000, y = 181.345, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130004, monster_id = 20010101, pos = { x = -217.442, y = 278.184, z = 1337.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130005, monster_id = 20010101, pos = { x = -224.485, y = 281.404, z = 1366.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130007, monster_id = 20010201, pos = { x = -1010.780, y = 222.924, z = 930.289 }, rot = { x = 0.000, y = 233.686, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130008, monster_id = 20010201, pos = { x = -530.522, y = 224.784, z = 1287.882 }, rot = { x = 0.000, y = 91.576, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 101, area_id = 8 },
	{ config_id = 130009, monster_id = 20010201, pos = { x = -619.811, y = 228.969, z = 1461.266 }, rot = { x = 0.000, y = 339.242, z = 0.000 }, level = 36, drop_tag = "大史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130010, monster_id = 20010201, pos = { x = -190.201, y = 328.023, z = 649.561 }, rot = { x = 0.000, y = 87.986, z = 0.000 }, level = 24, drop_tag = "大史莱姆", pose_id = 201, area_id = 7 },
	{ config_id = 130011, monster_id = 20010201, pos = { x = -171.115, y = 300.641, z = 1551.664 }, rot = { x = 0.000, y = 194.450, z = 0.000 }, level = 36, drop_tag = "大史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130012, monster_id = 20010201, pos = { x = -616.506, y = 254.002, z = 635.910 }, rot = { x = 0.000, y = 325.364, z = 0.000 }, level = 24, drop_tag = "大史莱姆", pose_id = 201, area_id = 7 },
	{ config_id = 130013, monster_id = 20010201, pos = { x = -7.243, y = 280.054, z = 775.128 }, rot = { x = 0.000, y = 293.110, z = 0.000 }, level = 24, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130014, monster_id = 20010201, pos = { x = -219.182, y = 280.633, z = 1354.138 }, rot = { x = 0.000, y = 181.345, z = 0.000 }, level = 36, drop_tag = "大史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130015, monster_id = 20010201, pos = { x = -380.715, y = 260.929, z = 1239.164 }, rot = { x = 0.000, y = 176.679, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130016, monster_id = 20010201, pos = { x = -788.639, y = 155.539, z = 1292.590 }, rot = { x = 0.000, y = 306.115, z = 0.000 }, level = 32, drop_tag = "大史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130018, monster_id = 20010101, pos = { x = -916.095, y = 219.033, z = 1624.097 }, rot = { x = 0.000, y = 132.803, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130019, monster_id = 20010101, pos = { x = -70.304, y = 279.145, z = 1445.198 }, rot = { x = 0.000, y = 79.664, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130020, monster_id = 20010101, pos = { x = -1000.036, y = 237.277, z = 1255.423 }, rot = { x = 0.000, y = 346.714, z = 0.000 }, level = 32, drop_tag = "史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130022, monster_id = 20010101, pos = { x = -277.576, y = 186.202, z = 854.762 }, rot = { x = 0.000, y = 354.967, z = 0.000 }, level = 32, drop_tag = "史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130023, monster_id = 20010101, pos = { x = -65.361, y = 260.448, z = 1180.630 }, rot = { x = 0.000, y = 168.120, z = 0.000 }, level = 32, drop_tag = "史莱姆", pose_id = 201, area_id = 6 },
	{ config_id = 130024, monster_id = 20010101, pos = { x = -878.815, y = 200.640, z = 1090.929 }, rot = { x = 0.000, y = 174.765, z = 0.000 }, level = 32, drop_tag = "史莱姆", pose_id = 201, area_id = 8 },
	{ config_id = 130025, monster_id = 20010101, pos = { x = -436.909, y = 233.384, z = 1649.542 }, rot = { x = 0.000, y = 266.898, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 130026, monster_id = 20010101, pos = { x = -693.210, y = 190.210, z = 1013.582 }, rot = { x = 0.000, y = 353.016, z = 0.000 }, level = 32, drop_tag = "史莱姆", pose_id = 201, area_id = 8 }
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
		monsters = { 130001, 130002, 130003, 130004, 130005, 130007, 130008, 130009, 130010, 130011, 130012, 130013, 130014, 130015, 130016, 130018, 130019, 130020, 130022, 130023, 130024, 130025, 130026 },
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