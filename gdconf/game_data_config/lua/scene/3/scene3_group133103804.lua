-- 基础信息
local base_info = {
	group_id = 133103804
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 804001, monster_id = 28030101, pos = { x = 915.613, y = 231.387, z = 1702.816 }, rot = { x = 0.000, y = 225.444, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804002, monster_id = 28020102, pos = { x = 973.013, y = 306.808, z = 1253.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804003, monster_id = 28020102, pos = { x = 980.780, y = 307.638, z = 1241.107 }, rot = { x = 0.000, y = 286.100, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804005, monster_id = 28030101, pos = { x = 951.275, y = 231.266, z = 1697.425 }, rot = { x = 0.000, y = 62.857, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804009, monster_id = 28030101, pos = { x = 876.900, y = 230.700, z = 1759.962 }, rot = { x = 0.000, y = 63.334, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804010, monster_id = 28030101, pos = { x = 875.607, y = 230.700, z = 1796.458 }, rot = { x = 0.000, y = 284.084, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804011, monster_id = 28030101, pos = { x = 888.930, y = 239.858, z = 1795.916 }, rot = { x = 0.000, y = 348.887, z = 0.000 }, level = 24, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 804016, monster_id = 28030101, pos = { x = 886.218, y = 247.951, z = 1807.201 }, rot = { x = 0.000, y = 295.475, z = 0.000 }, level = 24, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 804017, monster_id = 28030101, pos = { x = 888.323, y = 232.519, z = 1805.760 }, rot = { x = 0.000, y = 227.768, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804018, monster_id = 28030101, pos = { x = 955.115, y = 351.671, z = 1742.793 }, rot = { x = 0.000, y = 56.372, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804019, monster_id = 28030101, pos = { x = 900.708, y = 231.791, z = 1816.246 }, rot = { x = 0.000, y = 59.547, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804020, monster_id = 28030101, pos = { x = 870.923, y = 233.219, z = 1819.628 }, rot = { x = 0.000, y = 133.254, z = 0.000 }, level = 24, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 804021, monster_id = 28030204, pos = { x = 834.515, y = 488.768, z = 1426.290 }, rot = { x = 0.000, y = 139.487, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804023, monster_id = 28030202, pos = { x = 949.780, y = 385.681, z = 1646.604 }, rot = { x = 0.000, y = 354.933, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804024, monster_id = 28030202, pos = { x = 888.798, y = 374.937, z = 1661.540 }, rot = { x = 0.000, y = 124.698, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804026, monster_id = 28030101, pos = { x = 543.476, y = 231.960, z = 1725.802 }, rot = { x = 0.000, y = 133.254, z = 0.000 }, level = 24, drop_tag = "鸟类", disableWander = true, pose_id = 901, area_id = 6 },
	{ config_id = 804032, monster_id = 28030101, pos = { x = 672.353, y = 411.000, z = 1857.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804033, monster_id = 28030101, pos = { x = 676.187, y = 411.000, z = 1860.213 }, rot = { x = 0.000, y = 300.984, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804034, monster_id = 28030101, pos = { x = 680.926, y = 411.000, z = 1847.847 }, rot = { x = 0.000, y = 75.417, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804035, monster_id = 28030101, pos = { x = 557.399, y = 275.782, z = 1741.342 }, rot = { x = 0.000, y = 178.828, z = 0.000 }, level = 24, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 804036, monster_id = 28030101, pos = { x = 682.881, y = 291.043, z = 1714.219 }, rot = { x = 0.000, y = 178.263, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804037, monster_id = 28020102, pos = { x = 574.359, y = 182.121, z = 1157.837 }, rot = { x = 0.000, y = 132.110, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804038, monster_id = 28020102, pos = { x = 531.715, y = 177.921, z = 1139.858 }, rot = { x = 0.000, y = 185.760, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804039, monster_id = 28030101, pos = { x = 629.625, y = 187.442, z = 1206.937 }, rot = { x = 0.000, y = 336.011, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804040, monster_id = 28030101, pos = { x = 632.445, y = 187.784, z = 1208.180 }, rot = { x = 0.000, y = 299.443, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 804043, monster_id = 28020301, pos = { x = 711.909, y = 221.701, z = 1339.260 }, rot = { x = 0.000, y = 132.797, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804047, monster_id = 28020301, pos = { x = 660.789, y = 212.589, z = 1325.487 }, rot = { x = 0.000, y = 353.390, z = 0.000 }, level = 24, drop_tag = "走兽", disableWander = true, area_id = 6 },
	{ config_id = 804048, monster_id = 28030101, pos = { x = 707.632, y = 166.906, z = 1158.806 }, rot = { x = 0.000, y = 292.771, z = 0.000 }, level = 24, drop_tag = "鸟类", disableWander = true, area_id = 6 },
	{ config_id = 804049, monster_id = 28020301, pos = { x = 803.031, y = 217.263, z = 1231.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804050, monster_id = 28020301, pos = { x = 797.257, y = 217.721, z = 1238.916 }, rot = { x = 0.000, y = 204.942, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804054, monster_id = 28020102, pos = { x = 934.919, y = 255.421, z = 1233.972 }, rot = { x = 0.000, y = 346.578, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804056, monster_id = 28020301, pos = { x = 954.173, y = 270.201, z = 1310.509 }, rot = { x = 0.000, y = 52.416, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804059, monster_id = 28020102, pos = { x = 783.152, y = 275.507, z = 1366.410 }, rot = { x = 0.000, y = 287.897, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804060, monster_id = 28020301, pos = { x = 818.358, y = 316.645, z = 1391.493 }, rot = { x = 0.000, y = 340.803, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 804065, monster_id = 28020102, pos = { x = 545.542, y = 191.384, z = 1016.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 }
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
		{ config_id = 804004, monster_id = 28010202, pos = { x = 962.844, y = 306.670, z = 1248.477 }, rot = { x = 0.000, y = 63.260, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 804006, monster_id = 28010202, pos = { x = 994.353, y = 307.238, z = 1244.854 }, rot = { x = 0.000, y = 323.780, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 804007, monster_id = 28010202, pos = { x = 971.934, y = 307.568, z = 1237.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 804027, monster_id = 28040102, pos = { x = 538.167, y = 230.700, z = 1722.158 }, rot = { x = 0.000, y = 229.269, z = 0.000 }, level = 24, drop_tag = "水族", area_id = 6 },
		{ config_id = 804029, monster_id = 28040102, pos = { x = 548.902, y = 230.700, z = 1728.030 }, rot = { x = 0.000, y = 59.891, z = 0.000 }, level = 24, drop_tag = "水族", area_id = 6 },
		{ config_id = 804031, monster_id = 28040102, pos = { x = 547.143, y = 230.700, z = 1730.745 }, rot = { x = 0.000, y = 80.752, z = 0.000 }, level = 24, drop_tag = "水族", area_id = 6 },
		{ config_id = 804042, monster_id = 28010202, pos = { x = 760.901, y = 230.669, z = 1293.683 }, rot = { x = 0.000, y = 324.946, z = 0.000 }, level = 24, drop_tag = "采集动物", disableWander = true, area_id = 6 },
		{ config_id = 804062, monster_id = 28050102, pos = { x = 755.227, y = 325.203, z = 1473.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
		{ config_id = 804063, monster_id = 28050102, pos = { x = 840.934, y = 340.230, z = 1495.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
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
		monsters = { 804001, 804002, 804003, 804005, 804009, 804010, 804011, 804016, 804017, 804018, 804019, 804020, 804021, 804023, 804024, 804026, 804032, 804033, 804034, 804035, 804036, 804037, 804038, 804039, 804040, 804043, 804047, 804048, 804049, 804050, 804054, 804056, 804059, 804060, 804065 },
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