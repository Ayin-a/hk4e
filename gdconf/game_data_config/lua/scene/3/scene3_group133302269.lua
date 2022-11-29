-- 基础信息
local base_info = {
	group_id = 133302269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 28010304, pos = { x = -826.464, y = 132.738, z = 2365.492 }, rot = { x = 0.000, y = 295.112, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 269002, monster_id = 28020314, pos = { x = -858.497, y = 169.432, z = 2153.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269003, monster_id = 28010304, pos = { x = -827.704, y = 132.650, z = 2439.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 269004, monster_id = 28030101, pos = { x = -862.133, y = 160.907, z = 2351.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269005, monster_id = 28030313, pos = { x = -787.068, y = 190.642, z = 2373.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 269006, monster_id = 28030402, pos = { x = -796.755, y = 163.009, z = 2377.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269007, monster_id = 28020102, pos = { x = -803.618, y = 161.662, z = 2310.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269008, monster_id = 28030301, pos = { x = -820.672, y = 168.679, z = 2328.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269010, monster_id = 28010208, pos = { x = -791.029, y = 149.527, z = 2363.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 269011, monster_id = 28010208, pos = { x = -793.242, y = 153.345, z = 2344.868 }, rot = { x = 0.000, y = 137.523, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 269012, monster_id = 28020201, pos = { x = -808.558, y = 167.095, z = 2437.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269013, monster_id = 28020201, pos = { x = -807.305, y = 174.425, z = 2469.349 }, rot = { x = 0.000, y = 188.287, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269014, monster_id = 28020201, pos = { x = -807.871, y = 224.011, z = 2485.913 }, rot = { x = 0.000, y = 44.136, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269015, monster_id = 28030401, pos = { x = -789.798, y = 160.890, z = 2421.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269016, monster_id = 28030401, pos = { x = -788.361, y = 160.713, z = 2420.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269017, monster_id = 28030402, pos = { x = -794.606, y = 162.881, z = 2377.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269018, monster_id = 28030101, pos = { x = -857.863, y = 132.000, z = 2460.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269019, monster_id = 28030101, pos = { x = -855.060, y = 132.000, z = 2469.221 }, rot = { x = 0.000, y = 183.009, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 269020, monster_id = 28010208, pos = { x = -831.617, y = 182.020, z = 2434.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 269021, monster_id = 28010208, pos = { x = -822.108, y = 204.847, z = 2463.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 269022, monster_id = 28030313, pos = { x = -794.076, y = 223.544, z = 2485.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 269023, monster_id = 28020403, pos = { x = -788.379, y = 166.697, z = 2433.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
	{ config_id = 269024, monster_id = 28030313, pos = { x = -824.045, y = 196.101, z = 2441.437 }, rot = { x = 0.000, y = 139.199, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 269025, monster_id = 28030313, pos = { x = -824.625, y = 195.858, z = 2441.363 }, rot = { x = 0.000, y = 191.434, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 269026, monster_id = 28020201, pos = { x = -806.271, y = 223.907, z = 2486.409 }, rot = { x = 0.000, y = 265.321, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269027, monster_id = 28020314, pos = { x = -803.964, y = 132.003, z = 2449.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 269028, monster_id = 28020314, pos = { x = -794.293, y = 132.181, z = 2440.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 }
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
		{ config_id = 269009, monster_id = 28030301, pos = { x = -818.167, y = 169.412, z = 2329.674 }, rot = { x = 0.000, y = 236.331, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
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
		monsters = { 269001, 269002, 269003, 269004, 269005, 269006, 269007, 269008, 269010, 269011, 269012, 269013, 269014, 269015, 269016, 269017, 269018, 269019, 269020, 269021, 269022, 269023, 269024, 269025, 269026, 269027, 269028 },
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