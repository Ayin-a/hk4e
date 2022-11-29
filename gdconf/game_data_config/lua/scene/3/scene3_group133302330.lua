-- 基础信息
local base_info = {
	group_id = 133302330
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
	{ config_id = 330001, gadget_id = 70500000, pos = { x = -621.727, y = 200.270, z = 2862.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 330002, gadget_id = 70500000, pos = { x = -614.270, y = 202.029, z = 2850.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 330003, gadget_id = 70540041, pos = { x = -607.337, y = 200.147, z = 2875.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 330004, gadget_id = 70500000, pos = { x = -607.069, y = 201.129, z = 2875.825 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 330003, area_id = 24 },
	{ config_id = 330005, gadget_id = 70500000, pos = { x = -607.257, y = 201.019, z = 2875.616 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 330003, area_id = 24 },
	{ config_id = 330006, gadget_id = 70500000, pos = { x = -607.038, y = 200.770, z = 2875.447 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 330003, area_id = 24 },
	{ config_id = 330007, gadget_id = 70500000, pos = { x = -607.618, y = 200.674, z = 2875.532 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 330003, area_id = 24 },
	{ config_id = 330008, gadget_id = 70290001, pos = { x = -618.926, y = 225.176, z = 2906.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 330009, gadget_id = 70500000, pos = { x = -618.909, y = 225.745, z = 2907.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 330008, area_id = 24 },
	{ config_id = 330010, gadget_id = 70500000, pos = { x = -618.991, y = 226.031, z = 2906.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 330008, area_id = 24 },
	{ config_id = 330011, gadget_id = 70500000, pos = { x = -618.658, y = 226.443, z = 2906.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 330008, area_id = 24 },
	{ config_id = 330012, gadget_id = 70290008, pos = { x = -669.407, y = 199.506, z = 2903.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 330013, gadget_id = 70290009, pos = { x = -686.003, y = 256.512, z = 3058.184 }, rot = { x = 346.828, y = 3.668, z = 344.212 }, level = 27, area_id = 22 },
	{ config_id = 330014, gadget_id = 70500000, pos = { x = -686.003, y = 256.512, z = 3058.184 }, rot = { x = 346.828, y = 3.668, z = 344.212 }, level = 27, point_type = 3005, owner = 330013, area_id = 22 },
	{ config_id = 330015, gadget_id = 70500000, pos = { x = -669.407, y = 199.506, z = 2903.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3008, owner = 330012, area_id = 24 },
	{ config_id = 330016, gadget_id = 70290002, pos = { x = -884.934, y = 226.619, z = 3046.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 330017, gadget_id = 70500000, pos = { x = -886.005, y = 228.237, z = 3047.614 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330016, area_id = 23 },
	{ config_id = 330018, gadget_id = 70290002, pos = { x = -729.390, y = 219.898, z = 2995.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 330019, gadget_id = 70500000, pos = { x = -730.461, y = 221.516, z = 2996.431 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 330018, area_id = 23 },
	{ config_id = 330020, gadget_id = 70500000, pos = { x = -728.520, y = 222.526, z = 2994.706 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 330018, area_id = 23 },
	{ config_id = 330021, gadget_id = 70500000, pos = { x = -729.347, y = 222.806, z = 2997.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 330018, area_id = 23 },
	{ config_id = 330022, gadget_id = 70290002, pos = { x = -591.188, y = 218.891, z = 3057.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 330023, gadget_id = 70500000, pos = { x = -592.259, y = 220.509, z = 3058.133 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 330022, area_id = 22 },
	{ config_id = 330024, gadget_id = 70500000, pos = { x = -590.318, y = 221.519, z = 3056.407 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 330022, area_id = 22 },
	{ config_id = 330025, gadget_id = 70500000, pos = { x = -591.145, y = 221.799, z = 3058.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 330022, area_id = 22 },
	{ config_id = 330026, gadget_id = 70290002, pos = { x = -513.259, y = 200.502, z = 3006.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 330027, gadget_id = 70500000, pos = { x = -514.330, y = 202.120, z = 3006.985 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330026, area_id = 24 },
	{ config_id = 330028, gadget_id = 70500000, pos = { x = -512.389, y = 203.130, z = 3005.260 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330026, area_id = 24 },
	{ config_id = 330029, gadget_id = 70500000, pos = { x = -513.216, y = 203.410, z = 3007.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330026, area_id = 24 },
	{ config_id = 330030, gadget_id = 70290002, pos = { x = -954.900, y = 249.324, z = 3021.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 330031, gadget_id = 70500000, pos = { x = -955.971, y = 250.942, z = 3021.757 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330030, area_id = 23 },
	{ config_id = 330032, gadget_id = 70500000, pos = { x = -954.030, y = 251.952, z = 3020.032 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330030, area_id = 23 },
	{ config_id = 330033, gadget_id = 70500000, pos = { x = -954.857, y = 252.232, z = 3022.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330030, area_id = 23 },
	{ config_id = 330034, gadget_id = 70540037, pos = { x = -875.826, y = 229.165, z = 3031.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 330035, gadget_id = 70500000, pos = { x = -875.440, y = 229.541, z = 3031.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 330034, area_id = 23 },
	{ config_id = 330036, gadget_id = 70500000, pos = { x = -875.995, y = 229.887, z = 3031.556 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 330034, area_id = 23 },
	{ config_id = 330037, gadget_id = 70540037, pos = { x = -760.002, y = 225.455, z = 3052.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 330038, gadget_id = 70500000, pos = { x = -759.615, y = 225.830, z = 3052.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 330037, area_id = 23 },
	{ config_id = 330039, gadget_id = 70500000, pos = { x = -760.171, y = 226.176, z = 3052.827 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 330037, area_id = 23 },
	{ config_id = 330040, gadget_id = 70540037, pos = { x = -608.536, y = 213.186, z = 2974.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 330041, gadget_id = 70500000, pos = { x = -608.150, y = 213.562, z = 2974.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 330040, area_id = 24 },
	{ config_id = 330042, gadget_id = 70500000, pos = { x = -608.705, y = 213.907, z = 2975.081 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 330040, area_id = 24 },
	{ config_id = 330043, gadget_id = 70540037, pos = { x = -539.500, y = 214.724, z = 3048.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 330044, gadget_id = 70500000, pos = { x = -539.113, y = 215.099, z = 3048.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 330043, area_id = 24 },
	{ config_id = 330045, gadget_id = 70500000, pos = { x = -539.669, y = 215.445, z = 3049.057 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 330043, area_id = 24 },
	{ config_id = 330046, gadget_id = 70500000, pos = { x = -884.064, y = 229.247, z = 3045.889 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330016, area_id = 23 },
	{ config_id = 330047, gadget_id = 70500000, pos = { x = -884.891, y = 229.527, z = 3048.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 330016, area_id = 23 },
	{ config_id = 330048, gadget_id = 70290008, pos = { x = -666.177, y = 245.047, z = 3058.886 }, rot = { x = 0.000, y = 0.000, z = 344.181 }, level = 27, area_id = 22 },
	{ config_id = 330049, gadget_id = 70500000, pos = { x = -666.177, y = 245.047, z = 3058.886 }, rot = { x = 0.000, y = 0.000, z = 344.181 }, level = 27, point_type = 3008, owner = 330048, area_id = 22 }
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
		gadgets = { 330001, 330002, 330003, 330004, 330005, 330006, 330007, 330008, 330009, 330010, 330011, 330012, 330013, 330014, 330015, 330016, 330017, 330018, 330019, 330020, 330021, 330022, 330023, 330024, 330025, 330026, 330027, 330028, 330029, 330030, 330031, 330032, 330033, 330034, 330035, 330036, 330037, 330038, 330039, 330040, 330041, 330042, 330043, 330044, 330045, 330046, 330047, 330048, 330049 },
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