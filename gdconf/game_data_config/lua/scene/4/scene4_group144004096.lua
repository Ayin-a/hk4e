-- 基础信息
local base_info = {
	group_id = 144004096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96001, monster_id = 28010301, pos = { x = -729.800, y = 120.620, z = -6.406 }, rot = { x = 0.000, y = 152.712, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 96002, monster_id = 28010301, pos = { x = -713.762, y = 120.620, z = 2.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 96003, monster_id = 28010301, pos = { x = -730.158, y = 120.620, z = -0.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 96004, monster_id = 28030101, pos = { x = -852.367, y = 120.926, z = -10.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 103 },
	{ config_id = 96005, monster_id = 28030101, pos = { x = -850.294, y = 120.184, z = -21.896 }, rot = { x = 0.000, y = 223.900, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 103 },
	{ config_id = 96006, monster_id = 28030101, pos = { x = -637.720, y = 120.017, z = -224.203 }, rot = { x = 0.000, y = 152.553, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 103 },
	{ config_id = 96007, monster_id = 28030101, pos = { x = -642.541, y = 120.710, z = -189.009 }, rot = { x = 0.000, y = 50.086, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 103 },
	{ config_id = 96008, monster_id = 28030101, pos = { x = -659.393, y = 129.707, z = -209.792 }, rot = { x = 0.000, y = 6.259, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 103 },
	{ config_id = 96009, monster_id = 28030101, pos = { x = -626.107, y = 120.476, z = -165.832 }, rot = { x = 0.000, y = 223.900, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 103 },
	{ config_id = 96010, monster_id = 28020102, pos = { x = -707.736, y = 122.778, z = -120.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 103 },
	{ config_id = 96011, monster_id = 28020102, pos = { x = -707.781, y = 191.222, z = -35.336 }, rot = { x = 0.000, y = 127.063, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 103 },
	{ config_id = 96012, monster_id = 28030101, pos = { x = -430.850, y = 146.823, z = -755.494 }, rot = { x = 0.000, y = 70.786, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 100 },
	{ config_id = 96013, monster_id = 28030101, pos = { x = -438.853, y = 146.576, z = -761.278 }, rot = { x = 0.000, y = 197.650, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 100 },
	{ config_id = 96014, monster_id = 28030101, pos = { x = -255.652, y = 176.261, z = -818.490 }, rot = { x = 0.000, y = 22.276, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 100 },
	{ config_id = 96015, monster_id = 28030101, pos = { x = -65.799, y = 120.774, z = -803.430 }, rot = { x = 0.000, y = 22.276, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 100 },
	{ config_id = 96016, monster_id = 28030101, pos = { x = -81.757, y = 120.054, z = -806.177 }, rot = { x = 0.000, y = 235.931, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 100 },
	{ config_id = 96017, monster_id = 28030101, pos = { x = -77.806, y = 120.000, z = -809.276 }, rot = { x = 0.000, y = 164.350, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 100 },
	{ config_id = 96018, monster_id = 28010202, pos = { x = -709.248, y = 167.075, z = -18.952 }, rot = { x = 0.000, y = 23.548, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 96019, monster_id = 28010202, pos = { x = -720.537, y = 168.455, z = 10.610 }, rot = { x = 0.000, y = 289.598, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 96020, monster_id = 28010202, pos = { x = -733.614, y = 121.283, z = -19.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 96021, monster_id = 28010202, pos = { x = -672.382, y = 121.557, z = -19.024 }, rot = { x = 0.000, y = 266.974, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 }
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
		monsters = { 96001, 96002, 96003, 96004, 96005, 96006, 96007, 96008, 96009, 96010, 96011, 96012, 96013, 96014, 96015, 96016, 96017, 96018, 96019, 96020, 96021 },
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