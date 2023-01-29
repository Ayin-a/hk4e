-- 基础信息
local base_info = {
	group_id = 133317008
}

-- Trigger变量
local defs = {
	group_id = 133317008,
	time_limit = 20,
	feather = 8001,
	orb_nums = 8,
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
	{ config_id = 8001, gadget_id = 70290727, pos = { x = 798.767, y = 206.563, z = 5988.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 30 },
	{ config_id = 8002, gadget_id = 70290729, pos = { x = 799.103, y = 206.930, z = 5990.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8003, gadget_id = 70290729, pos = { x = 799.694, y = 208.455, z = 5995.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8004, gadget_id = 70290729, pos = { x = 799.694, y = 212.394, z = 6001.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8005, gadget_id = 70290729, pos = { x = 797.715, y = 216.272, z = 6007.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8006, gadget_id = 70290729, pos = { x = 797.715, y = 222.843, z = 6007.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8007, gadget_id = 70290729, pos = { x = 797.715, y = 230.964, z = 6007.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8008, gadget_id = 70290729, pos = { x = 797.715, y = 237.718, z = 6007.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 8009, gadget_id = 70290729, pos = { x = 797.715, y = 240.673, z = 6007.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
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
		gadgets = { 8001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009 },
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