-- 基础信息
local base_info = {
	group_id = 133221018
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
	{ config_id = 18001, gadget_id = 70290002, pos = { x = -3173.078, y = 202.489, z = -4461.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 18002, gadget_id = 70500000, pos = { x = -3174.149, y = 204.107, z = -4461.223 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 2034, owner = 18001, area_id = 11 },
	{ config_id = 18003, gadget_id = 70500000, pos = { x = -3172.208, y = 205.117, z = -4462.948 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 2034, owner = 18001, area_id = 11 },
	{ config_id = 18004, gadget_id = 70500000, pos = { x = -3173.035, y = 205.397, z = -4460.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2034, owner = 18001, area_id = 11 },
	{ config_id = 18005, gadget_id = 70500000, pos = { x = -3082.530, y = 238.817, z = -4500.590 }, rot = { x = 0.000, y = 354.263, z = 0.000 }, level = 27, point_type = 2041, area_id = 11 },
	{ config_id = 18006, gadget_id = 70290001, pos = { x = -3298.706, y = 201.094, z = -4462.780 }, rot = { x = 0.000, y = 204.258, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 18007, gadget_id = 70500000, pos = { x = -3298.886, y = 201.663, z = -4463.139 }, rot = { x = 0.000, y = 204.258, z = 0.000 }, level = 27, point_type = 3002, owner = 18006, area_id = 11 },
	{ config_id = 18008, gadget_id = 70500000, pos = { x = -3298.484, y = 201.949, z = -4462.446 }, rot = { x = 0.000, y = 204.258, z = 0.000 }, level = 27, point_type = 3002, owner = 18006, area_id = 11 },
	{ config_id = 18009, gadget_id = 70500000, pos = { x = -3298.907, y = 202.361, z = -4462.576 }, rot = { x = 0.000, y = 204.258, z = 0.000 }, level = 27, point_type = 3002, owner = 18006, area_id = 11 },
	{ config_id = 18010, gadget_id = 70290001, pos = { x = -3188.991, y = 201.030, z = -4558.771 }, rot = { x = 0.000, y = 79.778, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 18011, gadget_id = 70500000, pos = { x = -3188.594, y = 201.599, z = -4558.717 }, rot = { x = 0.000, y = 79.778, z = 0.000 }, level = 27, point_type = 3002, owner = 18010, area_id = 11 },
	{ config_id = 18012, gadget_id = 70500000, pos = { x = -3189.393, y = 201.885, z = -4558.778 }, rot = { x = 0.000, y = 79.778, z = 0.000 }, level = 27, point_type = 3002, owner = 18010, area_id = 11 },
	{ config_id = 18013, gadget_id = 70500000, pos = { x = -3189.045, y = 202.297, z = -4559.054 }, rot = { x = 0.000, y = 79.778, z = 0.000 }, level = 27, point_type = 3002, owner = 18010, area_id = 11 },
	{ config_id = 18014, gadget_id = 70290001, pos = { x = -3168.224, y = 246.755, z = -4430.101 }, rot = { x = 0.000, y = 291.396, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 18015, gadget_id = 70500000, pos = { x = -3168.591, y = 247.324, z = -4429.939 }, rot = { x = 0.000, y = 291.396, z = 0.000 }, level = 27, point_type = 3002, owner = 18014, area_id = 11 },
	{ config_id = 18016, gadget_id = 70500000, pos = { x = -3167.879, y = 247.610, z = -4430.306 }, rot = { x = 0.000, y = 291.396, z = 0.000 }, level = 27, point_type = 3002, owner = 18014, area_id = 11 },
	{ config_id = 18017, gadget_id = 70500000, pos = { x = -3168.030, y = 248.022, z = -4429.889 }, rot = { x = 0.000, y = 291.396, z = 0.000 }, level = 27, point_type = 3002, owner = 18014, area_id = 11 },
	{ config_id = 18018, gadget_id = 70500000, pos = { x = -3220.201, y = 222.253, z = -4514.762 }, rot = { x = 0.000, y = 157.752, z = 0.000 }, level = 27, point_type = 2004, area_id = 11 },
	{ config_id = 18019, gadget_id = 70500000, pos = { x = -3213.201, y = 247.944, z = -4430.678 }, rot = { x = 0.000, y = 346.763, z = 0.000 }, level = 27, point_type = 2001, area_id = 11 },
	{ config_id = 18020, gadget_id = 70500000, pos = { x = -3323.392, y = 270.993, z = -4437.567 }, rot = { x = 0.000, y = 136.141, z = 0.000 }, level = 27, point_type = 2001, area_id = 11 },
	{ config_id = 18021, gadget_id = 70500000, pos = { x = -3217.652, y = 259.721, z = -4536.291 }, rot = { x = 0.000, y = 246.326, z = 0.000 }, level = 27, point_type = 2001, area_id = 11 },
	{ config_id = 18022, gadget_id = 70500000, pos = { x = -3084.326, y = 245.705, z = -4529.489 }, rot = { x = 0.000, y = 4.334, z = 0.000 }, level = 27, point_type = 2004, area_id = 11 },
	{ config_id = 18023, gadget_id = 70500000, pos = { x = -3259.786, y = 255.962, z = -4424.913 }, rot = { x = 0.000, y = 124.300, z = 0.000 }, level = 27, point_type = 2001, area_id = 11 },
	{ config_id = 18024, gadget_id = 70500000, pos = { x = -3074.750, y = 247.018, z = -4452.580 }, rot = { x = 0.000, y = 41.384, z = 0.000 }, level = 27, point_type = 2004, area_id = 11 },
	{ config_id = 18025, gadget_id = 70500000, pos = { x = -3162.092, y = 252.040, z = -4465.321 }, rot = { x = 0.000, y = 147.525, z = 0.000 }, level = 27, point_type = 2004, area_id = 11 },
	{ config_id = 18026, gadget_id = 70500000, pos = { x = -3302.616, y = 210.126, z = -4601.826 }, rot = { x = 359.000, y = 98.571, z = 8.389 }, level = 27, point_type = 2036, area_id = 11 },
	{ config_id = 18027, gadget_id = 70500000, pos = { x = -3239.321, y = 210.308, z = -4511.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1008, area_id = 11 },
	{ config_id = 18028, gadget_id = 70500000, pos = { x = -3246.292, y = 209.941, z = -4507.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1008, area_id = 11 },
	{ config_id = 18029, gadget_id = 70500000, pos = { x = -3243.433, y = 210.114, z = -4515.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1008, area_id = 11 },
	{ config_id = 18030, gadget_id = 70500000, pos = { x = -3315.869, y = 201.396, z = -4526.885 }, rot = { x = 0.000, y = 304.856, z = 0.000 }, level = 27, point_type = 1002, area_id = 11 },
	{ config_id = 18031, gadget_id = 70500000, pos = { x = -3298.166, y = 203.305, z = -4532.286 }, rot = { x = 0.000, y = 266.474, z = 0.000 }, level = 27, point_type = 1002, area_id = 11 }
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
		gadgets = { 18001, 18002, 18003, 18004, 18005, 18006, 18007, 18008, 18009, 18010, 18011, 18012, 18013, 18014, 18015, 18016, 18017, 18018, 18019, 18020, 18021, 18022, 18023, 18024, 18025, 18026, 18027, 18028, 18029, 18030, 18031 },
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