-- 基础信息
local base_info = {
	group_id = 133001597
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
	{ config_id = 597001, gadget_id = 70360137, pos = { x = 1994.009, y = 425.783, z = -1269.255 }, rot = { x = 0.000, y = 17.442, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597017, gadget_id = 70360137, pos = { x = 2021.521, y = 423.387, z = -1257.332 }, rot = { x = 355.341, y = 44.811, z = 2.042 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597018, gadget_id = 70360137, pos = { x = 2023.175, y = 422.082, z = -1258.012 }, rot = { x = 355.341, y = 44.811, z = 2.042 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597019, gadget_id = 70360143, pos = { x = 2025.368, y = 420.811, z = -1258.726 }, rot = { x = 356.600, y = 20.390, z = 3.785 }, level = 1, route_id = 300100288, start_route = false, area_id = 2 },
	{ config_id = 597020, gadget_id = 70360137, pos = { x = 2027.853, y = 419.407, z = -1258.044 }, rot = { x = 356.600, y = 310.388, z = 3.785 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597021, gadget_id = 70360137, pos = { x = 2029.652, y = 418.007, z = -1256.268 }, rot = { x = 356.600, y = 310.388, z = 3.785 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597022, gadget_id = 70360137, pos = { x = 2031.135, y = 416.732, z = -1254.523 }, rot = { x = 356.600, y = 310.388, z = 3.785 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597024, gadget_id = 70360143, pos = { x = 2000.819, y = 419.550, z = -1266.508 }, rot = { x = 0.000, y = 355.006, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597025, gadget_id = 70360137, pos = { x = 1999.375, y = 417.879, z = -1264.966 }, rot = { x = 0.000, y = 355.006, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597027, gadget_id = 70360137, pos = { x = 1997.491, y = 416.160, z = -1267.004 }, rot = { x = 0.000, y = 323.387, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597028, gadget_id = 70360137, pos = { x = 1996.364, y = 414.510, z = -1269.066 }, rot = { x = 0.000, y = 323.387, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597029, gadget_id = 70360137, pos = { x = 1995.657, y = 412.667, z = -1271.048 }, rot = { x = 0.000, y = 323.387, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597030, gadget_id = 70360137, pos = { x = 1996.407, y = 424.584, z = -1269.344 }, rot = { x = 0.000, y = 17.442, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597031, gadget_id = 70360137, pos = { x = 1998.634, y = 423.143, z = -1269.122 }, rot = { x = 0.000, y = 17.442, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597032, gadget_id = 70360137, pos = { x = 2000.730, y = 421.702, z = -1268.456 }, rot = { x = 0.000, y = 17.442, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597033, gadget_id = 70360137, pos = { x = 2026.738, y = 420.969, z = -1275.239 }, rot = { x = 0.000, y = 141.638, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597034, gadget_id = 70360137, pos = { x = 2024.403, y = 419.321, z = -1274.783 }, rot = { x = 0.000, y = 141.638, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597035, gadget_id = 70360137, pos = { x = 2022.353, y = 417.673, z = -1274.352 }, rot = { x = 0.000, y = 141.638, z = 0.000 }, level = 1, start_route = false, area_id = 2 },
	{ config_id = 597036, gadget_id = 70360137, pos = { x = 2020.425, y = 416.025, z = -1274.122 }, rot = { x = 0.000, y = 141.638, z = 0.000 }, level = 1, start_route = false, area_id = 2 }
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
		-- description = ,
		monsters = { },
		gadgets = { 597001, 597017, 597018, 597019, 597020, 597021, 597022, 597024, 597025, 597027, 597028, 597029, 597030, 597031, 597032, 597033, 597034, 597035, 597036 },
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