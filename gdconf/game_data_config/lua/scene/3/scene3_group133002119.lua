-- 基础信息
local base_info = {
	group_id = 133002119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303, monster_id = 28020301, pos = { x = 2011.468, y = 215.557, z = -1000.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 304, monster_id = 28020301, pos = { x = 2017.899, y = 214.039, z = -996.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 305, monster_id = 28020301, pos = { x = 2006.545, y = 213.700, z = -983.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 306, monster_id = 28020301, pos = { x = 1990.915, y = 212.865, z = -952.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 }
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
		{ config_id = 308, monster_id = 28010201, pos = { x = 2031.575, y = 207.452, z = -971.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 3 },
		{ config_id = 309, monster_id = 28010201, pos = { x = 2029.445, y = 205.402, z = -931.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 3 },
		{ config_id = 310, monster_id = 28010201, pos = { x = 2043.331, y = 207.428, z = -985.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "采集动物", area_id = 3 },
		{ config_id = 311, monster_id = 28010201, pos = { x = 2029.769, y = 205.925, z = -949.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 3 }
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
	rand_suite = true
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
		monsters = { 303 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 304, 305 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 306 },
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