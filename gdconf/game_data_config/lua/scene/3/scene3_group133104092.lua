-- 基础信息
local base_info = {
	group_id = 133104092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 321, monster_id = 28030501, pos = { x = 459.642, y = 200.000, z = 69.623 }, rot = { x = 0.000, y = 69.594, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 322, monster_id = 28030501, pos = { x = 472.363, y = 200.000, z = 73.250 }, rot = { x = 0.000, y = 249.926, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 323, monster_id = 28030501, pos = { x = 471.519, y = 200.000, z = 63.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 324, monster_id = 28030501, pos = { x = 459.233, y = 200.000, z = 55.414 }, rot = { x = 0.000, y = 119.438, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92001, monster_id = 28020201, pos = { x = 125.498, y = 251.790, z = 210.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92003, monster_id = 28030402, pos = { x = 128.848, y = 251.449, z = 129.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92004, monster_id = 28030402, pos = { x = 58.493, y = 263.245, z = 116.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92006, monster_id = 28030305, pos = { x = 53.321, y = 271.330, z = 25.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92009, monster_id = 28030305, pos = { x = 50.966, y = 271.204, z = 33.017 }, rot = { x = 0.598, y = 359.990, z = 358.060 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92011, monster_id = 28030101, pos = { x = 434.534, y = 211.638, z = 314.434 }, rot = { x = 0.000, y = 137.974, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92013, monster_id = 28020201, pos = { x = 424.181, y = 212.053, z = 352.991 }, rot = { x = 0.000, y = 188.280, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92014, monster_id = 28030305, pos = { x = 266.531, y = 219.091, z = 282.581 }, rot = { x = 0.000, y = 61.599, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92015, monster_id = 28030404, pos = { x = 296.717, y = 216.236, z = 359.758 }, rot = { x = 13.571, y = 110.630, z = 1.341 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92017, monster_id = 28030305, pos = { x = 391.414, y = 215.976, z = 339.777 }, rot = { x = 0.000, y = 128.493, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92019, monster_id = 28030305, pos = { x = 267.629, y = 219.169, z = 286.186 }, rot = { x = 1.906, y = 134.326, z = 0.610 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92021, monster_id = 28030402, pos = { x = 168.787, y = 245.497, z = 110.445 }, rot = { x = 4.299, y = 95.872, z = 0.660 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92023, monster_id = 28030301, pos = { x = 422.927, y = 196.839, z = 239.878 }, rot = { x = 2.468, y = 0.057, z = 2.638 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92024, monster_id = 28030301, pos = { x = 459.566, y = 198.619, z = 212.269 }, rot = { x = 2.468, y = 0.057, z = 2.638 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92026, monster_id = 28030301, pos = { x = 477.397, y = 198.953, z = 228.387 }, rot = { x = 2.468, y = 0.057, z = 2.638 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92027, monster_id = 28030101, pos = { x = 501.499, y = 197.490, z = 235.441 }, rot = { x = 20.789, y = 24.699, z = 1.230 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92030, monster_id = 28030101, pos = { x = 277.732, y = 202.242, z = 545.759 }, rot = { x = 0.000, y = 287.885, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92032, monster_id = 28020301, pos = { x = 451.108, y = 213.791, z = 651.970 }, rot = { x = 5.902, y = 126.082, z = 0.988 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92034, monster_id = 28020102, pos = { x = 313.497, y = 215.970, z = 323.739 }, rot = { x = 14.153, y = 82.970, z = 353.058 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92035, monster_id = 28020301, pos = { x = 349.332, y = 216.823, z = 266.836 }, rot = { x = 0.789, y = 61.836, z = 359.578 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92038, monster_id = 28030404, pos = { x = 136.487, y = 240.689, z = 154.222 }, rot = { x = 7.735, y = 359.502, z = 341.776 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92039, monster_id = 28020102, pos = { x = 172.183, y = 234.407, z = 149.919 }, rot = { x = 357.309, y = 123.028, z = 12.298 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92040, monster_id = 28030404, pos = { x = 114.259, y = 251.447, z = 112.035 }, rot = { x = 0.000, y = 99.859, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92041, monster_id = 28030404, pos = { x = 116.328, y = 251.447, z = 113.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92042, monster_id = 28020301, pos = { x = 561.392, y = 203.749, z = 688.977 }, rot = { x = 11.336, y = 250.460, z = 8.059 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92043, monster_id = 28020201, pos = { x = 751.999, y = 204.980, z = 231.024 }, rot = { x = 0.000, y = 147.928, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92044, monster_id = 28020201, pos = { x = 752.144, y = 204.706, z = 223.869 }, rot = { x = 0.000, y = 0.012, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92046, monster_id = 28020201, pos = { x = 46.843, y = 241.833, z = 433.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92048, monster_id = 28020301, pos = { x = 444.909, y = 197.937, z = 189.681 }, rot = { x = 353.466, y = 239.274, z = 6.817 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92051, monster_id = 28030401, pos = { x = 611.336, y = 205.104, z = 479.505 }, rot = { x = 0.000, y = 288.260, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92052, monster_id = 28020301, pos = { x = 598.399, y = 198.043, z = 223.418 }, rot = { x = 0.000, y = 69.953, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92058, monster_id = 28020102, pos = { x = 606.765, y = 199.644, z = 266.632 }, rot = { x = 0.000, y = 283.782, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92063, monster_id = 28020201, pos = { x = 155.778, y = 246.967, z = 298.684 }, rot = { x = 355.551, y = 0.026, z = 0.270 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92065, monster_id = 28020102, pos = { x = 266.091, y = 205.784, z = 467.310 }, rot = { x = 329.746, y = 134.610, z = 0.581 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92067, monster_id = 28020201, pos = { x = 277.473, y = 224.634, z = 439.232 }, rot = { x = 0.000, y = 132.417, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92069, monster_id = 28020102, pos = { x = 490.520, y = 208.438, z = 342.142 }, rot = { x = 11.910, y = 43.111, z = 1.469 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92070, monster_id = 28020102, pos = { x = 414.882, y = 211.873, z = 381.335 }, rot = { x = 13.456, y = 54.158, z = 354.681 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92073, monster_id = 28030301, pos = { x = -190.651, y = 278.331, z = 242.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92074, monster_id = 28030301, pos = { x = -188.255, y = 277.952, z = 246.290 }, rot = { x = 0.000, y = 169.814, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92080, monster_id = 28030101, pos = { x = 621.484, y = 200.650, z = 542.858 }, rot = { x = 0.000, y = 98.550, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92083, monster_id = 28020102, pos = { x = 700.533, y = 207.224, z = 354.677 }, rot = { x = 356.583, y = 41.618, z = 355.778 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92084, monster_id = 28020301, pos = { x = 650.951, y = 207.273, z = 391.653 }, rot = { x = 4.605, y = 222.485, z = 349.801 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92087, monster_id = 28020301, pos = { x = 717.462, y = 201.973, z = 374.370 }, rot = { x = 6.830, y = 96.654, z = 10.520 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92088, monster_id = 28020301, pos = { x = 696.016, y = 204.606, z = 260.118 }, rot = { x = 0.000, y = 0.000, z = 357.316 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92090, monster_id = 28020102, pos = { x = 642.430, y = 206.495, z = 367.025 }, rot = { x = 12.943, y = 184.225, z = 352.130 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92097, monster_id = 28030404, pos = { x = 339.687, y = 218.247, z = 149.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92098, monster_id = 28020301, pos = { x = 325.414, y = 203.574, z = 481.844 }, rot = { x = 0.000, y = 145.039, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92101, monster_id = 28030101, pos = { x = 408.114, y = 211.952, z = 692.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92102, monster_id = 28030101, pos = { x = 410.963, y = 210.583, z = 694.209 }, rot = { x = 0.000, y = 178.826, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92104, monster_id = 28020102, pos = { x = 349.303, y = 217.921, z = 179.176 }, rot = { x = 0.000, y = 56.063, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92106, monster_id = 28020102, pos = { x = 196.732, y = 235.358, z = 223.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92109, monster_id = 28020102, pos = { x = 205.465, y = 223.869, z = 298.151 }, rot = { x = 0.000, y = 137.676, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92112, monster_id = 28030301, pos = { x = 19.843, y = 263.283, z = 273.551 }, rot = { x = 0.886, y = 0.000, z = 0.044 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92114, monster_id = 28030301, pos = { x = 23.177, y = 263.205, z = 274.674 }, rot = { x = 0.000, y = 42.942, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92118, monster_id = 28030402, pos = { x = 604.722, y = 201.523, z = 384.537 }, rot = { x = 350.190, y = 194.854, z = 9.196 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92120, monster_id = 28020102, pos = { x = 566.054, y = 201.784, z = 394.871 }, rot = { x = 0.000, y = 156.985, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92125, monster_id = 28030301, pos = { x = 586.086, y = 202.807, z = 336.228 }, rot = { x = 0.102, y = 216.340, z = 8.058 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92132, monster_id = 28020201, pos = { x = -87.104, y = 276.202, z = 303.802 }, rot = { x = 345.838, y = 0.244, z = 358.035 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92137, monster_id = 28030301, pos = { x = -71.031, y = 269.683, z = 275.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92138, monster_id = 28030301, pos = { x = -75.343, y = 270.200, z = 273.460 }, rot = { x = 0.000, y = 230.427, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92139, monster_id = 28030301, pos = { x = -77.855, y = 270.611, z = 276.394 }, rot = { x = 0.000, y = 230.427, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92140, monster_id = 28030402, pos = { x = -29.654, y = 268.757, z = 276.254 }, rot = { x = 358.807, y = 359.931, z = 6.663 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92142, monster_id = 28020102, pos = { x = -121.823, y = 285.188, z = 293.039 }, rot = { x = 344.292, y = 359.877, z = 0.895 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92145, monster_id = 28020301, pos = { x = 566.384, y = 207.548, z = 494.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92146, monster_id = 28020301, pos = { x = 549.072, y = 200.340, z = 652.963 }, rot = { x = 1.067, y = 328.762, z = 358.307 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92147, monster_id = 28020201, pos = { x = 539.733, y = 209.092, z = 442.726 }, rot = { x = 0.000, y = 140.626, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92150, monster_id = 28020301, pos = { x = 457.010, y = 213.877, z = 429.836 }, rot = { x = 1.788, y = 359.958, z = 357.316 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92155, monster_id = 28020301, pos = { x = 465.051, y = 212.445, z = 382.860 }, rot = { x = 0.000, y = 150.021, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92158, monster_id = 28030101, pos = { x = 608.027, y = 207.980, z = 411.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92159, monster_id = 28030101, pos = { x = 606.017, y = 201.589, z = 428.602 }, rot = { x = 0.000, y = 188.726, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92165, monster_id = 28020102, pos = { x = 246.739, y = 211.182, z = 77.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92170, monster_id = 28030402, pos = { x = 256.045, y = 218.548, z = 112.195 }, rot = { x = 0.000, y = 244.067, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92171, monster_id = 28030101, pos = { x = 272.574, y = 204.422, z = 36.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92172, monster_id = 28030101, pos = { x = 279.885, y = 205.115, z = 41.449 }, rot = { x = 0.000, y = 221.360, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92174, monster_id = 28030101, pos = { x = 534.128, y = 214.570, z = 408.424 }, rot = { x = 2.715, y = 313.047, z = 3.077 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92182, monster_id = 28030402, pos = { x = 370.888, y = 217.455, z = 211.293 }, rot = { x = 20.749, y = 358.574, z = 352.994 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92185, monster_id = 28020301, pos = { x = 215.962, y = 206.601, z = 395.005 }, rot = { x = 0.930, y = 173.943, z = 351.855 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92186, monster_id = 28030101, pos = { x = 173.260, y = 201.969, z = 703.174 }, rot = { x = 0.000, y = 154.486, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92189, monster_id = 28030101, pos = { x = 246.529, y = 200.957, z = 703.956 }, rot = { x = 0.000, y = 253.151, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92191, monster_id = 28030101, pos = { x = 123.884, y = 204.957, z = 692.220 }, rot = { x = 0.000, y = 229.067, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92192, monster_id = 28020301, pos = { x = -103.120, y = 274.001, z = 530.157 }, rot = { x = 0.000, y = 131.117, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92193, monster_id = 28020301, pos = { x = -108.441, y = 282.126, z = 556.918 }, rot = { x = 0.000, y = 131.117, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92194, monster_id = 28020301, pos = { x = -25.339, y = 251.782, z = 718.442 }, rot = { x = 0.000, y = 131.117, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 8 },
	{ config_id = 92197, monster_id = 28020301, pos = { x = 50.367, y = 212.158, z = 658.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92198, monster_id = 28030101, pos = { x = -1.129, y = 236.215, z = 687.790 }, rot = { x = 14.308, y = 157.306, z = 9.048 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92199, monster_id = 28020102, pos = { x = 17.128, y = 225.943, z = 640.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92201, monster_id = 28030101, pos = { x = 32.256, y = 206.134, z = 527.806 }, rot = { x = 0.000, y = 204.897, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92202, monster_id = 28030101, pos = { x = 29.908, y = 202.557, z = 519.308 }, rot = { x = 0.000, y = 90.560, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92204, monster_id = 28020301, pos = { x = 76.891, y = 243.247, z = 901.819 }, rot = { x = 341.929, y = 1.283, z = 351.948 }, level = 32, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92205, monster_id = 28030404, pos = { x = 25.032, y = 224.008, z = 748.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92207, monster_id = 28030404, pos = { x = 31.006, y = 224.083, z = 747.735 }, rot = { x = 0.000, y = 131.486, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92208, monster_id = 28030404, pos = { x = -41.750, y = 258.977, z = 711.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 92210, monster_id = 28030301, pos = { x = -121.893, y = 276.721, z = 727.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 92211, monster_id = 28030301, pos = { x = -119.947, y = 276.721, z = 729.247 }, rot = { x = 0.000, y = 42.276, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 92212, monster_id = 28030301, pos = { x = -117.213, y = 276.614, z = 721.028 }, rot = { x = 0.000, y = 42.276, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 92214, monster_id = 28030301, pos = { x = -103.738, y = 276.614, z = 724.496 }, rot = { x = 0.000, y = 208.402, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 92223, monster_id = 28020102, pos = { x = -31.885, y = 229.770, z = 569.698 }, rot = { x = 346.918, y = 217.488, z = 4.177 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92225, monster_id = 28020102, pos = { x = 158.804, y = 237.179, z = 256.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92226, monster_id = 28030301, pos = { x = 76.421, y = 246.820, z = 276.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92227, monster_id = 28030301, pos = { x = 79.158, y = 246.220, z = 281.965 }, rot = { x = 0.000, y = 190.923, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92228, monster_id = 28030301, pos = { x = 84.768, y = 245.810, z = 277.049 }, rot = { x = 0.000, y = 138.708, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92231, monster_id = 28020301, pos = { x = 24.401, y = 274.920, z = 311.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92232, monster_id = 28020201, pos = { x = 12.471, y = 268.519, z = 365.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92234, monster_id = 28020102, pos = { x = 77.168, y = 227.829, z = 403.751 }, rot = { x = 359.871, y = 189.390, z = 12.124 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 92240, monster_id = 28020102, pos = { x = 146.643, y = 243.571, z = 905.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92241, monster_id = 28030101, pos = { x = 96.442, y = 251.998, z = 896.866 }, rot = { x = 0.000, y = 187.744, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92243, monster_id = 28030101, pos = { x = 132.300, y = 265.203, z = 952.094 }, rot = { x = 0.000, y = 50.849, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92247, monster_id = 28030401, pos = { x = 250.192, y = 228.859, z = 925.241 }, rot = { x = 354.754, y = 273.956, z = 16.678 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92251, monster_id = 28020102, pos = { x = 176.921, y = 249.267, z = 994.917 }, rot = { x = 0.000, y = 254.064, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92252, monster_id = 28020102, pos = { x = 278.025, y = 223.050, z = 913.188 }, rot = { x = 348.080, y = 0.657, z = 353.716 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92254, monster_id = 28030101, pos = { x = 235.156, y = 235.038, z = 853.966 }, rot = { x = 2.762, y = 0.113, z = 4.667 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92255, monster_id = 28030401, pos = { x = 292.790, y = 225.389, z = 813.424 }, rot = { x = 351.938, y = 359.957, z = 0.607 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92256, monster_id = 28030401, pos = { x = 298.953, y = 224.088, z = 811.016 }, rot = { x = 10.831, y = 152.804, z = 6.860 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92257, monster_id = 28030401, pos = { x = 294.630, y = 224.091, z = 815.765 }, rot = { x = 359.794, y = 314.007, z = 356.516 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 92259, monster_id = 28020301, pos = { x = 276.869, y = 221.023, z = 883.939 }, rot = { x = 0.000, y = 331.864, z = 0.000 }, level = 19, drop_tag = "走兽", isOneoff = true, area_id = 6 },
	{ config_id = 92261, monster_id = 28020301, pos = { x = 39.875, y = 284.542, z = 909.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 8 },
	{ config_id = 92263, monster_id = 28020102, pos = { x = 7.322, y = 296.480, z = 870.685 }, rot = { x = 0.000, y = 98.521, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 8 },
	{ config_id = 92266, monster_id = 28020102, pos = { x = -16.766, y = 291.415, z = 921.370 }, rot = { x = 0.000, y = 286.171, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 8 },
	{ config_id = 92267, monster_id = 28020102, pos = { x = -26.390, y = 301.986, z = 879.119 }, rot = { x = 0.000, y = 286.171, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 8 },
	{ config_id = 92268, monster_id = 28020102, pos = { x = -39.483, y = 324.798, z = 795.559 }, rot = { x = 0.000, y = 286.171, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 8 },
	{ config_id = 92270, monster_id = 28020102, pos = { x = -129.574, y = 323.493, z = 662.172 }, rot = { x = 9.668, y = 283.636, z = 330.682 }, level = 24, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92271, monster_id = 28020201, pos = { x = -132.691, y = 341.929, z = 627.824 }, rot = { x = 18.135, y = 285.111, z = 353.366 }, level = 24, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92272, monster_id = 28020102, pos = { x = -92.917, y = 320.495, z = 658.625 }, rot = { x = 0.000, y = 1.759, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92273, monster_id = 28020301, pos = { x = -185.182, y = 327.066, z = 651.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92274, monster_id = 28030402, pos = { x = 771.090, y = 205.779, z = 246.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92276, monster_id = 28030402, pos = { x = 770.740, y = 205.958, z = 243.237 }, rot = { x = 0.000, y = 40.372, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 92279, monster_id = 28020102, pos = { x = -0.756, y = 270.841, z = 106.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92280, monster_id = 28020301, pos = { x = -15.727, y = 270.582, z = 71.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92281, monster_id = 28030301, pos = { x = -4.888, y = 268.323, z = 52.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92282, monster_id = 28030301, pos = { x = -8.333, y = 268.113, z = 52.454 }, rot = { x = 0.000, y = 216.564, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92287, monster_id = 28020301, pos = { x = -73.324, y = 266.700, z = 18.231 }, rot = { x = 0.000, y = 31.049, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92288, monster_id = 28020301, pos = { x = -82.785, y = 267.049, z = 16.723 }, rot = { x = 0.000, y = 86.013, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 92289, monster_id = 28030301, pos = { x = -105.977, y = 275.967, z = 23.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92290, monster_id = 28030301, pos = { x = -105.309, y = 275.967, z = 27.067 }, rot = { x = 0.000, y = 159.720, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92291, monster_id = 28030301, pos = { x = -109.731, y = 277.292, z = 26.052 }, rot = { x = 0.000, y = 159.720, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92292, monster_id = 28030301, pos = { x = -111.423, y = 277.293, z = 30.777 }, rot = { x = 0.000, y = 283.875, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92296, monster_id = 28030301, pos = { x = -217.628, y = 265.622, z = 279.735 }, rot = { x = 0.000, y = 317.907, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 7 },
	{ config_id = 92301, monster_id = 28020201, pos = { x = 82.807, y = 235.357, z = 868.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 6 },
	{ config_id = 92303, monster_id = 28030404, pos = { x = 367.264, y = 220.875, z = 755.481 }, rot = { x = 0.000, y = 100.878, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
	monsters = {
		{ config_id = 92036, monster_id = 28040101, pos = { x = 842.128, y = 200.000, z = 192.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 92037, monster_id = 28040101, pos = { x = 839.967, y = 200.000, z = 191.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 92071, monster_id = 28010201, pos = { x = 511.873, y = 215.105, z = 422.499 }, rot = { x = 332.672, y = 1.223, z = 354.971 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92076, monster_id = 28040103, pos = { x = -140.356, y = 279.070, z = 266.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 7 },
		{ config_id = 92077, monster_id = 28040103, pos = { x = -133.536, y = 279.070, z = 267.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 7 },
		{ config_id = 92078, monster_id = 28040103, pos = { x = -138.992, y = 279.070, z = 273.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 7 },
		{ config_id = 92086, monster_id = 28010202, pos = { x = 746.411, y = 202.838, z = 303.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92089, monster_id = 28010202, pos = { x = 647.979, y = 202.660, z = 260.289 }, rot = { x = 8.001, y = 359.875, z = 358.210 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92092, monster_id = 28010101, pos = { x = 704.932, y = 200.137, z = 535.388 }, rot = { x = 0.000, y = 267.591, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 92093, monster_id = 28010202, pos = { x = 358.679, y = 212.707, z = 327.739 }, rot = { x = 340.845, y = 2.524, z = 345.123 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92094, monster_id = 28010202, pos = { x = 377.822, y = 217.091, z = 255.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92111, monster_id = 28010201, pos = { x = 46.351, y = 257.715, z = 278.816 }, rot = { x = 1.583, y = 359.648, z = 334.918 }, level = 19, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92119, monster_id = 28010101, pos = { x = 695.617, y = 200.112, z = 520.665 }, rot = { x = 0.000, y = 267.591, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92121, monster_id = 28010301, pos = { x = 543.439, y = 196.355, z = 248.236 }, rot = { x = 356.070, y = 0.000, z = 0.002 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92126, monster_id = 28010202, pos = { x = 604.341, y = 201.963, z = 343.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92127, monster_id = 28010202, pos = { x = 557.568, y = 209.345, z = 359.347 }, rot = { x = 22.872, y = 0.181, z = 0.895 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92128, monster_id = 28010202, pos = { x = 415.064, y = 198.341, z = 161.901 }, rot = { x = 357.355, y = 0.226, z = 350.247 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92130, monster_id = 28010202, pos = { x = 581.145, y = 200.325, z = 164.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92134, monster_id = 28010202, pos = { x = -49.989, y = 271.000, z = 260.540 }, rot = { x = 351.469, y = 356.827, z = 22.293 }, level = 19, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92135, monster_id = 28010202, pos = { x = -58.126, y = 270.145, z = 283.646 }, rot = { x = 347.027, y = 1.211, z = 349.380 }, level = 19, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92136, monster_id = 28010202, pos = { x = -55.033, y = 270.247, z = 286.141 }, rot = { x = 356.149, y = 301.318, z = 2.885 }, level = 19, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92143, monster_id = 28010101, pos = { x = 575.463, y = 200.000, z = 592.840 }, rot = { x = 0.000, y = 122.802, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 92144, monster_id = 28010101, pos = { x = 575.007, y = 200.000, z = 594.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 92151, monster_id = 28010302, pos = { x = 429.465, y = 200.010, z = 517.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92152, monster_id = 28010302, pos = { x = 432.851, y = 200.000, z = 530.794 }, rot = { x = 0.000, y = 305.900, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92162, monster_id = 28040102, pos = { x = 348.239, y = 200.000, z = 83.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 92164, monster_id = 28040102, pos = { x = 353.641, y = 200.000, z = 84.144 }, rot = { x = 0.000, y = 107.800, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 92176, monster_id = 28010101, pos = { x = 353.147, y = 200.000, z = 56.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92177, monster_id = 28010101, pos = { x = 328.573, y = 200.594, z = 30.694 }, rot = { x = 0.000, y = 332.920, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92178, monster_id = 28010101, pos = { x = 318.496, y = 201.168, z = 32.686 }, rot = { x = 0.000, y = 332.920, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92179, monster_id = 28010101, pos = { x = 313.973, y = 200.606, z = 27.021 }, rot = { x = 0.000, y = 43.191, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92180, monster_id = 28010301, pos = { x = 241.560, y = 200.837, z = 582.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92181, monster_id = 28010301, pos = { x = 238.267, y = 200.000, z = 575.167 }, rot = { x = 0.000, y = 236.427, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92216, monster_id = 28010202, pos = { x = -61.970, y = 261.994, z = 714.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 8 },
		{ config_id = 92218, monster_id = 28010202, pos = { x = -76.952, y = 269.221, z = 713.956 }, rot = { x = 0.000, y = 278.198, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 8 },
		{ config_id = 92220, monster_id = 28040101, pos = { x = 21.496, y = 200.000, z = 514.694 }, rot = { x = 0.000, y = 91.860, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 92222, monster_id = 28040101, pos = { x = 28.109, y = 200.000, z = 527.592 }, rot = { x = 0.000, y = 70.517, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 92224, monster_id = 28010202, pos = { x = 41.121, y = 224.797, z = 460.784 }, rot = { x = 0.000, y = 219.341, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92229, monster_id = 28010201, pos = { x = 132.189, y = 238.458, z = 267.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92235, monster_id = 28010202, pos = { x = -8.103, y = 223.931, z = 590.680 }, rot = { x = 11.803, y = 67.340, z = 7.382 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92236, monster_id = 28010202, pos = { x = -2.426, y = 211.297, z = 534.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92237, monster_id = 28010202, pos = { x = -3.838, y = 212.079, z = 536.536 }, rot = { x = 0.000, y = 176.727, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92245, monster_id = 28010202, pos = { x = 208.496, y = 237.209, z = 927.311 }, rot = { x = 0.000, y = 105.304, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 },
		{ config_id = 92260, monster_id = 28020301, pos = { x = 279.784, y = 221.289, z = 902.819 }, rot = { x = 0.000, y = 268.405, z = 0.000 }, level = 19, drop_tag = "走兽", isOneoff = true, area_id = 6 },
		{ config_id = 92293, monster_id = 28010202, pos = { x = -105.990, y = 274.605, z = 62.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92294, monster_id = 28010202, pos = { x = -107.194, y = 276.005, z = 59.250 }, rot = { x = 0.000, y = 235.443, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92295, monster_id = 28010202, pos = { x = -166.615, y = 281.081, z = 243.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "采集动物", area_id = 7 },
		{ config_id = 92305, monster_id = 28040102, pos = { x = 385.075, y = 217.676, z = 726.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 6 },
		{ config_id = 92306, monster_id = 28040102, pos = { x = 384.575, y = 217.640, z = 725.596 }, rot = { x = 0.000, y = 275.979, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 6 },
		{ config_id = 92307, monster_id = 28010101, pos = { x = 712.193, y = 200.009, z = 494.168 }, rot = { x = 0.000, y = 267.591, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92308, monster_id = 28010101, pos = { x = 681.617, y = 200.000, z = 539.684 }, rot = { x = 0.000, y = 267.591, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 92309, monster_id = 28010101, pos = { x = 675.410, y = 200.022, z = 534.449 }, rot = { x = 0.000, y = 267.591, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 }
	},
	gadgets = {
		{ config_id = 92133, gadget_id = 70500000, pos = { x = 501.477, y = 201.754, z = 666.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 }
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
		monsters = { 321, 322, 323, 324, 92001, 92003, 92004, 92006, 92009, 92011, 92013, 92014, 92015, 92017, 92019, 92021, 92023, 92024, 92026, 92027, 92030, 92032, 92034, 92035, 92038, 92039, 92040, 92041, 92042, 92043, 92044, 92046, 92048, 92051, 92052, 92058, 92063, 92065, 92067, 92069, 92070, 92073, 92074, 92080, 92083, 92084, 92087, 92088, 92090, 92097, 92098, 92101, 92102, 92104, 92106, 92109, 92112, 92114, 92118, 92120, 92125, 92132, 92137, 92138, 92139, 92140, 92142, 92145, 92146, 92147, 92150, 92155, 92158, 92159, 92165, 92170, 92171, 92172, 92174, 92182, 92185, 92186, 92189, 92191, 92192, 92193, 92194, 92197, 92198, 92199, 92201, 92202, 92204, 92205, 92207, 92208, 92210, 92211, 92212, 92214, 92223, 92225, 92226, 92227, 92228, 92231, 92232, 92234, 92240, 92241, 92243, 92247, 92251, 92252, 92254, 92255, 92256, 92257, 92259, 92261, 92263, 92266, 92267, 92268, 92270, 92271, 92272, 92273, 92274, 92276, 92279, 92280, 92281, 92282, 92287, 92288, 92289, 92290, 92291, 92292, 92296, 92301, 92303 },
		gadgets = { },
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