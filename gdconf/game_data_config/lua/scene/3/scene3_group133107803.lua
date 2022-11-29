-- 基础信息
local base_info = {
	group_id = 133107803
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
	{ config_id = 803001, gadget_id = 70500000, pos = { x = -545.245, y = 248.552, z = 441.027 }, rot = { x = 352.467, y = 262.447, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803002, gadget_id = 70500000, pos = { x = -517.019, y = 260.940, z = 479.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803004, gadget_id = 70290015, pos = { x = -538.598, y = 248.552, z = 439.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803005, gadget_id = 70500000, pos = { x = -538.598, y = 248.552, z = 439.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2023, owner = 803004, area_id = 7 },
	{ config_id = 803006, gadget_id = 70500000, pos = { x = -538.562, y = 248.541, z = 439.189 }, rot = { x = 16.170, y = 343.571, z = 19.390 }, level = 18, point_type = 2023, owner = 803004, area_id = 7 },
	{ config_id = 803007, gadget_id = 70290015, pos = { x = -534.370, y = 249.348, z = 428.169 }, rot = { x = 0.000, y = 194.614, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803008, gadget_id = 70500000, pos = { x = -534.370, y = 249.348, z = 428.169 }, rot = { x = 0.000, y = 194.614, z = 0.000 }, level = 18, point_type = 2023, owner = 803007, area_id = 7 },
	{ config_id = 803009, gadget_id = 70500000, pos = { x = -534.334, y = 249.337, z = 428.096 }, rot = { x = 16.170, y = 178.185, z = 19.390 }, level = 18, point_type = 2023, owner = 803007, area_id = 7 },
	{ config_id = 803010, gadget_id = 70290015, pos = { x = -520.136, y = 250.699, z = 499.009 }, rot = { x = 0.000, y = 218.958, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803011, gadget_id = 70500000, pos = { x = -520.136, y = 250.699, z = 499.009 }, rot = { x = 0.000, y = 218.970, z = 0.000 }, level = 18, point_type = 2023, owner = 803010, area_id = 7 },
	{ config_id = 803012, gadget_id = 70500000, pos = { x = -520.101, y = 250.688, z = 498.936 }, rot = { x = 16.170, y = 202.541, z = 19.390 }, level = 18, point_type = 2023, owner = 803010, area_id = 7 },
	{ config_id = 803013, gadget_id = 70290015, pos = { x = -587.509, y = 250.276, z = 411.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803014, gadget_id = 70500000, pos = { x = -587.509, y = 250.276, z = 411.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2023, owner = 803013, area_id = 7 },
	{ config_id = 803015, gadget_id = 70500000, pos = { x = -587.474, y = 250.265, z = 410.978 }, rot = { x = 16.170, y = 343.571, z = 19.390 }, level = 18, point_type = 2023, owner = 803013, area_id = 7 },
	{ config_id = 803016, gadget_id = 70290015, pos = { x = -585.096, y = 250.276, z = 410.252 }, rot = { x = 0.000, y = 315.871, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803017, gadget_id = 70500000, pos = { x = -585.096, y = 250.276, z = 410.252 }, rot = { x = 0.000, y = 315.871, z = 0.000 }, level = 18, point_type = 2023, owner = 803016, area_id = 7 },
	{ config_id = 803018, gadget_id = 70500000, pos = { x = -585.060, y = 250.265, z = 410.178 }, rot = { x = 16.170, y = 299.442, z = 19.390 }, level = 18, point_type = 2023, owner = 803016, area_id = 7 },
	{ config_id = 803019, gadget_id = 70290015, pos = { x = -607.936, y = 249.373, z = 447.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803020, gadget_id = 70500000, pos = { x = -607.936, y = 249.373, z = 447.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2023, owner = 803019, area_id = 7 },
	{ config_id = 803021, gadget_id = 70500000, pos = { x = -607.900, y = 249.362, z = 447.631 }, rot = { x = 16.170, y = 343.571, z = 19.390 }, level = 18, point_type = 2023, owner = 803019, area_id = 7 },
	{ config_id = 803022, gadget_id = 70500000, pos = { x = -620.073, y = 250.578, z = 431.008 }, rot = { x = 0.000, y = 82.109, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803023, gadget_id = 70500000, pos = { x = -499.377, y = 248.037, z = 466.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803024, gadget_id = 70500000, pos = { x = -461.034, y = 238.580, z = 474.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803025, gadget_id = 70500000, pos = { x = -386.076, y = 314.702, z = 562.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2025, area_id = 7 },
	{ config_id = 803028, gadget_id = 70290015, pos = { x = -607.039, y = 250.141, z = 431.705 }, rot = { x = 0.000, y = 179.143, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 803029, gadget_id = 70500000, pos = { x = -607.039, y = 250.141, z = 431.705 }, rot = { x = 0.000, y = 179.144, z = 0.000 }, level = 18, point_type = 2023, owner = 803028, area_id = 7 },
	{ config_id = 803030, gadget_id = 70500000, pos = { x = -607.003, y = 250.130, z = 431.632 }, rot = { x = 16.170, y = 162.715, z = 19.390 }, level = 18, point_type = 2023, owner = 803028, area_id = 7 },
	{ config_id = 803044, gadget_id = 70500000, pos = { x = -579.621, y = 250.276, z = 401.176 }, rot = { x = 0.000, y = 306.463, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803063, gadget_id = 70500000, pos = { x = -563.103, y = 250.276, z = 399.494 }, rot = { x = 11.353, y = 251.622, z = 356.725 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803066, gadget_id = 70500000, pos = { x = -562.058, y = 250.226, z = 399.994 }, rot = { x = 0.001, y = 323.548, z = 350.994 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803067, gadget_id = 70500000, pos = { x = -698.173, y = 217.906, z = 651.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1002, area_id = 7 },
	{ config_id = 803072, gadget_id = 70500000, pos = { x = -514.590, y = 261.186, z = 475.163 }, rot = { x = 0.000, y = 96.125, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803074, gadget_id = 70500000, pos = { x = -594.796, y = 347.415, z = 566.070 }, rot = { x = 0.000, y = 0.000, z = 337.087 }, level = 24, point_type = 1003, area_id = 7 },
	{ config_id = 803075, gadget_id = 70500000, pos = { x = -594.839, y = 347.759, z = 567.649 }, rot = { x = 340.096, y = 272.773, z = 0.000 }, level = 24, point_type = 1003, area_id = 7 },
	{ config_id = 803076, gadget_id = 70500000, pos = { x = -600.109, y = 347.925, z = 569.686 }, rot = { x = 11.754, y = 0.000, z = 0.000 }, level = 24, point_type = 1003, area_id = 7 },
	{ config_id = 803077, gadget_id = 70500000, pos = { x = -549.995, y = 344.883, z = 581.470 }, rot = { x = 43.030, y = 0.000, z = 0.000 }, level = 24, point_type = 1003, area_id = 7 },
	{ config_id = 803078, gadget_id = 70500000, pos = { x = -546.847, y = 345.110, z = 580.018 }, rot = { x = 330.879, y = 327.839, z = 24.229 }, level = 24, point_type = 1003, area_id = 7 },
	{ config_id = 803079, gadget_id = 70500000, pos = { x = -551.726, y = 344.385, z = 580.094 }, rot = { x = 330.696, y = 0.000, z = 0.000 }, level = 24, point_type = 1003, area_id = 7 },
	{ config_id = 803080, gadget_id = 70500000, pos = { x = -507.721, y = 353.805, z = 626.437 }, rot = { x = 0.000, y = 309.220, z = 0.000 }, level = 24, point_type = 1004, area_id = 7 },
	{ config_id = 803081, gadget_id = 70500000, pos = { x = -529.509, y = 354.770, z = 622.185 }, rot = { x = 0.000, y = 308.281, z = 0.000 }, level = 24, point_type = 1004, area_id = 7 },
	{ config_id = 803082, gadget_id = 70500000, pos = { x = -530.670, y = 354.578, z = 619.929 }, rot = { x = 0.000, y = 188.145, z = 0.000 }, level = 24, point_type = 1004, area_id = 7 },
	{ config_id = 803083, gadget_id = 70500000, pos = { x = -502.658, y = 354.053, z = 606.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1004, area_id = 7 },
	{ config_id = 803084, gadget_id = 70500000, pos = { x = -506.935, y = 353.767, z = 625.593 }, rot = { x = 0.000, y = 19.527, z = 0.000 }, level = 24, point_type = 1004, area_id = 7 },
	{ config_id = 803087, gadget_id = 70500000, pos = { x = -603.625, y = 249.579, z = 452.042 }, rot = { x = 352.467, y = 262.447, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803088, gadget_id = 70500000, pos = { x = -605.969, y = 249.645, z = 455.333 }, rot = { x = 345.089, y = 283.786, z = 25.615 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803089, gadget_id = 70500000, pos = { x = -535.545, y = 250.484, z = 504.020 }, rot = { x = 345.089, y = 283.786, z = 25.615 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803090, gadget_id = 70500000, pos = { x = -600.843, y = 250.141, z = 419.811 }, rot = { x = 0.000, y = 19.431, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803093, gadget_id = 70500000, pos = { x = -664.541, y = 221.418, z = 281.671 }, rot = { x = 0.000, y = 19.431, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803094, gadget_id = 70500000, pos = { x = -656.806, y = 220.524, z = 282.331 }, rot = { x = 0.000, y = 19.431, z = 0.000 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803095, gadget_id = 70500000, pos = { x = -663.446, y = 221.424, z = 280.195 }, rot = { x = 0.000, y = 268.292, z = 21.585 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803100, gadget_id = 70500000, pos = { x = -451.227, y = 245.329, z = 490.030 }, rot = { x = 8.341, y = 218.590, z = 3.513 }, level = 18, point_type = 2025, area_id = 7 },
	{ config_id = 803101, gadget_id = 70500000, pos = { x = -449.993, y = 245.355, z = 489.921 }, rot = { x = 15.792, y = 150.324, z = 353.494 }, level = 18, point_type = 2025, area_id = 7 }
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
		{ config_id = 803003, gadget_id = 70500000, pos = { x = -686.735, y = 306.962, z = 578.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 7 },
		{ config_id = 803027, gadget_id = 70500000, pos = { x = -373.472, y = 321.576, z = 568.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 7 },
		{ config_id = 803031, gadget_id = 70290014, pos = { x = -492.082, y = 227.650, z = 401.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 803032, gadget_id = 70500000, pos = { x = -492.352, y = 227.650, z = 401.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2015, owner = 803031, area_id = 7 },
		{ config_id = 803033, gadget_id = 70290014, pos = { x = -484.322, y = 227.650, z = 415.467 }, rot = { x = 0.000, y = 326.988, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 803034, gadget_id = 70500000, pos = { x = -484.592, y = 227.650, z = 414.986 }, rot = { x = 0.000, y = 326.988, z = 0.000 }, level = 18, point_type = 2015, owner = 803033, area_id = 7 },
		{ config_id = 803035, gadget_id = 70290014, pos = { x = -491.045, y = 227.709, z = 404.788 }, rot = { x = 0.000, y = 236.002, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 803036, gadget_id = 70500000, pos = { x = -491.315, y = 227.709, z = 404.307 }, rot = { x = 0.000, y = 236.006, z = 0.000 }, level = 18, point_type = 2015, owner = 803035, area_id = 7 },
		{ config_id = 803037, gadget_id = 70290014, pos = { x = -492.658, y = 227.650, z = 432.899 }, rot = { x = 0.000, y = 47.061, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 803038, gadget_id = 70500000, pos = { x = -492.928, y = 227.650, z = 432.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2015, owner = 803037, area_id = 7 },
		{ config_id = 803039, gadget_id = 70290014, pos = { x = -478.765, y = 230.739, z = 467.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 803040, gadget_id = 70500000, pos = { x = -479.035, y = 230.739, z = 467.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2015, owner = 803039, area_id = 7 },
		{ config_id = 803041, gadget_id = 70290014, pos = { x = -593.254, y = 247.673, z = 437.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 803042, gadget_id = 70500000, pos = { x = -593.524, y = 247.673, z = 436.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2015, owner = 803041, area_id = 7 },
		{ config_id = 803045, gadget_id = 70500000, pos = { x = -410.021, y = 262.503, z = 647.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 7 },
		{ config_id = 803046, gadget_id = 70500000, pos = { x = -310.338, y = 366.937, z = 483.795 }, rot = { x = 11.927, y = 1.880, z = 17.851 }, level = 18, point_type = 2002, area_id = 7 },
		{ config_id = 803047, gadget_id = 70500000, pos = { x = -321.646, y = 363.727, z = 476.123 }, rot = { x = 0.000, y = 256.606, z = 0.000 }, level = 18, point_type = 2001, area_id = 7 },
		{ config_id = 803048, gadget_id = 70500000, pos = { x = -478.012, y = 224.610, z = 821.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803049, gadget_id = 70500000, pos = { x = -379.116, y = 216.894, z = 850.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
		{ config_id = 803050, gadget_id = 70500000, pos = { x = -464.831, y = 184.504, z = 940.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
		{ config_id = 803051, gadget_id = 70500000, pos = { x = -598.810, y = 267.109, z = 930.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803052, gadget_id = 70500000, pos = { x = -775.021, y = 166.480, z = 906.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
		{ config_id = 803053, gadget_id = 70500000, pos = { x = -868.245, y = 201.942, z = 814.550 }, rot = { x = 354.694, y = 359.893, z = 2.320 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803054, gadget_id = 70500000, pos = { x = -864.647, y = 213.399, z = 675.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
		{ config_id = 803055, gadget_id = 70500000, pos = { x = -953.713, y = 211.001, z = 817.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803057, gadget_id = 70500000, pos = { x = -705.411, y = 248.219, z = 626.221 }, rot = { x = 6.268, y = 0.384, z = 6.999 }, level = 24, point_type = 2001, area_id = 7 },
		{ config_id = 803058, gadget_id = 70500000, pos = { x = -779.942, y = 174.348, z = 933.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803059, gadget_id = 70500000, pos = { x = -712.245, y = 166.651, z = 907.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
		{ config_id = 803060, gadget_id = 70500000, pos = { x = -747.871, y = 177.919, z = 861.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803061, gadget_id = 70500000, pos = { x = -627.350, y = 220.780, z = 896.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803062, gadget_id = 70500000, pos = { x = -384.176, y = 200.315, z = 900.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803064, gadget_id = 70500000, pos = { x = -723.498, y = 217.832, z = 657.067 }, rot = { x = 0.000, y = 18.278, z = 0.000 }, level = 24, point_type = 2004, area_id = 7 },
		{ config_id = 803065, gadget_id = 70500000, pos = { x = -733.335, y = 218.585, z = 668.935 }, rot = { x = 0.000, y = 103.840, z = 0.000 }, level = 32, point_type = 2004, area_id = 7 },
		{ config_id = 803068, gadget_id = 70500000, pos = { x = -738.072, y = 219.633, z = 723.649 }, rot = { x = 0.000, y = 42.265, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803071, gadget_id = 70500000, pos = { x = -683.443, y = 217.760, z = 707.966 }, rot = { x = 0.000, y = 318.751, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803086, gadget_id = 70500000, pos = { x = -291.576, y = 286.794, z = 673.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, area_id = 7 },
		{ config_id = 803096, gadget_id = 70500000, pos = { x = -717.207, y = 232.610, z = 383.349 }, rot = { x = 0.000, y = 19.431, z = 0.000 }, level = 18, point_type = 2004, area_id = 7 },
		{ config_id = 803097, gadget_id = 70500000, pos = { x = -783.211, y = 231.308, z = 470.940 }, rot = { x = 353.337, y = 20.361, z = 344.131 }, level = 18, point_type = 2001, area_id = 7 },
		{ config_id = 803098, gadget_id = 70500000, pos = { x = -746.476, y = 224.088, z = 499.183 }, rot = { x = 0.000, y = 19.431, z = 0.000 }, level = 18, point_type = 2001, area_id = 7 },
		{ config_id = 803099, gadget_id = 70500000, pos = { x = -798.256, y = 216.343, z = 710.380 }, rot = { x = 11.926, y = 354.708, z = 13.598 }, level = 32, point_type = 2001, area_id = 8 },
		{ config_id = 803102, gadget_id = 70500000, pos = { x = -363.050, y = 269.849, z = 542.446 }, rot = { x = 354.275, y = 66.621, z = 352.984 }, level = 18, point_type = 2001, area_id = 7 },
		{ config_id = 803105, gadget_id = 70500000, pos = { x = -404.783, y = 255.236, z = 688.321 }, rot = { x = 351.103, y = 26.139, z = 358.360 }, level = 18, point_type = 2004, area_id = 7 },
		{ config_id = 803106, gadget_id = 70500000, pos = { x = -416.853, y = 215.848, z = 817.092 }, rot = { x = 9.459, y = 317.297, z = 355.564 }, level = 18, point_type = 2004, area_id = 8 },
		{ config_id = 803107, gadget_id = 70500000, pos = { x = -426.093, y = 273.480, z = 657.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 7 },
		{ config_id = 803108, gadget_id = 70500000, pos = { x = -441.503, y = 279.290, z = 659.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 7 },
		{ config_id = 803110, gadget_id = 70500000, pos = { x = -291.429, y = 286.794, z = 673.384 }, rot = { x = 0.000, y = 334.192, z = 0.000 }, level = 24, point_type = 3003, area_id = 7 }
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
		gadgets = { 803001, 803002, 803004, 803005, 803006, 803007, 803008, 803009, 803010, 803011, 803012, 803013, 803014, 803015, 803016, 803017, 803018, 803019, 803020, 803021, 803022, 803023, 803024, 803025, 803028, 803029, 803030, 803044, 803063, 803066, 803067, 803072, 803074, 803075, 803076, 803077, 803078, 803079, 803080, 803081, 803082, 803083, 803084, 803087, 803088, 803089, 803090, 803093, 803094, 803095, 803100, 803101 },
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