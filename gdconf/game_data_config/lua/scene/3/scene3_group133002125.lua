-- 基础信息
local base_info = {
	group_id = 133002125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 323, monster_id = 28020301, pos = { x = 1936.762, y = 210.967, z = -828.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "走兽", area_id = 3 },
	{ config_id = 324, monster_id = 28020301, pos = { x = 1942.313, y = 208.507, z = -822.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "走兽", area_id = 3 },
	{ config_id = 325, monster_id = 28020301, pos = { x = 1941.448, y = 212.197, z = -841.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "走兽", area_id = 3 },
	{ config_id = 326, monster_id = 28020102, pos = { x = 1941.272, y = 211.685, z = -835.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "走兽", area_id = 3 },
	{ config_id = 125001, monster_id = 28020301, pos = { x = 1954.151, y = 208.619, z = -833.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "走兽", area_id = 3 },
	{ config_id = 125002, monster_id = 28020301, pos = { x = 1934.821, y = 209.649, z = -814.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "走兽", area_id = 3 },
	{ config_id = 125003, monster_id = 28020301, pos = { x = 1948.336, y = 208.054, z = -813.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "走兽", area_id = 3 }
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
		monsters = { 323, 125001, 125002, 125003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 324, 325 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 326 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
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