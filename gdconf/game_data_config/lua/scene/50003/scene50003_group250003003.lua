-- 基础信息
local base_info = {
	group_id = 250003003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 21020101, pos = { x = 1953.369, y = 196.305, z = -1303.415 }, rot = { x = 0.000, y = 97.636, z = 0.000 }, level = 1 },
	{ config_id = 26, monster_id = 21030101, pos = { x = 1948.217, y = 196.066, z = -1307.188 }, rot = { x = 0.000, y = 45.963, z = 0.000 }, level = 1 },
	{ config_id = 27, monster_id = 21020201, pos = { x = 1956.537, y = 196.333, z = -1301.875 }, rot = { x = 0.000, y = 83.111, z = 0.000 }, level = 1 },
	{ config_id = 28, monster_id = 21010701, pos = { x = 1958.545, y = 196.347, z = -1298.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 29, monster_id = 21010201, pos = { x = 1960.083, y = 196.453, z = -1302.687 }, rot = { x = 0.000, y = 65.485, z = 0.000 }, level = 1 },
	{ config_id = 30, monster_id = 21030301, pos = { x = 1958.775, y = 196.278, z = -1291.178 }, rot = { x = 0.000, y = 116.830, z = 0.000 }, level = 1 },
	{ config_id = 31, monster_id = 21010701, pos = { x = 1961.740, y = 196.070, z = -1289.612 }, rot = { x = 0.000, y = 97.365, z = 0.000 }, level = 1 },
	{ config_id = 32, monster_id = 21010701, pos = { x = 1961.194, y = 196.250, z = -1292.358 }, rot = { x = 0.000, y = 97.552, z = 0.000 }, level = 1 },
	{ config_id = 33, monster_id = 21030201, pos = { x = 1958.951, y = 196.782, z = -1310.274 }, rot = { x = 0.000, y = 78.680, z = 0.000 }, level = 1 },
	{ config_id = 34, monster_id = 21010701, pos = { x = 1963.122, y = 197.153, z = -1312.929 }, rot = { x = 0.000, y = 62.586, z = 0.000 }, level = 1 },
	{ config_id = 35, monster_id = 21010701, pos = { x = 1960.842, y = 196.890, z = -1308.996 }, rot = { x = 0.000, y = 61.323, z = 0.000 }, level = 1 },
	{ config_id = 36, monster_id = 21030101, pos = { x = 1959.360, y = 196.377, z = -1296.335 }, rot = { x = 0.000, y = 102.332, z = 0.000 }, level = 1 },
	{ config_id = 37, monster_id = 21010301, pos = { x = 1962.541, y = 196.177, z = -1294.277 }, rot = { x = 0.000, y = 64.710, z = 0.000 }, level = 1 },
	{ config_id = 38, monster_id = 21010301, pos = { x = 1962.796, y = 196.274, z = -1295.898 }, rot = { x = 0.000, y = 102.530, z = 0.000 }, level = 1 },
	{ config_id = 39, monster_id = 21010301, pos = { x = 1961.879, y = 196.357, z = -1298.176 }, rot = { x = 0.000, y = 129.018, z = 0.000 }, level = 1 },
	{ config_id = 40, monster_id = 20020101, pos = { x = 1943.996, y = 199.741, z = -1302.085 }, rot = { x = 0.000, y = 294.052, z = 0.000 }, level = 1 },
	{ config_id = 41, monster_id = 22010201, pos = { x = 1952.297, y = 196.570, z = -1294.042 }, rot = { x = 0.000, y = 123.950, z = 0.000 }, level = 1 },
	{ config_id = 42, monster_id = 20011001, pos = { x = 1955.390, y = 196.485, z = -1291.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43, monster_id = 20011001, pos = { x = 1955.335, y = 196.538, z = -1293.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 44, monster_id = 20011001, pos = { x = 1954.116, y = 196.444, z = -1296.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 45, monster_id = 22010301, pos = { x = 1959.104, y = 196.558, z = -1305.304 }, rot = { x = 0.000, y = 94.309, z = 0.000 }, level = 1 },
	{ config_id = 46, monster_id = 20010801, pos = { x = 1960.505, y = 196.776, z = -1307.213 }, rot = { x = 0.000, y = 63.316, z = 0.000 }, level = 1 },
	{ config_id = 47, monster_id = 20010801, pos = { x = 1959.795, y = 196.489, z = -1303.655 }, rot = { x = 0.000, y = 82.051, z = 0.000 }, level = 1 },
	{ config_id = 48, monster_id = 20010801, pos = { x = 1960.287, y = 196.608, z = -1304.999 }, rot = { x = 0.000, y = 75.114, z = 0.000 }, level = 1 },
	{ config_id = 49, monster_id = 22010101, pos = { x = 1960.072, y = 196.382, z = -1300.807 }, rot = { x = 0.000, y = 112.133, z = 0.000 }, level = 1 },
	{ config_id = 50, monster_id = 20011202, pos = { x = 1961.151, y = 196.482, z = -1302.591 }, rot = { x = 0.000, y = 104.576, z = 0.000 }, level = 1 },
	{ config_id = 51, monster_id = 20011202, pos = { x = 1962.477, y = 196.456, z = -1301.154 }, rot = { x = 0.000, y = 98.540, z = 0.000 }, level = 1 }
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
		monsters = { 25, 26 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 27, 28, 29 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 30, 31, 32 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 33, 34, 35 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 36, 37, 38, 39 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 40 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { 41, 42, 43, 44 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { 45, 46, 47, 48 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = suite_10,
		monsters = { 49, 50, 51 },
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