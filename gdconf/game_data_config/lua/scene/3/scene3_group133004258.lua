-- 基础信息
local base_info = {
	group_id = 133004258
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 673, monster_id = 28020504, pos = { x = 2238.205, y = 217.007, z = -873.465 }, rot = { x = 0.000, y = 61.769, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
	{ config_id = 674, monster_id = 28020504, pos = { x = 2238.730, y = 220.307, z = -873.233 }, rot = { x = 0.000, y = 10.474, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
	{ config_id = 675, monster_id = 28020506, pos = { x = 2285.639, y = 215.998, z = -914.053 }, rot = { x = 0.000, y = 277.597, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
	{ config_id = 676, monster_id = 28020504, pos = { x = 2305.351, y = 214.092, z = -933.210 }, rot = { x = 0.000, y = 260.844, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
	{ config_id = 678, monster_id = 28020506, pos = { x = 2314.397, y = 250.166, z = -693.219 }, rot = { x = 0.000, y = 179.075, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 12, area_id = 1 },
	{ config_id = 745, monster_id = 28020504, pos = { x = 2204.481, y = 230.219, z = -787.402 }, rot = { x = 0.000, y = 168.740, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
	{ config_id = 746, monster_id = 28020504, pos = { x = 2352.290, y = 224.093, z = -831.413 }, rot = { x = 0.000, y = 119.128, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
	{ config_id = 748, monster_id = 28020506, pos = { x = 2186.221, y = 210.090, z = -879.023 }, rot = { x = 0.000, y = 83.600, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 12, area_id = 1 },
	{ config_id = 750, monster_id = 28020506, pos = { x = 2291.241, y = 238.897, z = -842.551 }, rot = { x = 0.000, y = 212.225, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 12, area_id = 1 },
	{ config_id = 751, monster_id = 28020506, pos = { x = 2304.236, y = 214.866, z = -918.573 }, rot = { x = 0.000, y = 251.189, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 12, area_id = 1 },
	{ config_id = 752, monster_id = 28020504, pos = { x = 2254.797, y = 212.190, z = -941.774 }, rot = { x = 0.000, y = 347.411, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 12, area_id = 1 },
	{ config_id = 753, monster_id = 28020504, pos = { x = 2292.278, y = 230.083, z = -843.365 }, rot = { x = 0.000, y = 176.633, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 }
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
		{ config_id = 677, monster_id = 28020503, pos = { x = 2236.453, y = 214.090, z = -904.345 }, rot = { x = 0.000, y = 40.800, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 1 },
		{ config_id = 747, monster_id = 28020504, pos = { x = 2229.500, y = 216.068, z = -899.359 }, rot = { x = 0.000, y = 91.602, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 },
		{ config_id = 749, monster_id = 28020506, pos = { x = 2234.604, y = 214.120, z = -901.932 }, rot = { x = 0.000, y = 265.620, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 13, area_id = 1 }
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
	rand_suite = true
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
		monsters = { 673, 674, 678, 745, 746 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 748, 750, 751 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 675, 676, 752, 753 },
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