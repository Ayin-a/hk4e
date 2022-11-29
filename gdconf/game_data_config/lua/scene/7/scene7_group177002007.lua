-- 基础信息
local base_info = {
	group_id = 177002007
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
	{ config_id = 7005, gadget_id = 70500000, pos = { x = 1334.208, y = 194.705, z = 824.534 }, rot = { x = 0.000, y = 280.356, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 7006, gadget_id = 70500000, pos = { x = 1317.938, y = 194.847, z = 806.202 }, rot = { x = 0.000, y = 142.567, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 7009, gadget_id = 70500000, pos = { x = 1320.268, y = 224.093, z = 714.634 }, rot = { x = 352.843, y = 218.193, z = 354.517 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 7012, gadget_id = 70500000, pos = { x = 1307.997, y = 232.118, z = 696.375 }, rot = { x = 358.084, y = 33.745, z = 8.890 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 7015, gadget_id = 70500000, pos = { x = 1360.646, y = 232.765, z = 726.332 }, rot = { x = 0.000, y = 198.831, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 7016, gadget_id = 70500000, pos = { x = 1284.671, y = 178.399, z = 802.475 }, rot = { x = 0.000, y = 198.831, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 7018, gadget_id = 70500000, pos = { x = 1362.773, y = 179.750, z = 833.908 }, rot = { x = 357.489, y = 276.360, z = 14.344 }, level = 36, point_type = 9198, persistent = true, area_id = 210 }
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
		gadgets = { 7005, 7006, 7009, 7012, 7015, 7016, 7018 },
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