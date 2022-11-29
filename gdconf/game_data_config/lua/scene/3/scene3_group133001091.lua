-- 基础信息
local base_info = {
	group_id = 133001091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 430, monster_id = 21010201, pos = { x = 1488.975, y = 243.840, z = -1580.117 }, rot = { x = 0.000, y = 144.952, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 431, monster_id = 28020301, pos = { x = 1601.667, y = 247.367, z = -1635.923 }, rot = { x = 0.000, y = 246.345, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 590, monster_id = 28030401, pos = { x = 1601.296, y = 246.737, z = -1628.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 596, monster_id = 28030401, pos = { x = 1565.378, y = 252.081, z = -1639.737 }, rot = { x = 0.000, y = 246.750, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 600, monster_id = 28020201, pos = { x = 1593.575, y = 248.992, z = -1664.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 602, monster_id = 28020201, pos = { x = 1641.016, y = 244.833, z = -1594.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 603, monster_id = 28020201, pos = { x = 1639.640, y = 244.817, z = -1571.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 607, monster_id = 28030401, pos = { x = 1600.871, y = 246.116, z = -1559.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 609, monster_id = 28030401, pos = { x = 1537.442, y = 244.807, z = -1571.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 611, monster_id = 28030401, pos = { x = 1536.179, y = 245.600, z = -1576.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 613, monster_id = 28020201, pos = { x = 1528.657, y = 242.163, z = -1619.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 663, monster_id = 28030401, pos = { x = 1482.259, y = 239.328, z = -1607.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 665, monster_id = 28030401, pos = { x = 1483.681, y = 240.086, z = -1593.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 667, monster_id = 28030401, pos = { x = 1474.690, y = 240.959, z = -1611.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 }
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
		monsters = { 430, 431, 590, 596, 600, 602, 603, 607, 609, 611, 613, 663, 665, 667 },
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