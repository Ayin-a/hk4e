-- 基础信息
local base_info = {
	group_id = 133106520
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 520003, monster_id = 25020201, pos = { x = -313.326, y = 299.339, z = 1606.182 }, rot = { x = 0.000, y = 163.787, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 },
	{ config_id = 520012, monster_id = 25010201, pos = { x = -311.548, y = 299.154, z = 1606.665 }, rot = { x = 0.000, y = 175.990, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 },
	{ config_id = 520013, monster_id = 25010501, pos = { x = -313.318, y = 306.450, z = 1518.150 }, rot = { x = 0.000, y = 251.015, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 },
	{ config_id = 520014, monster_id = 25010401, pos = { x = -313.586, y = 306.379, z = 1515.900 }, rot = { x = 0.000, y = 252.537, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 520001, gadget_id = 70210101, pos = { x = -367.265, y = 303.278, z = 1500.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器璃月", persistent = true, area_id = 19 },
	{ config_id = 520002, gadget_id = 70210101, pos = { x = -357.137, y = 303.228, z = 1503.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器璃月", persistent = true, area_id = 19 },
	{ config_id = 520004, gadget_id = 70210101, pos = { x = -377.637, y = 303.507, z = 1496.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器璃月", persistent = true, area_id = 19 },
	{ config_id = 520005, gadget_id = 70210101, pos = { x = -345.395, y = 301.449, z = 1602.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 19 },
	{ config_id = 520006, gadget_id = 70210101, pos = { x = -348.338, y = 300.535, z = 1603.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 19 },
	{ config_id = 520007, gadget_id = 70210101, pos = { x = -344.524, y = 301.554, z = 1601.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 19 },
	{ config_id = 520008, gadget_id = 70310010, pos = { x = -355.460, y = 300.088, z = 1610.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 520009, gadget_id = 70210101, pos = { x = -281.174, y = 303.589, z = 1488.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 19 },
	{ config_id = 520010, gadget_id = 70210101, pos = { x = -277.465, y = 303.312, z = 1476.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 19 },
	{ config_id = 520011, gadget_id = 70210101, pos = { x = -275.066, y = 303.293, z = 1475.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 19 },
	{ config_id = 520015, gadget_id = 70210101, pos = { x = -291.633, y = 313.310, z = 1507.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 19 }
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
		monsters = { 520003, 520012, 520013, 520014 },
		gadgets = { 520001, 520002, 520004, 520005, 520006, 520007, 520008, 520009, 520010, 520011, 520015 },
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