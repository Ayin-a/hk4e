-- 基础信息
local base_info = {
	group_id = 133106472
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
	{ config_id = 472001, gadget_id = 70290317, pos = { x = -424.726, y = 217.779, z = 1732.373 }, rot = { x = 0.000, y = 335.776, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472002, gadget_id = 70290317, pos = { x = -837.406, y = 234.957, z = 2012.952 }, rot = { x = 342.797, y = 259.790, z = 352.021 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472003, gadget_id = 70290317, pos = { x = -414.554, y = 220.660, z = 1731.188 }, rot = { x = 0.000, y = 323.427, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472004, gadget_id = 70500000, pos = { x = -837.406, y = 234.957, z = 2012.952 }, rot = { x = 342.805, y = 259.831, z = 352.008 }, level = 36, point_type = 9190, isOneoff = true, owner = 472002, persistent = true, area_id = 19 },
	{ config_id = 472005, gadget_id = 70290317, pos = { x = -425.856, y = 216.547, z = 1735.252 }, rot = { x = 0.000, y = 60.196, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472006, gadget_id = 70290317, pos = { x = -980.631, y = 231.776, z = 1885.199 }, rot = { x = 0.000, y = 86.598, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472007, gadget_id = 70500000, pos = { x = -980.631, y = 231.776, z = 1885.199 }, rot = { x = 0.000, y = 86.599, z = 0.000 }, level = 36, point_type = 9190, isOneoff = true, owner = 472006, persistent = true, area_id = 19 },
	{ config_id = 472008, gadget_id = 70290317, pos = { x = -647.060, y = 263.552, z = 1465.197 }, rot = { x = 6.064, y = 142.795, z = 7.922 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472009, gadget_id = 70500000, pos = { x = -647.060, y = 263.552, z = 1465.197 }, rot = { x = 6.065, y = 142.794, z = 7.923 }, level = 36, point_type = 9190, isOneoff = true, owner = 472008, persistent = true, area_id = 19 },
	{ config_id = 472010, gadget_id = 70290317, pos = { x = -430.097, y = 303.735, z = 1756.654 }, rot = { x = 17.419, y = 3.087, z = 10.213 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472011, gadget_id = 70500000, pos = { x = -430.097, y = 303.735, z = 1756.654 }, rot = { x = 17.414, y = 3.085, z = 10.209 }, level = 36, point_type = 9190, isOneoff = true, owner = 472010, persistent = true, area_id = 19 },
	{ config_id = 472012, gadget_id = 70290317, pos = { x = -574.908, y = 272.888, z = 1921.802 }, rot = { x = 329.198, y = 13.605, z = 11.815 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472013, gadget_id = 70500000, pos = { x = -574.908, y = 272.888, z = 1921.802 }, rot = { x = 329.198, y = 13.605, z = 11.810 }, level = 36, point_type = 9190, isOneoff = true, owner = 472012, persistent = true, area_id = 19 },
	{ config_id = 472014, gadget_id = 70290317, pos = { x = -988.258, y = 309.327, z = 1598.141 }, rot = { x = 0.000, y = 161.809, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472015, gadget_id = 70500000, pos = { x = -988.258, y = 309.327, z = 1598.141 }, rot = { x = 0.000, y = 161.808, z = 0.000 }, level = 36, point_type = 9190, isOneoff = true, owner = 472014, persistent = true, area_id = 19 },
	{ config_id = 472016, gadget_id = 70290317, pos = { x = -517.439, y = 125.942, z = 1830.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472017, gadget_id = 70500000, pos = { x = -517.439, y = 125.942, z = 1830.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 9190, isOneoff = true, owner = 472016, persistent = true, area_id = 19 },
	{ config_id = 472018, gadget_id = 70290317, pos = { x = -825.280, y = 98.947, z = 1939.501 }, rot = { x = 353.410, y = 303.009, z = 7.608 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472019, gadget_id = 70500000, pos = { x = -825.280, y = 98.947, z = 1939.501 }, rot = { x = 353.409, y = 303.007, z = 7.607 }, level = 36, point_type = 9190, isOneoff = true, owner = 472018, persistent = true, area_id = 19 },
	{ config_id = 472020, gadget_id = 70290317, pos = { x = -845.033, y = 154.238, z = 1661.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 472021, gadget_id = 70500000, pos = { x = -845.033, y = 154.238, z = 1661.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 9190, isOneoff = true, owner = 472020, persistent = true, area_id = 19 }
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
		gadgets = { 472001, 472002, 472003, 472004, 472005, 472006, 472007, 472008, 472009, 472010, 472011, 472012, 472013, 472014, 472015, 472016, 472017, 472018, 472019, 472020, 472021 },
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