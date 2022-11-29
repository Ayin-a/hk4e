-- 基础信息
local base_info = {
	group_id = 199003161
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
	{ config_id = 161001, gadget_id = 70290011, pos = { x = -687.514, y = 171.968, z = -135.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 161002, gadget_id = 70500000, pos = { x = -687.514, y = 171.968, z = -135.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3009, owner = 161001, area_id = 403 },
	{ config_id = 161003, gadget_id = 70500000, pos = { x = -708.190, y = 122.025, z = -112.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2003, area_id = 403 },
	{ config_id = 161004, gadget_id = 70500000, pos = { x = -706.981, y = 122.295, z = -114.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2003, area_id = 403 },
	{ config_id = 161005, gadget_id = 70500000, pos = { x = -708.703, y = 122.164, z = -115.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2003, area_id = 403 },
	{ config_id = 161006, gadget_id = 70500000, pos = { x = -710.494, y = 121.836, z = -114.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2019, area_id = 403 },
	{ config_id = 161007, gadget_id = 70500000, pos = { x = -709.381, y = 122.312, z = -119.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2019, area_id = 403 },
	{ config_id = 161008, gadget_id = 70500000, pos = { x = -706.630, y = 122.655, z = -117.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2019, area_id = 403 },
	{ config_id = 161009, gadget_id = 70500000, pos = { x = -711.866, y = 121.744, z = -117.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2019, area_id = 403 },
	{ config_id = 161010, gadget_id = 70500000, pos = { x = -716.751, y = 161.403, z = -173.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 403 },
	{ config_id = 161011, gadget_id = 70500000, pos = { x = -685.954, y = 157.134, z = -192.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161012, gadget_id = 70500000, pos = { x = -681.050, y = 156.907, z = -191.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161013, gadget_id = 70500000, pos = { x = -689.186, y = 156.614, z = -196.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161014, gadget_id = 70500000, pos = { x = -681.786, y = 165.732, z = -176.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161015, gadget_id = 70290001, pos = { x = -703.234, y = 168.371, z = -158.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 161016, gadget_id = 70500000, pos = { x = -703.217, y = 168.940, z = -157.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161015, area_id = 403 },
	{ config_id = 161017, gadget_id = 70500000, pos = { x = -703.299, y = 169.226, z = -158.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161015, area_id = 403 },
	{ config_id = 161018, gadget_id = 70500000, pos = { x = -702.966, y = 169.638, z = -158.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161015, area_id = 403 },
	{ config_id = 161019, gadget_id = 70500000, pos = { x = -710.496, y = 164.913, z = -180.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161020, gadget_id = 70500000, pos = { x = -693.727, y = 168.691, z = -163.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161021, gadget_id = 70500000, pos = { x = -643.343, y = 119.682, z = -190.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161022, gadget_id = 70500000, pos = { x = -639.799, y = 119.340, z = -189.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161023, gadget_id = 70500000, pos = { x = -635.556, y = 119.753, z = -208.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161024, gadget_id = 70500000, pos = { x = -696.834, y = 119.805, z = -234.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161025, gadget_id = 70290001, pos = { x = -721.024, y = 125.073, z = -248.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 161026, gadget_id = 70500000, pos = { x = -721.007, y = 125.642, z = -247.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161025, area_id = 403 },
	{ config_id = 161027, gadget_id = 70500000, pos = { x = -721.089, y = 125.928, z = -248.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161025, area_id = 403 },
	{ config_id = 161028, gadget_id = 70500000, pos = { x = -720.756, y = 126.340, z = -248.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161025, area_id = 403 },
	{ config_id = 161029, gadget_id = 70500000, pos = { x = -752.186, y = 119.525, z = -168.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161030, gadget_id = 70500000, pos = { x = -735.588, y = 119.711, z = -139.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161031, gadget_id = 70500000, pos = { x = -734.623, y = 119.598, z = -135.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161032, gadget_id = 70500000, pos = { x = -751.985, y = 119.680, z = -179.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2033, area_id = 403 },
	{ config_id = 161033, gadget_id = 70290001, pos = { x = -721.145, y = 124.241, z = -174.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 161034, gadget_id = 70500000, pos = { x = -721.128, y = 124.810, z = -174.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161033, area_id = 403 },
	{ config_id = 161035, gadget_id = 70500000, pos = { x = -721.210, y = 125.096, z = -175.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161033, area_id = 403 },
	{ config_id = 161036, gadget_id = 70500000, pos = { x = -720.877, y = 125.508, z = -174.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3002, owner = 161033, area_id = 403 },
	{ config_id = 161037, gadget_id = 70290011, pos = { x = -688.694, y = 136.204, z = -153.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 161038, gadget_id = 70500000, pos = { x = -688.694, y = 136.204, z = -153.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 3009, owner = 161037, area_id = 403 },
	{ config_id = 161039, gadget_id = 70500000, pos = { x = -667.484, y = 121.845, z = -109.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 403 },
	{ config_id = 161040, gadget_id = 70500000, pos = { x = -673.688, y = 122.337, z = -110.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161041, gadget_id = 70500000, pos = { x = -678.457, y = 124.012, z = -118.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161042, gadget_id = 70500000, pos = { x = -715.339, y = 120.661, z = -210.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2004, area_id = 403 },
	{ config_id = 161043, gadget_id = 70500000, pos = { x = -670.206, y = 122.879, z = -203.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2001, area_id = 403 }
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
		gadgets = { 161001, 161002, 161003, 161004, 161005, 161006, 161007, 161008, 161009, 161010, 161011, 161012, 161013, 161014, 161015, 161016, 161017, 161018, 161019, 161020, 161021, 161022, 161023, 161024, 161025, 161026, 161027, 161028, 161029, 161030, 161031, 161032, 161033, 161034, 161035, 161036, 161037, 161038, 161039, 161040, 161041, 161042, 161043 },
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