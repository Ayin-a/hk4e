-- 基础信息
local base_info = {
	group_id = 133108803
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 803001, monster_id = 28030203, pos = { x = -211.232, y = 327.289, z = -1017.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803002, monster_id = 28030203, pos = { x = -454.100, y = 234.562, z = -809.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803003, monster_id = 28030203, pos = { x = -353.858, y = 248.033, z = -644.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803004, monster_id = 28030203, pos = { x = -80.722, y = 240.946, z = -674.210 }, rot = { x = 0.000, y = 236.776, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803005, monster_id = 28030203, pos = { x = 397.079, y = 231.429, z = -758.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803006, monster_id = 28030203, pos = { x = 181.308, y = 246.689, z = -845.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803014, monster_id = 28020102, pos = { x = -123.891, y = 252.321, z = -73.555 }, rot = { x = 0.000, y = 198.716, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 803015, monster_id = 28020102, pos = { x = -138.572, y = 259.596, z = -9.939 }, rot = { x = 0.000, y = 337.585, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 803016, monster_id = 28030101, pos = { x = -107.848, y = 257.664, z = -221.547 }, rot = { x = 0.000, y = 164.138, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803017, monster_id = 28030101, pos = { x = -109.993, y = 257.695, z = -220.457 }, rot = { x = 0.000, y = 207.377, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803018, monster_id = 28030101, pos = { x = -102.312, y = 259.328, z = -191.976 }, rot = { x = 0.000, y = 107.754, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 803019, monster_id = 28020102, pos = { x = -84.759, y = 263.804, z = -2.078 }, rot = { x = 0.000, y = 98.941, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 803020, monster_id = 28020102, pos = { x = -141.482, y = 259.322, z = -10.332 }, rot = { x = 0.000, y = 6.233, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 803021, monster_id = 28020102, pos = { x = -191.276, y = 256.803, z = -6.252 }, rot = { x = 0.000, y = 198.716, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 }
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
		{ config_id = 803007, monster_id = 28010103, pos = { x = -379.322, y = 201.280, z = -951.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 803008, monster_id = 28010103, pos = { x = -386.589, y = 201.450, z = -956.392 }, rot = { x = 0.000, y = 59.656, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 803009, monster_id = 28010103, pos = { x = -277.989, y = 201.438, z = -876.191 }, rot = { x = 0.000, y = 132.638, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 803010, monster_id = 28010103, pos = { x = -274.042, y = 200.644, z = -853.091 }, rot = { x = 0.000, y = 265.640, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 803011, monster_id = 28010102, pos = { x = -258.585, y = 200.894, z = -845.726 }, rot = { x = 0.000, y = 323.550, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 803012, monster_id = 28010102, pos = { x = -291.684, y = 200.140, z = -839.575 }, rot = { x = 0.000, y = 105.925, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 803013, monster_id = 28010102, pos = { x = -310.074, y = 200.022, z = -784.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 7 }
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
		monsters = { 803001, 803002, 803003, 803004, 803005, 803006, 803014, 803015, 803016, 803017, 803018, 803019, 803020, 803021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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