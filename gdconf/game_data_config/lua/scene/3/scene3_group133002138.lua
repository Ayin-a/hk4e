-- 基础信息
local base_info = {
	group_id = 133002138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 393, monster_id = 21011001, pos = { x = 1967.320, y = 264.208, z = -565.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 394, monster_id = 21011001, pos = { x = 1947.381, y = 260.847, z = -554.044 }, rot = { x = 0.000, y = 283.194, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 395, monster_id = 21010701, pos = { x = 1960.039, y = 262.290, z = -570.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 396, monster_id = 21010701, pos = { x = 1944.345, y = 260.328, z = -559.625 }, rot = { x = 0.000, y = 188.689, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 397, monster_id = 21010501, pos = { x = 1965.645, y = 260.932, z = -577.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 398, monster_id = 21010501, pos = { x = 1941.327, y = 259.449, z = -555.810 }, rot = { x = 0.000, y = 228.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 399, monster_id = 21030301, pos = { x = 1906.350, y = 243.675, z = -630.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘萨满", area_id = 3 },
	{ config_id = 400, monster_id = 20010601, pos = { x = 1904.182, y = 243.599, z = -628.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 3 }
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
		monsters = { 393, 394 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 395, 396 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 397, 398 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 399 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 400 },
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