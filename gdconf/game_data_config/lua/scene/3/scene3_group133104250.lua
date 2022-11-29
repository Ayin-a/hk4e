-- 基础信息
local base_info = {
	group_id = 133104250
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
	{ config_id = 250001, gadget_id = 70500000, pos = { x = 297.761, y = 217.943, z = 168.962 }, rot = { x = 8.706, y = 359.123, z = 348.517 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250002, gadget_id = 70290003, pos = { x = 376.678, y = 227.155, z = 197.604 }, rot = { x = 2.109, y = 359.989, z = 359.377 }, level = 19, area_id = 9 },
	{ config_id = 250003, gadget_id = 70500000, pos = { x = 376.679, y = 227.261, z = 197.517 }, rot = { x = 2.109, y = 359.989, z = 359.377 }, level = 19, point_type = 3003, owner = 250002, area_id = 9 },
	{ config_id = 250004, gadget_id = 70500000, pos = { x = 376.679, y = 227.254, z = 197.709 }, rot = { x = 2.109, y = 359.989, z = 359.377 }, level = 19, point_type = 3003, owner = 250002, area_id = 9 },
	{ config_id = 250005, gadget_id = 70500000, pos = { x = 425.936, y = 201.416, z = 119.063 }, rot = { x = 323.438, y = 35.812, z = 8.397 }, level = 19, point_type = 1001, area_id = 9 },
	{ config_id = 250006, gadget_id = 70290001, pos = { x = 325.869, y = 218.754, z = 173.758 }, rot = { x = 0.005, y = 359.951, z = 6.242 }, level = 19, area_id = 9 },
	{ config_id = 250007, gadget_id = 70500000, pos = { x = 325.824, y = 219.321, z = 174.159 }, rot = { x = 0.005, y = 359.951, z = 6.242 }, level = 19, point_type = 3002, owner = 250006, area_id = 9 },
	{ config_id = 250008, gadget_id = 70500000, pos = { x = 325.712, y = 219.597, z = 173.362 }, rot = { x = 0.005, y = 359.951, z = 6.242 }, level = 19, point_type = 3002, owner = 250006, area_id = 9 },
	{ config_id = 250009, gadget_id = 70500000, pos = { x = 325.998, y = 220.043, z = 173.655 }, rot = { x = 0.005, y = 359.951, z = 6.242 }, level = 19, point_type = 3002, owner = 250006, area_id = 9 },
	{ config_id = 250010, gadget_id = 70290002, pos = { x = 317.873, y = 215.778, z = 122.194 }, rot = { x = 3.581, y = 0.063, z = 355.545 }, level = 19, area_id = 9 },
	{ config_id = 250011, gadget_id = 70500000, pos = { x = 317.096, y = 217.520, z = 122.994 }, rot = { x = 3.581, y = 0.063, z = 355.545 }, level = 19, point_type = 3011, owner = 250010, area_id = 9 },
	{ config_id = 250012, gadget_id = 70500000, pos = { x = 319.196, y = 218.527, z = 121.312 }, rot = { x = 3.581, y = 0.063, z = 355.545 }, level = 19, point_type = 3011, owner = 250010, area_id = 9 },
	{ config_id = 250013, gadget_id = 70500000, pos = { x = 318.159, y = 218.591, z = 123.664 }, rot = { x = 3.581, y = 0.063, z = 355.545 }, level = 19, point_type = 3011, owner = 250010, area_id = 9 },
	{ config_id = 250014, gadget_id = 70290014, pos = { x = 335.695, y = 200.000, z = 93.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 250015, gadget_id = 70500000, pos = { x = 335.425, y = 200.000, z = 93.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2015, owner = 250014, area_id = 9 },
	{ config_id = 250016, gadget_id = 70290014, pos = { x = 324.884, y = 200.000, z = 82.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 250017, gadget_id = 70500000, pos = { x = 324.614, y = 200.000, z = 82.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2015, owner = 250016, area_id = 9 },
	{ config_id = 250018, gadget_id = 70290014, pos = { x = 507.401, y = 194.990, z = 244.633 }, rot = { x = 0.000, y = 343.554, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 250019, gadget_id = 70500000, pos = { x = 507.279, y = 194.990, z = 244.095 }, rot = { x = 0.000, y = 343.554, z = 0.000 }, level = 19, point_type = 2015, owner = 250018, area_id = 9 },
	{ config_id = 250020, gadget_id = 70500000, pos = { x = 420.405, y = 202.022, z = 120.542 }, rot = { x = 327.273, y = 0.000, z = 0.000 }, level = 19, point_type = 1001, area_id = 9 },
	{ config_id = 250021, gadget_id = 70500000, pos = { x = 492.274, y = 196.581, z = 247.007 }, rot = { x = 0.000, y = 0.000, z = 18.533 }, level = 19, point_type = 2007, area_id = 9 },
	{ config_id = 250022, gadget_id = 70500000, pos = { x = 371.059, y = 216.937, z = 184.559 }, rot = { x = 358.210, y = 0.070, z = -0.002 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250023, gadget_id = 70500000, pos = { x = 463.657, y = 194.906, z = 172.300 }, rot = { x = 0.000, y = 318.861, z = 0.000 }, level = 19, point_type = 2005, area_id = 9 },
	{ config_id = 250024, gadget_id = 70500000, pos = { x = 396.516, y = 213.548, z = 233.790 }, rot = { x = 1.863, y = 359.256, z = 358.225 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250025, gadget_id = 70500000, pos = { x = 471.391, y = 195.485, z = 203.114 }, rot = { x = 344.252, y = 309.724, z = 3.878 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250026, gadget_id = 70500000, pos = { x = 454.707, y = 196.304, z = 187.394 }, rot = { x = 355.412, y = 12.829, z = 348.145 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250027, gadget_id = 70500000, pos = { x = 366.018, y = 216.820, z = 238.059 }, rot = { x = 2.635, y = 359.650, z = 351.987 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250028, gadget_id = 70500000, pos = { x = 256.543, y = 221.374, z = 214.566 }, rot = { x = 0.866, y = 359.763, z = 352.872 }, level = 19, point_type = 2004, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 250029, gadget_id = 70290003, pos = { x = 293.562, y = 227.228, z = 162.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 250030, gadget_id = 70500000, pos = { x = 293.562, y = 227.331, z = 162.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 250029, area_id = 9 },
	{ config_id = 250031, gadget_id = 70500000, pos = { x = 293.562, y = 227.331, z = 162.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 250029, area_id = 9 },
	{ config_id = 250032, gadget_id = 70290003, pos = { x = 331.941, y = 240.459, z = 213.398 }, rot = { x = 0.000, y = 327.069, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 250033, gadget_id = 70500000, pos = { x = 331.990, y = 240.562, z = 213.321 }, rot = { x = 0.000, y = 327.069, z = 0.000 }, level = 19, point_type = 3003, owner = 250032, area_id = 9 },
	{ config_id = 250034, gadget_id = 70500000, pos = { x = 331.886, y = 240.562, z = 213.482 }, rot = { x = 0.000, y = 327.069, z = 0.000 }, level = 19, point_type = 3003, owner = 250032, area_id = 9 },
	{ config_id = 250035, gadget_id = 70500000, pos = { x = 318.360, y = 215.763, z = 123.455 }, rot = { x = 1.896, y = 3.960, z = 28.966 }, level = 19, point_type = 3011, area_id = 9 },
	{ config_id = 250036, gadget_id = 70500000, pos = { x = 317.646, y = 216.021, z = 120.814 }, rot = { x = 27.813, y = 357.748, z = 351.939 }, level = 19, point_type = 3011, area_id = 9 },
	{ config_id = 250037, gadget_id = 70500000, pos = { x = 319.240, y = 215.800, z = 121.934 }, rot = { x = 324.329, y = 308.448, z = 356.558 }, level = 19, point_type = 3011, area_id = 9 },
	{ config_id = 250038, gadget_id = 70500000, pos = { x = 418.942, y = 201.089, z = 126.512 }, rot = { x = 14.111, y = 25.141, z = 16.868 }, level = 19, point_type = 1001, area_id = 9 },
	{ config_id = 250039, gadget_id = 70500000, pos = { x = 346.208, y = 200.287, z = 47.204 }, rot = { x = 0.000, y = 359.986, z = 358.210 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250040, gadget_id = 70500000, pos = { x = 335.679, y = 205.732, z = 112.049 }, rot = { x = 6.170, y = 26.557, z = 322.120 }, level = 19, point_type = 1001, area_id = 9 },
	{ config_id = 250041, gadget_id = 70500000, pos = { x = 341.430, y = 206.410, z = 121.636 }, rot = { x = 42.017, y = 160.031, z = 359.498 }, level = 19, point_type = 1001, area_id = 9 },
	{ config_id = 250042, gadget_id = 70500000, pos = { x = 336.090, y = 205.654, z = 108.808 }, rot = { x = 34.700, y = 57.104, z = 340.299 }, level = 19, point_type = 1001, area_id = 9 },
	{ config_id = 250043, gadget_id = 70500000, pos = { x = 362.877, y = 208.019, z = 133.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250044, gadget_id = 70500000, pos = { x = 351.917, y = 204.080, z = 119.159 }, rot = { x = 352.009, y = 0.894, z = 358.989 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250045, gadget_id = 70500000, pos = { x = 320.150, y = 219.074, z = 248.503 }, rot = { x = 352.823, y = 211.550, z = 359.774 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250046, gadget_id = 70500000, pos = { x = 270.118, y = 219.610, z = 156.175 }, rot = { x = 10.027, y = 17.576, z = 338.357 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250047, gadget_id = 70500000, pos = { x = 491.041, y = 195.193, z = 234.609 }, rot = { x = 3.904, y = 205.722, z = 19.879 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250048, gadget_id = 70500000, pos = { x = 275.024, y = 203.671, z = 31.122 }, rot = { x = 358.567, y = 287.026, z = 10.669 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250049, gadget_id = 70500000, pos = { x = 282.838, y = 221.899, z = 239.673 }, rot = { x = 3.493, y = 102.405, z = 0.768 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250050, gadget_id = 70500000, pos = { x = 345.508, y = 217.427, z = 161.951 }, rot = { x = 336.458, y = 257.042, z = 359.370 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250051, gadget_id = 70500000, pos = { x = 415.687, y = 199.956, z = 151.345 }, rot = { x = 1.917, y = 27.168, z = 7.972 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250052, gadget_id = 70500000, pos = { x = 307.237, y = 218.036, z = 83.366 }, rot = { x = 357.579, y = 132.236, z = 357.397 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 250053, gadget_id = 70500000, pos = { x = 414.733, y = 198.225, z = 233.827 }, rot = { x = 359.214, y = 351.584, z = 354.702 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250054, gadget_id = 70500000, pos = { x = 493.099, y = 195.140, z = 202.372 }, rot = { x = 1.773, y = 262.018, z = 359.752 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250055, gadget_id = 70500000, pos = { x = 436.009, y = 201.641, z = 105.471 }, rot = { x = 0.000, y = 210.449, z = 0.000 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250056, gadget_id = 70500000, pos = { x = 508.296, y = 195.606, z = 193.015 }, rot = { x = 0.000, y = 158.578, z = 0.000 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250057, gadget_id = 70500000, pos = { x = 487.883, y = 195.737, z = 246.620 }, rot = { x = 358.597, y = 250.602, z = 17.052 }, level = 19, point_type = 2009, area_id = 9 },
	{ config_id = 250058, gadget_id = 70500000, pos = { x = 388.135, y = 215.507, z = 206.144 }, rot = { x = 359.029, y = 182.454, z = 1.750 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 250059, gadget_id = 70500000, pos = { x = 508.712, y = 195.606, z = 211.968 }, rot = { x = 0.000, y = 304.655, z = 0.000 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250060, gadget_id = 70500000, pos = { x = 492.997, y = 195.180, z = 237.611 }, rot = { x = 3.904, y = 108.417, z = 19.879 }, level = 19, point_type = 2002, area_id = 9 },
	{ config_id = 250061, gadget_id = 70290001, pos = { x = 380.698, y = 201.650, z = 124.769 }, rot = { x = 1.712, y = 33.584, z = 346.361 }, level = 19, area_id = 9 },
	{ config_id = 250062, gadget_id = 70500000, pos = { x = 381.054, y = 202.186, z = 125.033 }, rot = { x = 1.712, y = 33.584, z = 346.361 }, level = 19, point_type = 3002, owner = 250061, area_id = 9 },
	{ config_id = 250063, gadget_id = 70500000, pos = { x = 380.608, y = 202.507, z = 124.383 }, rot = { x = 1.712, y = 33.584, z = 346.361 }, level = 19, point_type = 3002, owner = 250061, area_id = 9 },
	{ config_id = 250064, gadget_id = 70500000, pos = { x = 381.126, y = 202.820, z = 124.403 }, rot = { x = 1.712, y = 33.584, z = 346.361 }, level = 19, point_type = 3002, owner = 250061, area_id = 9 }
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
		gadgets = { 250001, 250002, 250003, 250004, 250005, 250006, 250007, 250008, 250009, 250010, 250011, 250012, 250013, 250014, 250015, 250016, 250017, 250018, 250019, 250020, 250021, 250022, 250023, 250024, 250025, 250026, 250027, 250028, 250029, 250030, 250031, 250032, 250033, 250034, 250035, 250036, 250037, 250038, 250039, 250040, 250041, 250042, 250043, 250044, 250045, 250046, 250047, 250048, 250049, 250050, 250051, 250052, 250053, 250054, 250055, 250056, 250057, 250058, 250059, 250060, 250061, 250062, 250063, 250064 },
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