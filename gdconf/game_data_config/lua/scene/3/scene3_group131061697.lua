-- 基础信息
local base_info = {
	group_id = 131061697
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1697007, monster_id = 28030501, pos = { x = -846.980, y = 108.570, z = 1771.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 1697008, monster_id = 28030501, pos = { x = -853.585, y = 108.570, z = 1768.848 }, rot = { x = 0.000, y = 281.657, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 1697010, monster_id = 28030101, pos = { x = -874.994, y = 150.159, z = 1820.950 }, rot = { x = 0.000, y = 220.663, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 1697015, monster_id = 28020603, pos = { x = -833.285, y = 119.922, z = 1705.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1697003, gadget_id = 70210105, pos = { x = -825.435, y = 97.400, z = 1914.679 }, rot = { x = 0.000, y = 284.782, z = 0.000 }, level = 26, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 1697004, gadget_id = 70210105, pos = { x = -832.861, y = 97.400, z = 1909.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 1697005, gadget_id = 70210105, pos = { x = -853.660, y = 108.570, z = 1775.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 1697006, gadget_id = 70210105, pos = { x = -846.533, y = 108.570, z = 1765.507 }, rot = { x = 0.000, y = 284.232, z = 0.000 }, level = 26, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 1697012, gadget_id = 70210101, pos = { x = -847.454, y = 121.860, z = 1706.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 19 },
	{ config_id = 1697013, gadget_id = 70210101, pos = { x = -835.578, y = 122.574, z = 1692.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 1697014, gadget_id = 70210101, pos = { x = -837.773, y = 122.370, z = 1695.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 }
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
		{ config_id = 1697001, monster_id = 28040102, pos = { x = -823.013, y = 96.891, z = 1917.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 19 },
		{ config_id = 1697002, monster_id = 28040102, pos = { x = -819.159, y = 96.891, z = 1919.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 19 },
		{ config_id = 1697009, monster_id = 28020301, pos = { x = -860.117, y = 124.137, z = 1740.091 }, rot = { x = 0.000, y = 129.457, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
		{ config_id = 1697011, monster_id = 28030101, pos = { x = -877.877, y = 129.168, z = 1775.181 }, rot = { x = 0.000, y = 97.899, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
		{ config_id = 1697016, monster_id = 28020603, pos = { x = -845.706, y = 120.715, z = 1718.110 }, rot = { x = 0.000, y = 43.263, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
		{ config_id = 1697017, monster_id = 28020603, pos = { x = -885.462, y = 159.093, z = 1705.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 }
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
		monsters = { 1697007, 1697008, 1697010, 1697015 },
		gadgets = { 1697003, 1697004, 1697005, 1697006, 1697012, 1697013, 1697014 },
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