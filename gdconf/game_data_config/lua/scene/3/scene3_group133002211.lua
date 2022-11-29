-- 基础信息
local base_info = {
	group_id = 133002211
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 644, monster_id = 28020301, pos = { x = 1662.730, y = 209.884, z = -495.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 645, monster_id = 28020301, pos = { x = 1613.479, y = 203.716, z = -445.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 646, monster_id = 28020301, pos = { x = 1843.695, y = 247.678, z = -671.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 647, monster_id = 28020301, pos = { x = 1835.077, y = 247.826, z = -687.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 648, monster_id = 28020301, pos = { x = 1965.336, y = 207.058, z = -757.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 649, monster_id = 28020301, pos = { x = 1982.356, y = 208.730, z = -772.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 650, monster_id = 28020301, pos = { x = 1908.103, y = 209.413, z = -768.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 651, monster_id = 28020301, pos = { x = 1920.573, y = 210.493, z = -802.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 710, monster_id = 28020201, pos = { x = 1750.290, y = 259.494, z = -844.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 711, monster_id = 28020201, pos = { x = 1779.458, y = 250.553, z = -807.596 }, rot = { x = 0.000, y = 217.974, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 716, monster_id = 28020201, pos = { x = 1873.245, y = 244.384, z = -457.239 }, rot = { x = 0.000, y = 217.974, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 717, monster_id = 28020201, pos = { x = 2024.062, y = 247.755, z = -485.439 }, rot = { x = 0.000, y = 217.974, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 718, monster_id = 28020201, pos = { x = 2008.152, y = 217.034, z = -754.349 }, rot = { x = 0.000, y = 217.974, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 719, monster_id = 28020201, pos = { x = 1875.828, y = 234.872, z = -686.838 }, rot = { x = 0.000, y = 217.974, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 720, monster_id = 28020201, pos = { x = 1915.850, y = 245.902, z = -417.742 }, rot = { x = 0.000, y = 217.974, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 741, monster_id = 28020102, pos = { x = 1999.156, y = 229.767, z = -658.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 777, monster_id = 20011301, pos = { x = 2018.202, y = 245.475, z = -582.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 778, monster_id = 28020102, pos = { x = 2014.476, y = 244.114, z = -518.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 779, monster_id = 28020102, pos = { x = 2000.911, y = 251.874, z = -406.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 }
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
		monsters = { 644, 645, 646, 647, 648, 649, 650, 651, 710, 711, 716, 717, 718, 719, 720, 741, 777, 778, 779 },
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