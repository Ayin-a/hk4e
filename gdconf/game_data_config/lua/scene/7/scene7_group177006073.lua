-- 基础信息
local base_info = {
	group_id = 177006073
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
	{ config_id = 73001, gadget_id = 70500000, pos = { x = 442.394, y = 156.651, z = -36.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73003, gadget_id = 70500000, pos = { x = 427.964, y = 144.000, z = -151.306 }, rot = { x = 359.948, y = 240.993, z = 356.480 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73004, gadget_id = 70500000, pos = { x = 455.388, y = 141.277, z = -157.878 }, rot = { x = 4.944, y = 46.247, z = 355.283 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73005, gadget_id = 70500000, pos = { x = 427.062, y = 143.527, z = -157.075 }, rot = { x = 0.000, y = 20.888, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73006, gadget_id = 70500000, pos = { x = 412.816, y = 173.039, z = -157.680 }, rot = { x = 0.000, y = 307.453, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73007, gadget_id = 70500000, pos = { x = 393.366, y = 176.427, z = -153.992 }, rot = { x = 0.000, y = 344.585, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73010, gadget_id = 70500000, pos = { x = 392.897, y = 135.228, z = -240.877 }, rot = { x = 348.959, y = 108.689, z = 11.792 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73011, gadget_id = 70500000, pos = { x = 353.573, y = 133.040, z = -250.999 }, rot = { x = 357.369, y = 66.139, z = 354.074 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73012, gadget_id = 70500000, pos = { x = 485.084, y = 134.164, z = -308.703 }, rot = { x = 0.000, y = 307.673, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73014, gadget_id = 70500000, pos = { x = 536.877, y = 139.011, z = -307.301 }, rot = { x = 0.000, y = 0.000, z = 16.156 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73015, gadget_id = 70500000, pos = { x = 405.368, y = 170.389, z = -203.706 }, rot = { x = 0.000, y = 274.594, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73017, gadget_id = 70500000, pos = { x = 327.887, y = 133.490, z = -263.372 }, rot = { x = 0.000, y = 62.304, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73019, gadget_id = 70500000, pos = { x = 233.315, y = 146.665, z = -247.432 }, rot = { x = 0.000, y = 91.092, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 73023, gadget_id = 70500000, pos = { x = 392.179, y = 167.717, z = -215.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 }
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
		gadgets = { 73001, 73003, 73004, 73005, 73006, 73007, 73010, 73011, 73012, 73014, 73015, 73017, 73019, 73023 },
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