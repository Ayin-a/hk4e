-- 基础信息
local base_info = {
	group_id = 133222291
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291002, monster_id = 28050104, pos = { x = -4654.973, y = 101.658, z = -4254.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291005, monster_id = 28050104, pos = { x = -4665.985, y = 102.367, z = -4267.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291006, monster_id = 28050104, pos = { x = -4661.455, y = 101.558, z = -4255.247 }, rot = { x = 0.000, y = 232.690, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291007, monster_id = 28050104, pos = { x = -4669.854, y = 102.304, z = -4263.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291008, monster_id = 28050104, pos = { x = -4694.314, y = 152.714, z = -4273.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291010, monster_id = 28050104, pos = { x = -4639.476, y = 141.608, z = -4228.111 }, rot = { x = 0.000, y = 227.162, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291012, monster_id = 28050104, pos = { x = -4643.726, y = 141.485, z = -4225.634 }, rot = { x = 0.000, y = 117.128, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291014, monster_id = 28050104, pos = { x = -4680.200, y = 152.154, z = -4276.940 }, rot = { x = 0.000, y = 338.734, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291016, monster_id = 28050104, pos = { x = -4688.544, y = 125.675, z = -4258.642 }, rot = { x = 0.000, y = 203.139, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 291017, monster_id = 28050104, pos = { x = -4689.085, y = 154.097, z = -4224.653 }, rot = { x = 0.000, y = 102.854, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 }
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
		{ config_id = 291001, monster_id = 28050104, pos = { x = -4654.212, y = 105.477, z = -4248.694 }, rot = { x = 0.000, y = 206.766, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
		{ config_id = 291003, monster_id = 28050104, pos = { x = -4667.161, y = 102.873, z = -4250.414 }, rot = { x = 0.000, y = 110.245, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
		{ config_id = 291004, monster_id = 28050104, pos = { x = -4674.986, y = 102.347, z = -4263.668 }, rot = { x = 0.000, y = 52.437, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
		{ config_id = 291009, monster_id = 28050104, pos = { x = -4694.557, y = 151.440, z = -4271.026 }, rot = { x = 0.000, y = 80.653, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
		{ config_id = 291011, monster_id = 28050104, pos = { x = -4642.259, y = 141.592, z = -4223.967 }, rot = { x = 0.000, y = 122.427, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
		{ config_id = 291013, monster_id = 28050104, pos = { x = -4683.903, y = 152.151, z = -4276.567 }, rot = { x = 0.000, y = 289.558, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
		{ config_id = 291015, monster_id = 28050104, pos = { x = -4691.346, y = 125.913, z = -4257.649 }, rot = { x = 0.000, y = 81.832, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 }
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
		monsters = { 291002, 291005, 291006, 291007, 291008, 291010, 291012, 291014, 291016, 291017 },
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