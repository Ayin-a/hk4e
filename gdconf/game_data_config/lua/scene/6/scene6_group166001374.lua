-- 基础信息
local base_info = {
	group_id = 166001374
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 374011, monster_id = 28050301, pos = { x = 1069.157, y = 823.028, z = 407.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 374020, monster_id = 25060101, pos = { x = 975.226, y = 784.918, z = 425.262 }, rot = { x = 0.000, y = 116.052, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 374021, monster_id = 25010201, pos = { x = 976.338, y = 784.859, z = 426.465 }, rot = { x = 0.000, y = 297.359, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 374027, monster_id = 28050102, pos = { x = 945.766, y = 769.759, z = 350.178 }, rot = { x = 0.000, y = 87.039, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 374030, monster_id = 28020605, pos = { x = 971.484, y = 738.019, z = 385.922 }, rot = { x = 0.000, y = 55.494, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 },
	{ config_id = 374034, monster_id = 20011401, pos = { x = 943.207, y = 739.322, z = 368.024 }, rot = { x = 0.000, y = 187.780, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 374001, gadget_id = 70290308, pos = { x = 1011.011, y = 792.723, z = 367.401 }, rot = { x = 0.000, y = 323.975, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374002, gadget_id = 70220062, pos = { x = 996.387, y = 792.703, z = 377.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374003, gadget_id = 70220063, pos = { x = 997.147, y = 792.710, z = 378.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374004, gadget_id = 70290347, pos = { x = 970.249, y = 796.261, z = 338.972 }, rot = { x = 0.000, y = 325.004, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 374005, gadget_id = 70211001, pos = { x = 996.576, y = 796.480, z = 341.526 }, rot = { x = 0.919, y = 229.556, z = 5.508 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 374006, gadget_id = 70220048, pos = { x = 991.452, y = 796.058, z = 337.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374007, gadget_id = 70220048, pos = { x = 993.136, y = 796.058, z = 336.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374008, gadget_id = 70220062, pos = { x = 984.594, y = 794.350, z = 321.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374009, gadget_id = 70220062, pos = { x = 988.096, y = 794.363, z = 323.173 }, rot = { x = 0.000, y = 49.910, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374010, gadget_id = 70220063, pos = { x = 984.247, y = 794.374, z = 320.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374012, gadget_id = 70210101, pos = { x = 980.869, y = 796.204, z = 333.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 374016, gadget_id = 70210101, pos = { x = 985.883, y = 775.086, z = 341.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 },
	{ config_id = 374017, gadget_id = 70290347, pos = { x = 974.320, y = 774.368, z = 337.640 }, rot = { x = 0.000, y = 50.306, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 374018, gadget_id = 70210101, pos = { x = 980.997, y = 774.773, z = 335.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 },
	{ config_id = 374019, gadget_id = 70220048, pos = { x = 993.415, y = 774.759, z = 319.561 }, rot = { x = 0.000, y = 359.231, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374022, gadget_id = 70220048, pos = { x = 923.331, y = 766.216, z = 359.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374023, gadget_id = 70220048, pos = { x = 917.960, y = 766.270, z = 361.102 }, rot = { x = 0.000, y = 323.481, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374024, gadget_id = 70220048, pos = { x = 919.002, y = 766.873, z = 363.108 }, rot = { x = 356.255, y = 58.523, z = 272.292 }, level = 36, area_id = 300 },
	{ config_id = 374025, gadget_id = 70220048, pos = { x = 922.574, y = 766.265, z = 362.033 }, rot = { x = 0.000, y = 34.701, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374026, gadget_id = 70220062, pos = { x = 924.150, y = 766.208, z = 362.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374028, gadget_id = 70210101, pos = { x = 939.335, y = 738.866, z = 351.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 374031, gadget_id = 70220050, pos = { x = 929.885, y = 741.502, z = 354.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374032, gadget_id = 70220048, pos = { x = 930.115, y = 741.528, z = 353.076 }, rot = { x = 0.000, y = 343.626, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374033, gadget_id = 70220048, pos = { x = 925.167, y = 741.498, z = 353.891 }, rot = { x = 0.000, y = 289.431, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 374035, gadget_id = 70290200, pos = { x = 974.065, y = 737.056, z = 365.439 }, rot = { x = 3.587, y = 343.298, z = 22.122 }, level = 36, area_id = 300 }
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
		{ config_id = 374013, gadget_id = 70500000, pos = { x = 1024.421, y = 769.588, z = 371.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 374014, gadget_id = 70500000, pos = { x = 1029.941, y = 769.136, z = 373.652 }, rot = { x = 341.407, y = 89.038, z = 10.198 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 374015, gadget_id = 70500000, pos = { x = 1027.242, y = 769.104, z = 374.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 }
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
		monsters = { 374011, 374020, 374021, 374027, 374030, 374034 },
		gadgets = { 374001, 374002, 374003, 374004, 374005, 374006, 374007, 374009, 374010, 374012, 374016, 374017, 374018, 374019, 374022, 374023, 374024, 374025, 374026, 374028, 374031, 374032, 374033, 374035 },
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