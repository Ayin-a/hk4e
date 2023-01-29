-- 基础信息
local base_info = {
	group_id = 133317014
}

-- Trigger变量
local defs = {
	group_id = 133317014,
	time_limit = 90,
	feather = 14001,
	orb_nums = 13,
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
	{ config_id = 14001, gadget_id = 70290727, pos = { x = 765.676, y = 258.192, z = 6073.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 30 },
	{ config_id = 14002, gadget_id = 70290729, pos = { x = 770.128, y = 259.332, z = 6077.362 }, rot = { x = 9.139, y = 83.817, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14003, gadget_id = 70290729, pos = { x = 779.800, y = 257.767, z = 6078.410 }, rot = { x = 316.830, y = 58.806, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14004, gadget_id = 70290729, pos = { x = 786.039, y = 264.609, z = 6082.187 }, rot = { x = 355.170, y = 46.353, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14005, gadget_id = 70290729, pos = { x = 793.165, y = 265.441, z = 6088.984 }, rot = { x = 9.944, y = 28.375, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14006, gadget_id = 70290729, pos = { x = 797.766, y = 263.743, z = 6097.503 }, rot = { x = 14.533, y = 14.822, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14007, gadget_id = 70290729, pos = { x = 800.187, y = 261.290, z = 6106.653 }, rot = { x = 16.070, y = 338.714, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14008, gadget_id = 70290729, pos = { x = 796.699, y = 258.522, z = 6115.606 }, rot = { x = 11.327, y = 334.740, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14009, gadget_id = 70290729, pos = { x = 792.560, y = 256.579, z = 6124.378 }, rot = { x = 2.217, y = 327.517, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14010, gadget_id = 70290729, pos = { x = 787.194, y = 256.192, z = 6132.808 }, rot = { x = 2.217, y = 327.517, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14011, gadget_id = 70290729, pos = { x = 781.827, y = 255.805, z = 6141.237 }, rot = { x = 13.244, y = 321.781, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14012, gadget_id = 70290729, pos = { x = 775.820, y = 253.520, z = 6148.865 }, rot = { x = 14.439, y = 321.132, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14013, gadget_id = 70290729, pos = { x = 769.743, y = 251.027, z = 6156.405 }, rot = { x = 345.534, y = 313.912, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 14014, gadget_id = 70290729, pos = { x = 762.856, y = 253.493, z = 6163.036 }, rot = { x = 345.534, y = 313.912, z = 0.000 }, level = 32, area_id = 30 }
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
		gadgets = { 14001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14002, 14003, 14004, 14005, 14006, 14007, 14008, 14009, 14010, 14011, 14012, 14013, 14014 },
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