-- 基础信息
local base_info = {
	group_id = 133106053
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70500000, pos = { x = -841.046, y = 197.553, z = 937.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53002, gadget_id = 70500000, pos = { x = -843.177, y = 201.912, z = 786.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53004, gadget_id = 70500000, pos = { x = -875.428, y = 217.008, z = 1270.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53005, gadget_id = 70500000, pos = { x = -546.299, y = 183.431, z = 1095.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53007, gadget_id = 70500000, pos = { x = -513.625, y = 248.335, z = 1282.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53008, gadget_id = 70500000, pos = { x = -250.608, y = 267.139, z = 1238.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53009, gadget_id = 70500000, pos = { x = -497.574, y = 187.878, z = 879.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53010, gadget_id = 70500000, pos = { x = -651.716, y = 236.287, z = 1280.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53011, gadget_id = 70500000, pos = { x = -171.898, y = 164.598, z = 946.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53012, gadget_id = 70500000, pos = { x = -159.502, y = 205.301, z = 896.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 },
	{ config_id = 53013, gadget_id = 70500000, pos = { x = -158.208, y = 219.323, z = 1037.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 6 },
	{ config_id = 53014, gadget_id = 70500000, pos = { x = -582.507, y = 262.075, z = 697.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 53015, gadget_id = 70500000, pos = { x = -344.351, y = 238.140, z = 1149.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 8 }
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
		monsters = { },
		gadgets = { 53001, 53002, 53004, 53005, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015 },
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