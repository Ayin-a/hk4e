-- 基础信息
local base_info = {
	group_id = 144002016
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
	{ config_id = 16001, gadget_id = 70290001, pos = { x = 554.518, y = 121.771, z = -524.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 16002, gadget_id = 70500000, pos = { x = 554.535, y = 122.340, z = -524.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16001, area_id = 101 },
	{ config_id = 16003, gadget_id = 70500000, pos = { x = 554.453, y = 122.626, z = -524.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16001, area_id = 101 },
	{ config_id = 16004, gadget_id = 70500000, pos = { x = 554.786, y = 123.038, z = -524.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16001, area_id = 101 },
	{ config_id = 16005, gadget_id = 70500000, pos = { x = 549.896, y = 120.428, z = -517.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16006, gadget_id = 70500000, pos = { x = 612.037, y = 128.092, z = -502.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16007, gadget_id = 70500000, pos = { x = 562.987, y = 119.566, z = -403.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 101 },
	{ config_id = 16008, gadget_id = 70500000, pos = { x = 565.025, y = 119.080, z = -408.076 }, rot = { x = 0.000, y = 212.723, z = 0.000 }, level = 1, point_type = 2033, area_id = 101 },
	{ config_id = 16009, gadget_id = 70500000, pos = { x = 568.112, y = 119.387, z = -407.045 }, rot = { x = 0.000, y = 354.915, z = 0.000 }, level = 1, point_type = 2033, area_id = 101 },
	{ config_id = 16010, gadget_id = 70290008, pos = { x = 562.108, y = 119.777, z = -357.825 }, rot = { x = 0.000, y = 53.989, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 16011, gadget_id = 70500000, pos = { x = 562.108, y = 119.777, z = -357.825 }, rot = { x = 0.000, y = 53.989, z = 0.000 }, level = 1, point_type = 3008, owner = 16010, area_id = 101 },
	{ config_id = 16012, gadget_id = 70290008, pos = { x = 555.018, y = 119.663, z = -359.077 }, rot = { x = 0.000, y = 302.312, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 16013, gadget_id = 70500000, pos = { x = 555.018, y = 119.663, z = -359.077 }, rot = { x = 0.000, y = 302.310, z = 0.000 }, level = 1, point_type = 3008, owner = 16012, area_id = 101 },
	{ config_id = 16014, gadget_id = 70500000, pos = { x = 578.301, y = 121.327, z = -384.710 }, rot = { x = 0.000, y = 74.718, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16015, gadget_id = 70500000, pos = { x = 614.271, y = 128.013, z = -504.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16016, gadget_id = 70290001, pos = { x = 601.347, y = 134.028, z = -449.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 16017, gadget_id = 70500000, pos = { x = 689.427, y = 123.919, z = -557.044 }, rot = { x = 0.000, y = 47.703, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16018, gadget_id = 70500000, pos = { x = 601.364, y = 134.597, z = -448.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16016, area_id = 101 },
	{ config_id = 16019, gadget_id = 70500000, pos = { x = 543.898, y = 127.631, z = -568.077 }, rot = { x = 0.000, y = 70.926, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16020, gadget_id = 70500000, pos = { x = 601.282, y = 134.883, z = -449.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16016, area_id = 101 },
	{ config_id = 16021, gadget_id = 70500000, pos = { x = 601.615, y = 135.295, z = -449.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16016, area_id = 101 },
	{ config_id = 16022, gadget_id = 70500000, pos = { x = 585.828, y = 125.438, z = -401.913 }, rot = { x = 0.000, y = 317.322, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16023, gadget_id = 70500000, pos = { x = 596.179, y = 135.332, z = -502.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16024, gadget_id = 70500000, pos = { x = 581.304, y = 126.110, z = -493.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16028, gadget_id = 70500000, pos = { x = 553.706, y = 198.769, z = -523.718 }, rot = { x = 0.000, y = 52.570, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16030, gadget_id = 70500000, pos = { x = 624.687, y = 123.156, z = -531.031 }, rot = { x = 0.000, y = 21.521, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16034, gadget_id = 70500000, pos = { x = 645.185, y = 124.957, z = -418.725 }, rot = { x = 0.000, y = 61.088, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16038, gadget_id = 70500000, pos = { x = 558.510, y = 126.528, z = -552.936 }, rot = { x = 0.000, y = 286.567, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16042, gadget_id = 70500000, pos = { x = 466.714, y = 119.994, z = -563.072 }, rot = { x = 0.000, y = 173.464, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16045, gadget_id = 70500000, pos = { x = 623.421, y = 121.792, z = -395.601 }, rot = { x = 0.000, y = 154.095, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16053, gadget_id = 70500000, pos = { x = 565.700, y = 123.008, z = -589.838 }, rot = { x = 0.000, y = 222.192, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 16057, gadget_id = 70500000, pos = { x = 598.466, y = 124.507, z = -569.097 }, rot = { x = 0.000, y = 217.365, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 16068, gadget_id = 70290001, pos = { x = 639.194, y = 126.172, z = -425.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 16069, gadget_id = 70500000, pos = { x = 639.211, y = 126.741, z = -425.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16068, area_id = 101 },
	{ config_id = 16070, gadget_id = 70500000, pos = { x = 639.129, y = 127.027, z = -425.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16068, area_id = 101 },
	{ config_id = 16071, gadget_id = 70500000, pos = { x = 639.462, y = 127.439, z = -425.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 16068, area_id = 101 }
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
		gadgets = { 16001, 16002, 16003, 16004, 16005, 16006, 16007, 16008, 16009, 16010, 16011, 16012, 16013, 16014, 16015, 16016, 16017, 16018, 16019, 16020, 16021, 16022, 16023, 16024, 16028, 16030, 16034, 16038, 16042, 16045, 16053, 16057, 16068, 16069, 16070, 16071 },
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