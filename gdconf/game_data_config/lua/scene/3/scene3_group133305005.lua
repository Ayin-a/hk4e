-- 基础信息
local base_info = {
	group_id = 133305005
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
	{ config_id = 5008, npc_id = 4260, pos = { x = -2273.583, y = 271.751, z = 3909.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 5009, npc_id = 4261, pos = { x = -2275.223, y = 272.372, z = 3897.949 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, area_id = 26 },
	{ config_id = 5010, npc_id = 4266, pos = { x = -2275.031, y = 272.292, z = 3904.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 5011, npc_id = 4262, pos = { x = -2270.406, y = 272.976, z = 3892.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 5012, npc_id = 4263, pos = { x = -2270.537, y = 272.805, z = 3886.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 5013, npc_id = 4264, pos = { x = -2270.459, y = 272.717, z = 3877.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 5014, npc_id = 4265, pos = { x = -2270.479, y = 272.278, z = 3878.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 }
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70360040, pos = { x = -2273.583, y = 271.751, z = 3909.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5002, gadget_id = 70360040, pos = { x = -2275.352, y = 272.538, z = 3897.896 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5003, gadget_id = 70360040, pos = { x = -2275.031, y = 272.433, z = 3904.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5004, gadget_id = 70360040, pos = { x = -2270.461, y = 273.220, z = 3892.519 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5005, gadget_id = 70360040, pos = { x = -2270.542, y = 272.997, z = 3886.817 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5006, gadget_id = 70360040, pos = { x = -2270.386, y = 272.770, z = 3877.404 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5007, gadget_id = 70360040, pos = { x = -2270.482, y = 272.514, z = 3878.861 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 5015, gadget_id = 70290017, pos = { x = -2273.551, y = 271.753, z = 3909.497 }, rot = { x = 270.000, y = 147.326, z = 0.000 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5016, gadget_id = 70290017, pos = { x = -2275.087, y = 272.485, z = 3904.368 }, rot = { x = 0.000, y = 180.000, z = 352.861 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5017, gadget_id = 70290017, pos = { x = -2275.335, y = 272.682, z = 3897.561 }, rot = { x = 0.000, y = 270.000, z = 20.713 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5018, gadget_id = 70290017, pos = { x = -2275.335, y = 272.879, z = 3897.999 }, rot = { x = 0.000, y = 270.000, z = 345.635 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5019, gadget_id = 70290017, pos = { x = -2275.335, y = 272.419, z = 3897.878 }, rot = { x = 0.000, y = 270.000, z = 359.075 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5020, gadget_id = 70290018, pos = { x = -2275.405, y = 272.625, z = 3898.460 }, rot = { x = 0.000, y = 270.000, z = 16.839 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5021, gadget_id = 70290017, pos = { x = -2275.335, y = 272.418, z = 3897.361 }, rot = { x = 0.000, y = 270.000, z = 11.020 }, level = 32, area_id = 26, is_enable_interact = false },
	{ config_id = 5022, gadget_id = 70950162, pos = { x = -2292.721, y = 269.537, z = 3878.875 }, rot = { x = 0.000, y = 28.709, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 5023, gadget_id = 70950162, pos = { x = -2292.756, y = 269.466, z = 3879.218 }, rot = { x = 0.000, y = 47.952, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 5024, gadget_id = 70950162, pos = { x = -2292.722, y = 269.466, z = 3878.875 }, rot = { x = 0.000, y = 55.325, z = 0.000 }, level = 30, area_id = 26 }
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
	gadgets = {
		{ config_id = 5025, gadget_id = 70950162, pos = { x = -2290.418, y = 267.663, z = 3879.317 }, rot = { x = 0.000, y = 14.235, z = 0.000 }, level = 30, area_id = 26 }
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
		monsters = { },
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5015, 5016, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5024 },
		regions = { },
		triggers = { },
		npcs = { 5008, 5009, 5010, 5011, 5012, 5013, 5014 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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