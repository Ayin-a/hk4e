-- 基础信息
local base_info = {
	group_id = 133002152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 447, monster_id = 21010201, pos = { x = 1899.949, y = 213.042, z = -719.223 }, rot = { x = 0.000, y = 82.643, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 448, monster_id = 21010201, pos = { x = 1899.609, y = 212.939, z = -723.890 }, rot = { x = 0.000, y = 85.941, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 449, monster_id = 21010301, pos = { x = 1902.305, y = 212.289, z = -721.357 }, rot = { x = 0.000, y = 72.071, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 882, monster_id = 21010701, pos = { x = 1897.895, y = 213.270, z = -722.448 }, rot = { x = 0.000, y = 82.643, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 883, monster_id = 21010701, pos = { x = 1897.400, y = 213.594, z = -720.068 }, rot = { x = 0.000, y = 82.643, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 447, 448, 449 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 882, 883 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
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