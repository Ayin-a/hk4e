-- 基础信息
local base_info = {
	group_id = 133212583
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
	{ config_id = 583001, gadget_id = 70710517, pos = { x = -3969.032, y = 235.368, z = -2122.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 583003, gadget_id = 70710555, pos = { x = -3957.680, y = 205.492, z = -2072.254 }, rot = { x = 6.922, y = 59.443, z = 355.423 }, level = 1, area_id = 13 },
	{ config_id = 583006, gadget_id = 70500000, pos = { x = -4002.806, y = 214.041, z = -2115.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9187, area_id = 13 },
	{ config_id = 583008, gadget_id = 70500000, pos = { x = -4002.782, y = 214.006, z = -2115.242 }, rot = { x = 60.665, y = 0.000, z = 0.000 }, level = 1, point_type = 9187, area_id = 13 },
	{ config_id = 583009, gadget_id = 70500000, pos = { x = -4002.653, y = 214.052, z = -2115.333 }, rot = { x = 0.000, y = 9.969, z = 292.428 }, level = 1, point_type = 9187, area_id = 13 }
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
		{ config_id = 583004, gadget_id = 70520028, pos = { x = -3957.847, y = 208.116, z = -2073.658 }, rot = { x = 295.965, y = 247.009, z = 77.740 }, level = 1, area_id = 13 }
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
		gadgets = { 583003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 583001, 583003, 583006, 583008, 583009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 583003, 583006, 583008, 583009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 没有虫子的suit,
		monsters = { },
		gadgets = { 583003 },
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