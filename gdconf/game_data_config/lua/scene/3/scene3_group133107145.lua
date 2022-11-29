-- 基础信息
local base_info = {
	group_id = 133107145
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
	{ config_id = 145001, gadget_id = 70290003, pos = { x = -279.372, y = 204.548, z = 858.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145002, gadget_id = 70500000, pos = { x = -279.372, y = 204.651, z = 858.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 145001, area_id = 8 },
	{ config_id = 145003, gadget_id = 70500000, pos = { x = -279.372, y = 204.651, z = 858.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 145001, area_id = 8 },
	{ config_id = 145004, gadget_id = 70290014, pos = { x = -257.752, y = 180.680, z = 872.813 }, rot = { x = 0.000, y = 295.849, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145005, gadget_id = 70500000, pos = { x = -258.022, y = 180.680, z = 872.332 }, rot = { x = 0.000, y = 295.850, z = 0.000 }, level = 32, point_type = 2015, owner = 145004, area_id = 8 },
	{ config_id = 145006, gadget_id = 70500000, pos = { x = -329.881, y = 280.059, z = 979.060 }, rot = { x = 0.000, y = 8.013, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145007, gadget_id = 70500000, pos = { x = -470.478, y = 226.159, z = 983.791 }, rot = { x = 0.000, y = 80.949, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145008, gadget_id = 70500000, pos = { x = -431.317, y = 226.788, z = 796.824 }, rot = { x = 0.000, y = 80.821, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145009, gadget_id = 70500000, pos = { x = -375.532, y = 225.536, z = 936.468 }, rot = { x = 0.000, y = 225.981, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145010, gadget_id = 70500000, pos = { x = -279.044, y = 193.756, z = 838.982 }, rot = { x = 0.000, y = 294.285, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145011, gadget_id = 70500000, pos = { x = -475.824, y = 181.277, z = 888.957 }, rot = { x = 0.000, y = 326.159, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145012, gadget_id = 70500000, pos = { x = -417.820, y = 192.785, z = 911.596 }, rot = { x = 0.000, y = 93.396, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145013, gadget_id = 70500000, pos = { x = -394.293, y = 203.161, z = 873.365 }, rot = { x = 0.000, y = 224.203, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145014, gadget_id = 70500000, pos = { x = -300.325, y = 194.350, z = 889.351 }, rot = { x = 0.000, y = 42.138, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145015, gadget_id = 70500000, pos = { x = -427.744, y = 247.862, z = 1008.844 }, rot = { x = 0.000, y = 218.869, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145016, gadget_id = 70500000, pos = { x = -331.572, y = 216.204, z = 795.935 }, rot = { x = 0.000, y = 235.710, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145017, gadget_id = 70500000, pos = { x = -500.270, y = 224.468, z = 825.153 }, rot = { x = 0.000, y = 240.923, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145018, gadget_id = 70500000, pos = { x = -440.571, y = 210.983, z = 853.296 }, rot = { x = 0.000, y = 245.459, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145019, gadget_id = 70500000, pos = { x = -280.559, y = 231.589, z = 938.586 }, rot = { x = 0.000, y = 164.381, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145020, gadget_id = 70290001, pos = { x = -286.913, y = 185.232, z = 889.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145021, gadget_id = 70500000, pos = { x = -286.896, y = 185.801, z = 889.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145020, area_id = 8 },
	{ config_id = 145022, gadget_id = 70500000, pos = { x = -286.978, y = 186.087, z = 889.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145020, area_id = 8 },
	{ config_id = 145023, gadget_id = 70500000, pos = { x = -286.645, y = 186.499, z = 889.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145020, area_id = 8 },
	{ config_id = 145024, gadget_id = 70290001, pos = { x = -433.505, y = 232.760, z = 770.851 }, rot = { x = 0.000, y = 16.350, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145025, gadget_id = 70500000, pos = { x = -433.376, y = 233.329, z = 771.231 }, rot = { x = 0.000, y = 16.347, z = 0.000 }, level = 32, point_type = 3002, owner = 145024, area_id = 8 },
	{ config_id = 145026, gadget_id = 70500000, pos = { x = -433.679, y = 233.615, z = 770.489 }, rot = { x = 0.000, y = 16.347, z = 0.000 }, level = 32, point_type = 3002, owner = 145024, area_id = 8 },
	{ config_id = 145027, gadget_id = 70500000, pos = { x = -433.277, y = 234.027, z = 770.677 }, rot = { x = 0.000, y = 16.347, z = 0.000 }, level = 32, point_type = 3002, owner = 145024, area_id = 8 },
	{ config_id = 145028, gadget_id = 70290001, pos = { x = -360.030, y = 240.135, z = 769.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 8 },
	{ config_id = 145029, gadget_id = 70500000, pos = { x = -360.013, y = 240.704, z = 770.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 145028, area_id = 8 },
	{ config_id = 145030, gadget_id = 70500000, pos = { x = -360.095, y = 240.990, z = 769.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 145028, area_id = 8 },
	{ config_id = 145031, gadget_id = 70500000, pos = { x = -359.762, y = 241.402, z = 769.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 145028, area_id = 8 },
	{ config_id = 145032, gadget_id = 70290001, pos = { x = -354.801, y = 205.131, z = 846.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145033, gadget_id = 70500000, pos = { x = -354.784, y = 205.700, z = 846.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145032, area_id = 8 },
	{ config_id = 145034, gadget_id = 70500000, pos = { x = -354.866, y = 205.986, z = 846.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145032, area_id = 8 },
	{ config_id = 145035, gadget_id = 70500000, pos = { x = -354.533, y = 206.398, z = 846.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145032, area_id = 8 },
	{ config_id = 145036, gadget_id = 70290001, pos = { x = -449.247, y = 206.304, z = 883.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145037, gadget_id = 70500000, pos = { x = -449.230, y = 206.873, z = 884.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145036, area_id = 8 },
	{ config_id = 145038, gadget_id = 70500000, pos = { x = -449.312, y = 207.159, z = 883.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145036, area_id = 8 },
	{ config_id = 145039, gadget_id = 70500000, pos = { x = -448.979, y = 207.571, z = 883.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145036, area_id = 8 },
	{ config_id = 145040, gadget_id = 70290001, pos = { x = -357.459, y = 223.064, z = 814.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145041, gadget_id = 70500000, pos = { x = -357.442, y = 223.633, z = 815.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145040, area_id = 8 },
	{ config_id = 145042, gadget_id = 70500000, pos = { x = -357.524, y = 223.919, z = 814.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145040, area_id = 8 },
	{ config_id = 145043, gadget_id = 70500000, pos = { x = -357.191, y = 224.331, z = 814.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145040, area_id = 8 },
	{ config_id = 145044, gadget_id = 70290001, pos = { x = -334.849, y = 228.941, z = 912.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145045, gadget_id = 70500000, pos = { x = -334.832, y = 229.510, z = 913.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145044, area_id = 8 },
	{ config_id = 145046, gadget_id = 70500000, pos = { x = -334.914, y = 229.796, z = 912.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145044, area_id = 8 },
	{ config_id = 145047, gadget_id = 70500000, pos = { x = -334.581, y = 230.208, z = 912.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3002, owner = 145044, area_id = 8 },
	{ config_id = 145048, gadget_id = 70290003, pos = { x = -339.500, y = 288.567, z = 1015.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145049, gadget_id = 70500000, pos = { x = -339.500, y = 288.670, z = 1015.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 145048, area_id = 8 },
	{ config_id = 145050, gadget_id = 70500000, pos = { x = -339.500, y = 288.670, z = 1015.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 145048, area_id = 8 },
	{ config_id = 145051, gadget_id = 70290002, pos = { x = -275.269, y = 217.185, z = 779.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 8 },
	{ config_id = 145052, gadget_id = 70500000, pos = { x = -276.340, y = 218.803, z = 780.473 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 24, point_type = 3011, owner = 145051, area_id = 8 },
	{ config_id = 145053, gadget_id = 70500000, pos = { x = -274.399, y = 219.813, z = 778.748 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 24, point_type = 3011, owner = 145051, area_id = 8 },
	{ config_id = 145054, gadget_id = 70500000, pos = { x = -275.226, y = 220.093, z = 781.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3011, owner = 145051, area_id = 8 },
	{ config_id = 145055, gadget_id = 70290002, pos = { x = -336.924, y = 230.585, z = 916.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 145056, gadget_id = 70500000, pos = { x = -337.995, y = 232.203, z = 917.297 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 32, point_type = 3001, owner = 145055, area_id = 8 },
	{ config_id = 145057, gadget_id = 70500000, pos = { x = -336.054, y = 233.213, z = 915.572 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 32, point_type = 3001, owner = 145055, area_id = 8 },
	{ config_id = 145058, gadget_id = 70500000, pos = { x = -336.881, y = 233.493, z = 917.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3001, owner = 145055, area_id = 8 },
	{ config_id = 145059, gadget_id = 70500000, pos = { x = -478.012, y = 224.610, z = 821.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145060, gadget_id = 70500000, pos = { x = -379.116, y = 216.894, z = 850.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145061, gadget_id = 70500000, pos = { x = -464.831, y = 184.504, z = 940.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 145062, gadget_id = 70500000, pos = { x = -384.176, y = 200.315, z = 900.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 145063, gadget_id = 70500000, pos = { x = -416.853, y = 215.848, z = 817.092 }, rot = { x = 9.459, y = 317.297, z = 355.564 }, level = 32, point_type = 2004, area_id = 8 }
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
		gadgets = { 145001, 145002, 145003, 145004, 145005, 145006, 145007, 145008, 145009, 145010, 145011, 145012, 145013, 145014, 145015, 145016, 145017, 145018, 145019, 145020, 145021, 145022, 145023, 145024, 145025, 145026, 145027, 145028, 145029, 145030, 145031, 145032, 145033, 145034, 145035, 145036, 145037, 145038, 145039, 145040, 145041, 145042, 145043, 145044, 145045, 145046, 145047, 145048, 145049, 145050, 145051, 145052, 145053, 145054, 145055, 145056, 145057, 145058, 145059, 145060, 145061, 145062, 145063 },
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