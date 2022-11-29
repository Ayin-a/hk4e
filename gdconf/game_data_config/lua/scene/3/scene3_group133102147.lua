-- 基础信息
local base_info = {
	group_id = 133102147
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
	{ config_id = 147001, gadget_id = 70500000, pos = { x = 1099.685, y = 204.422, z = 358.117 }, rot = { x = 297.887, y = 151.477, z = 177.576 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 147002, gadget_id = 70500000, pos = { x = 1100.255, y = 204.411, z = 358.054 }, rot = { x = 62.421, y = 18.720, z = 153.264 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 147003, gadget_id = 70500000, pos = { x = 1241.176, y = 200.804, z = 273.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147004, gadget_id = 70500000, pos = { x = 1237.944, y = 201.041, z = 267.286 }, rot = { x = 4.454, y = 359.826, z = 355.533 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147005, gadget_id = 70290003, pos = { x = 1068.634, y = 235.441, z = 427.507 }, rot = { x = 2.594, y = 245.936, z = 0.229 }, level = 16, area_id = 5 },
	{ config_id = 147006, gadget_id = 70500000, pos = { x = 1068.713, y = 235.548, z = 427.542 }, rot = { x = 2.594, y = 245.936, z = 0.228 }, level = 16, point_type = 3003, owner = 147005, area_id = 5 },
	{ config_id = 147007, gadget_id = 70500000, pos = { x = 1068.537, y = 235.539, z = 427.464 }, rot = { x = 2.594, y = 245.936, z = 0.228 }, level = 16, point_type = 3003, owner = 147005, area_id = 5 },
	{ config_id = 147008, gadget_id = 70290003, pos = { x = 1137.098, y = 203.609, z = 504.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 147009, gadget_id = 70500000, pos = { x = 1137.098, y = 203.712, z = 504.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 147008, area_id = 5 },
	{ config_id = 147010, gadget_id = 70500000, pos = { x = 1137.098, y = 203.712, z = 504.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 147008, area_id = 5 },
	{ config_id = 147011, gadget_id = 70290002, pos = { x = 1118.955, y = 202.046, z = 301.284 }, rot = { x = 355.552, y = 359.792, z = 5.356 }, level = 16, area_id = 5 },
	{ config_id = 147012, gadget_id = 70500000, pos = { x = 1117.735, y = 203.608, z = 301.874 }, rot = { x = 355.552, y = 359.792, z = 5.356 }, level = 16, point_type = 3011, owner = 147011, area_id = 5 },
	{ config_id = 147013, gadget_id = 70500000, pos = { x = 1119.580, y = 204.657, z = 300.069 }, rot = { x = 355.552, y = 359.792, z = 5.356 }, level = 16, point_type = 3011, owner = 147011, area_id = 5 },
	{ config_id = 147014, gadget_id = 70500000, pos = { x = 1118.722, y = 205.044, z = 302.435 }, rot = { x = 355.552, y = 359.792, z = 5.356 }, level = 16, point_type = 3011, owner = 147011, area_id = 5 },
	{ config_id = 147015, gadget_id = 70500000, pos = { x = 1237.541, y = 200.000, z = 386.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147016, gadget_id = 70500000, pos = { x = 1161.104, y = 200.712, z = 410.478 }, rot = { x = 359.257, y = 162.774, z = 20.820 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 147017, gadget_id = 70500000, pos = { x = 1166.857, y = 200.292, z = 456.809 }, rot = { x = 0.679, y = 209.453, z = 2.438 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 147018, gadget_id = 70500000, pos = { x = 1167.434, y = 200.243, z = 455.616 }, rot = { x = 359.900, y = 209.437, z = 1.999 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 147019, gadget_id = 70500000, pos = { x = 1136.298, y = 202.925, z = 434.773 }, rot = { x = 353.918, y = 308.017, z = 351.919 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147020, gadget_id = 70500000, pos = { x = 1143.756, y = 204.011, z = 390.851 }, rot = { x = 344.136, y = 316.546, z = 15.626 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147021, gadget_id = 70500000, pos = { x = 1125.604, y = 202.890, z = 342.348 }, rot = { x = 13.421, y = 308.861, z = 8.418 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147022, gadget_id = 70500000, pos = { x = 1160.584, y = 210.537, z = 328.431 }, rot = { x = 345.787, y = 313.199, z = 10.769 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147023, gadget_id = 70290014, pos = { x = 1191.104, y = 200.000, z = 268.440 }, rot = { x = 0.000, y = 214.385, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 147024, gadget_id = 70500000, pos = { x = 1190.834, y = 200.000, z = 267.959 }, rot = { x = 0.000, y = 214.394, z = 0.000 }, level = 16, point_type = 2015, owner = 147023, area_id = 5 },
	{ config_id = 147025, gadget_id = 70500000, pos = { x = 1111.270, y = 200.000, z = 470.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147026, gadget_id = 70290002, pos = { x = 1032.824, y = 204.813, z = 397.453 }, rot = { x = 16.532, y = 0.253, z = 0.930 }, level = 16, area_id = 5 },
	{ config_id = 147027, gadget_id = 70500000, pos = { x = 1031.732, y = 206.144, z = 398.598 }, rot = { x = 16.532, y = 0.253, z = 0.930 }, level = 16, point_type = 3011, owner = 147026, area_id = 5 },
	{ config_id = 147028, gadget_id = 70500000, pos = { x = 1033.650, y = 207.633, z = 397.232 }, rot = { x = 16.532, y = 0.253, z = 0.930 }, level = 16, point_type = 3011, owner = 147026, area_id = 5 },
	{ config_id = 147029, gadget_id = 70500000, pos = { x = 1032.829, y = 207.208, z = 399.604 }, rot = { x = 16.532, y = 0.253, z = 0.930 }, level = 16, point_type = 3011, owner = 147026, area_id = 5 },
	{ config_id = 147030, gadget_id = 70290003, pos = { x = 1269.908, y = 202.598, z = 270.696 }, rot = { x = 8.463, y = 352.421, z = 359.276 }, level = 16, area_id = 5 },
	{ config_id = 147031, gadget_id = 70500000, pos = { x = 1269.920, y = 202.713, z = 270.622 }, rot = { x = 8.457, y = 352.422, z = 359.276 }, level = 16, point_type = 3003, owner = 147030, area_id = 5 },
	{ config_id = 147032, gadget_id = 70500000, pos = { x = 1269.894, y = 202.685, z = 270.811 }, rot = { x = 8.457, y = 352.422, z = 359.276 }, level = 16, point_type = 3003, owner = 147030, area_id = 5 },
	{ config_id = 147033, gadget_id = 70500000, pos = { x = 1261.507, y = 201.653, z = 267.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 147034, gadget_id = 70500000, pos = { x = 1261.452, y = 201.584, z = 266.824 }, rot = { x = 342.760, y = 23.174, z = 345.416 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 147035, gadget_id = 70500000, pos = { x = 1260.823, y = 201.576, z = 267.030 }, rot = { x = 7.400, y = 323.910, z = 5.432 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 147036, gadget_id = 70500000, pos = { x = 1203.360, y = 203.666, z = 360.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147037, gadget_id = 70500000, pos = { x = 1204.412, y = 203.897, z = 367.633 }, rot = { x = 0.000, y = 58.566, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147038, gadget_id = 70500000, pos = { x = 1082.171, y = 203.307, z = 362.187 }, rot = { x = 349.460, y = 0.658, z = 352.875 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 147039, gadget_id = 70500000, pos = { x = 1084.162, y = 204.112, z = 483.970 }, rot = { x = 29.146, y = 329.723, z = 329.019 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 147040, gadget_id = 70500000, pos = { x = 1087.642, y = 211.981, z = 411.716 }, rot = { x = 335.789, y = 1.530, z = 352.875 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147041, gadget_id = 70500000, pos = { x = 1036.022, y = 205.009, z = 347.445 }, rot = { x = 359.691, y = 35.547, z = 339.759 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 147042, gadget_id = 70500000, pos = { x = 1154.643, y = 201.363, z = 351.597 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147043, gadget_id = 70500000, pos = { x = 1203.018, y = 199.899, z = 397.392 }, rot = { x = 0.000, y = 204.258, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 147044, gadget_id = 70500000, pos = { x = 1049.265, y = 201.181, z = 465.637 }, rot = { x = 0.000, y = 120.815, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147045, gadget_id = 70500000, pos = { x = 1215.586, y = 201.470, z = 264.622 }, rot = { x = 359.906, y = 35.918, z = 354.618 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 147046, gadget_id = 70500000, pos = { x = 1248.285, y = 208.042, z = 371.483 }, rot = { x = 0.000, y = 109.029, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147047, gadget_id = 70500000, pos = { x = 1126.524, y = 202.144, z = 320.357 }, rot = { x = 346.096, y = 81.885, z = 8.055 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147048, gadget_id = 70500000, pos = { x = 1207.649, y = 201.459, z = 324.050 }, rot = { x = 354.869, y = 252.181, z = 4.448 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147049, gadget_id = 70500000, pos = { x = 1033.711, y = 206.384, z = 362.810 }, rot = { x = 6.302, y = 357.948, z = 1.555 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147050, gadget_id = 70500000, pos = { x = 1092.133, y = 203.190, z = 376.897 }, rot = { x = 0.966, y = 89.087, z = 4.452 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147051, gadget_id = 70290001, pos = { x = 1261.557, y = 201.078, z = 332.707 }, rot = { x = 6.908, y = 167.898, z = 6.673 }, level = 16, area_id = 5 },
	{ config_id = 147052, gadget_id = 70500000, pos = { x = 1261.703, y = 201.593, z = 332.261 }, rot = { x = 6.908, y = 167.898, z = 6.673 }, level = 16, point_type = 3002, owner = 147051, area_id = 5 },
	{ config_id = 147053, gadget_id = 70500000, pos = { x = 1261.656, y = 201.962, z = 333.027 }, rot = { x = 6.908, y = 167.898, z = 6.673 }, level = 16, point_type = 3002, owner = 147051, area_id = 5 },
	{ config_id = 147054, gadget_id = 70500000, pos = { x = 1261.452, y = 202.371, z = 332.630 }, rot = { x = 6.908, y = 167.898, z = 6.673 }, level = 16, point_type = 3002, owner = 147051, area_id = 5 },
	{ config_id = 147055, gadget_id = 70500000, pos = { x = 1242.426, y = 199.650, z = 320.501 }, rot = { x = 0.000, y = 334.668, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 147056, gadget_id = 70500000, pos = { x = 1210.697, y = 199.290, z = 305.248 }, rot = { x = 0.000, y = 214.485, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 147057, gadget_id = 70500000, pos = { x = 1203.066, y = 199.521, z = 306.324 }, rot = { x = 0.000, y = 200.783, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 147058, gadget_id = 70500000, pos = { x = 1224.545, y = 200.000, z = 284.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 147059, gadget_id = 70500000, pos = { x = 1134.425, y = 203.383, z = 364.983 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147060, gadget_id = 70500000, pos = { x = 1153.625, y = 201.211, z = 371.692 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147061, gadget_id = 70500000, pos = { x = 1113.574, y = 213.456, z = 422.328 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147062, gadget_id = 70500000, pos = { x = 1071.553, y = 232.418, z = 426.211 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147063, gadget_id = 70500000, pos = { x = 1158.316, y = 200.328, z = 490.310 }, rot = { x = 4.041, y = 215.292, z = 357.389 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147064, gadget_id = 70500000, pos = { x = 1068.261, y = 210.904, z = 464.828 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147065, gadget_id = 70500000, pos = { x = 1066.630, y = 202.126, z = 351.634 }, rot = { x = 0.000, y = 215.384, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 147066, gadget_id = 70500000, pos = { x = 1033.479, y = 205.024, z = 396.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147067, gadget_id = 70500000, pos = { x = 1047.852, y = 206.206, z = 365.983 }, rot = { x = 353.111, y = 0.901, z = 345.123 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147068, gadget_id = 70500000, pos = { x = 1077.355, y = 205.567, z = 372.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147069, gadget_id = 70500000, pos = { x = 1091.303, y = 203.432, z = 333.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147070, gadget_id = 70500000, pos = { x = 1136.665, y = 202.189, z = 343.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147071, gadget_id = 70500000, pos = { x = 1148.547, y = 200.555, z = 352.602 }, rot = { x = 0.000, y = 141.978, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147072, gadget_id = 70500000, pos = { x = 1194.025, y = 200.429, z = 318.796 }, rot = { x = 0.000, y = 6.517, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147073, gadget_id = 70500000, pos = { x = 1192.581, y = 200.522, z = 329.456 }, rot = { x = 0.000, y = 6.517, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147074, gadget_id = 70500000, pos = { x = 1210.065, y = 201.263, z = 330.454 }, rot = { x = 0.000, y = 6.517, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147075, gadget_id = 70500000, pos = { x = 1244.752, y = 202.988, z = 361.042 }, rot = { x = 0.000, y = 311.035, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 147076, gadget_id = 70500000, pos = { x = 1236.977, y = 201.496, z = 365.559 }, rot = { x = 0.000, y = 311.035, z = 0.000 }, level = 16, point_type = 2002, area_id = 5 }
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
		gadgets = { 147001, 147002, 147003, 147004, 147005, 147006, 147007, 147008, 147009, 147010, 147011, 147012, 147013, 147014, 147015, 147016, 147017, 147018, 147019, 147020, 147021, 147022, 147023, 147024, 147025, 147026, 147027, 147028, 147029, 147030, 147031, 147032, 147033, 147034, 147035, 147036, 147037, 147038, 147039, 147040, 147041, 147042, 147043, 147044, 147045, 147046, 147047, 147048, 147049, 147050, 147051, 147052, 147053, 147054, 147055, 147056, 147057, 147058, 147059, 147060, 147061, 147062, 147063, 147064, 147065, 147066, 147067, 147068, 147069, 147070, 147071, 147072, 147073, 147074, 147075, 147076 },
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