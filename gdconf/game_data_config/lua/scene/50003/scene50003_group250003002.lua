-- 基础信息
local base_info = {
	group_id = 250003002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 20011201, pos = { x = 1963.219, y = 196.953, z = -1307.514 }, rot = { x = 0.000, y = 78.625, z = 0.000 }, level = 1 },
	{ config_id = 2, monster_id = 20011201, pos = { x = 1961.746, y = 196.778, z = -1306.010 }, rot = { x = 0.000, y = 66.659, z = 0.000 }, level = 1 },
	{ config_id = 3, monster_id = 20011201, pos = { x = 1962.920, y = 196.753, z = -1304.926 }, rot = { x = 0.000, y = 77.500, z = 0.000 }, level = 1 },
	{ config_id = 4, monster_id = 20010401, pos = { x = 1963.739, y = 196.903, z = -1306.017 }, rot = { x = 0.000, y = 72.670, z = 0.000 }, level = 1 },
	{ config_id = 5, monster_id = 20010701, pos = { x = 1964.137, y = 196.586, z = -1302.090 }, rot = { x = 0.000, y = 88.038, z = 0.000 }, level = 1 },
	{ config_id = 6, monster_id = 20010701, pos = { x = 1962.368, y = 196.391, z = -1299.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7, monster_id = 20010701, pos = { x = 1964.322, y = 196.374, z = -1298.219 }, rot = { x = 0.000, y = 120.251, z = 0.000 }, level = 1 },
	{ config_id = 8, monster_id = 20010601, pos = { x = 1964.126, y = 196.467, z = -1300.283 }, rot = { x = 0.000, y = 91.312, z = 0.000 }, level = 1 },
	{ config_id = 9, monster_id = 20010801, pos = { x = 1963.166, y = 197.006, z = -1309.212 }, rot = { x = 0.000, y = 81.807, z = 0.000 }, level = 1 },
	{ config_id = 10, monster_id = 20010801, pos = { x = 1964.509, y = 197.071, z = -1310.757 }, rot = { x = 0.000, y = 65.882, z = 0.000 }, level = 1 },
	{ config_id = 11, monster_id = 20010801, pos = { x = 1965.135, y = 196.972, z = -1308.865 }, rot = { x = 0.000, y = 70.892, z = 0.000 }, level = 1 },
	{ config_id = 12, monster_id = 20010901, pos = { x = 1966.198, y = 197.014, z = -1310.371 }, rot = { x = 0.000, y = 61.726, z = 0.000 }, level = 1 },
	{ config_id = 13, monster_id = 20011001, pos = { x = 1964.905, y = 196.863, z = -1305.342 }, rot = { x = 0.000, y = 101.453, z = 0.000 }, level = 1 },
	{ config_id = 14, monster_id = 20011001, pos = { x = 1965.057, y = 196.761, z = -1304.146 }, rot = { x = 0.000, y = 103.957, z = 0.000 }, level = 1 },
	{ config_id = 15, monster_id = 20011001, pos = { x = 1965.708, y = 196.701, z = -1303.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16, monster_id = 20011101, pos = { x = 1965.925, y = 196.831, z = -1305.082 }, rot = { x = 0.000, y = 81.553, z = 0.000 }, level = 1 },
	{ config_id = 17, monster_id = 20011202, pos = { x = 1967.265, y = 196.724, z = -1303.265 }, rot = { x = 0.000, y = 95.827, z = 0.000 }, level = 1 },
	{ config_id = 18, monster_id = 20011202, pos = { x = 1968.082, y = 196.657, z = -1302.310 }, rot = { x = 0.000, y = 80.735, z = 0.000 }, level = 1 },
	{ config_id = 19, monster_id = 20011202, pos = { x = 1967.797, y = 196.803, z = -1304.204 }, rot = { x = 0.000, y = 96.957, z = 0.000 }, level = 1 },
	{ config_id = 20, monster_id = 20011301, pos = { x = 1966.876, y = 196.579, z = -1301.473 }, rot = { x = 0.000, y = 79.467, z = 0.000 }, level = 1 },
	{ config_id = 21, monster_id = 20011401, pos = { x = 1967.508, y = 196.425, z = -1299.993 }, rot = { x = 0.000, y = 104.290, z = 0.000 }, level = 1 },
	{ config_id = 22, monster_id = 20011401, pos = { x = 1966.726, y = 196.325, z = -1299.035 }, rot = { x = 0.000, y = 106.028, z = 0.000 }, level = 1 },
	{ config_id = 23, monster_id = 20011401, pos = { x = 1967.926, y = 196.206, z = -1298.290 }, rot = { x = 0.000, y = 109.364, z = 0.000 }, level = 1 },
	{ config_id = 24, monster_id = 20011501, pos = { x = 1968.080, y = 196.480, z = -1300.598 }, rot = { x = 0.000, y = 106.848, z = 0.000 }, level = 1 }
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
		monsters = { 1, 2, 3, 4 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5, 6, 7, 8 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 9, 10, 11, 12 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 13, 14, 15, 16 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 17, 18, 19, 20 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 21, 22, 23, 24 },
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