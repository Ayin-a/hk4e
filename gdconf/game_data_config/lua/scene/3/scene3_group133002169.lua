-- 基础信息
local base_info = {
	group_id = 133002169
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
		{ config_id = 1476, gadget_id = 70500000, pos = { x = 1720.465, y = 274.413, z = -895.490 }, rot = { x = 0.000, y = 82.051, z = 0.000 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1477, gadget_id = 70500000, pos = { x = 1720.290, y = 273.108, z = -888.861 }, rot = { x = 0.000, y = 291.948, z = 0.000 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1478, gadget_id = 70500000, pos = { x = 1717.125, y = 273.564, z = -891.907 }, rot = { x = 351.948, y = 183.703, z = 0.000 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1479, gadget_id = 70500000, pos = { x = 1723.527, y = 273.911, z = -892.336 }, rot = { x = 0.000, y = 291.948, z = 0.000 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1480, gadget_id = 70500000, pos = { x = 1718.156, y = 274.040, z = -894.222 }, rot = { x = 0.000, y = 122.143, z = 0.000 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1481, gadget_id = 70500000, pos = { x = 1717.819, y = 273.184, z = -889.709 }, rot = { x = 352.318, y = 210.925, z = 358.790 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1482, gadget_id = 70500000, pos = { x = 1722.681, y = 274.233, z = -894.442 }, rot = { x = 15.893, y = 10.903, z = 356.941 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 },
		{ config_id = 1483, gadget_id = 70500000, pos = { x = 1722.725, y = 273.376, z = -889.732 }, rot = { x = 7.555, y = 278.553, z = 350.241 }, level = 10, point_type = 2003, isOneoff = true, area_id = 3 }
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