-- 基础信息
local base_info = {
	group_id = 133317011
}

-- Trigger变量
local defs = {
	group_id = 133317011,
	time_limit = 90,
	feather = 11001,
	orb_nums = 14,
	end_suite = 3
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
	{ config_id = 11001, gadget_id = 70290727, pos = { x = 687.462, y = 322.071, z = 6133.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 30 },
	{ config_id = 11010, gadget_id = 70290729, pos = { x = 694.695, y = 321.097, z = 6133.750 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11011, gadget_id = 70290729, pos = { x = 701.440, y = 321.097, z = 6135.621 }, rot = { x = 0.000, y = 96.143, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11012, gadget_id = 70290729, pos = { x = 708.400, y = 321.097, z = 6134.872 }, rot = { x = 0.000, y = 138.075, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11013, gadget_id = 70290729, pos = { x = 712.872, y = 321.097, z = 6129.892 }, rot = { x = 0.000, y = 163.217, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11014, gadget_id = 70290729, pos = { x = 714.594, y = 321.097, z = 6124.182 }, rot = { x = 0.000, y = 215.624, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11015, gadget_id = 70290729, pos = { x = 710.517, y = 321.097, z = 6118.492 }, rot = { x = 0.000, y = 215.621, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11016, gadget_id = 70290729, pos = { x = 706.440, y = 321.097, z = 6112.802 }, rot = { x = 355.394, y = 223.119, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11017, gadget_id = 70290729, pos = { x = 701.672, y = 321.659, z = 6107.710 }, rot = { x = 356.677, y = 218.255, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11018, gadget_id = 70290729, pos = { x = 697.372, y = 322.062, z = 6102.256 }, rot = { x = 358.780, y = 210.854, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11019, gadget_id = 70290729, pos = { x = 693.783, y = 322.211, z = 6096.249 }, rot = { x = 358.780, y = 210.851, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11020, gadget_id = 70290729, pos = { x = 690.194, y = 322.360, z = 6090.240 }, rot = { x = 358.153, y = 209.507, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11021, gadget_id = 70290729, pos = { x = 686.759, y = 322.585, z = 6084.171 }, rot = { x = 352.137, y = 196.267, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11022, gadget_id = 70290729, pos = { x = 684.817, y = 323.543, z = 6077.515 }, rot = { x = 352.136, y = 196.268, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 11023, gadget_id = 70290729, pos = { x = 682.917, y = 324.480, z = 6071.002 }, rot = { x = 352.136, y = 196.268, z = 0.000 }, level = 32, area_id = 30 }
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
	end_suite = 3,
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
		gadgets = { 11001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11010, 11011, 11012, 11013, 11014, 11015, 11016, 11017, 11018, 11019, 11020, 11021, 11022, 11023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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

require "V3_6/PB_CollectFeatherOrb"