-- 基础信息
local base_info = {
	group_id = 133003436
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1451, monster_id = 20011001, pos = { x = 2580.881, y = 211.480, z = -1358.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1452, monster_id = 20011001, pos = { x = 2576.406, y = 211.616, z = -1360.852 }, rot = { x = 0.000, y = 253.593, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1453, monster_id = 20011201, pos = { x = 2536.253, y = 217.367, z = -1409.875 }, rot = { x = 0.000, y = 23.239, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1454, monster_id = 20011201, pos = { x = 2546.052, y = 217.352, z = -1407.511 }, rot = { x = 0.000, y = 68.851, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1455, monster_id = 20011001, pos = { x = 2579.737, y = 211.990, z = -1297.106 }, rot = { x = 0.000, y = 206.029, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1456, monster_id = 20011001, pos = { x = 2582.015, y = 211.480, z = -1301.248 }, rot = { x = 0.000, y = 206.029, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1457, monster_id = 20011201, pos = { x = 2610.147, y = 216.023, z = -1270.798 }, rot = { x = 0.000, y = 23.239, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1458, monster_id = 20011201, pos = { x = 2612.505, y = 216.701, z = -1274.805 }, rot = { x = 0.000, y = 211.844, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1459, monster_id = 20011401, pos = { x = 2515.033, y = 223.813, z = -1424.692 }, rot = { x = 0.000, y = 211.844, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1460, monster_id = 20011401, pos = { x = 2504.684, y = 224.256, z = -1415.927 }, rot = { x = 0.000, y = 211.844, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1461, monster_id = 20011401, pos = { x = 2532.174, y = 219.737, z = -1436.493 }, rot = { x = 0.000, y = 211.844, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1462, monster_id = 20011401, pos = { x = 2538.200, y = 219.118, z = -1444.238 }, rot = { x = 0.000, y = 352.232, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1463, monster_id = 20011401, pos = { x = 2499.500, y = 214.117, z = -1324.457 }, rot = { x = 0.000, y = 352.232, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1464, monster_id = 20011401, pos = { x = 2498.930, y = 213.647, z = -1334.458 }, rot = { x = 0.000, y = 163.830, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1465, monster_id = 20010301, pos = { x = 2524.654, y = 211.957, z = -1346.072 }, rot = { x = 0.000, y = 89.365, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1466, monster_id = 20010301, pos = { x = 2522.535, y = 212.018, z = -1342.995 }, rot = { x = 0.000, y = 272.090, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 }
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
	suite = 2,
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
		monsters = { 1451, 1453, 1459, 1462 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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