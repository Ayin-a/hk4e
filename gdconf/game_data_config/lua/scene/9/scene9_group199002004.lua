-- 基础信息
local base_info = {
	group_id = 199002004
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
	{ config_id = 4001, gadget_id = 70310332, pos = { x = 406.146, y = 196.492, z = -635.555 }, rot = { x = 0.000, y = 76.395, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 4002, gadget_id = 70330296, pos = { x = 406.377, y = 197.078, z = -635.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 128, area_id = 401 },
	{ config_id = 4005, gadget_id = 70690011, pos = { x = 418.622, y = 184.720, z = -652.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4007, gadget_id = 70690001, pos = { x = 427.058, y = 208.657, z = -654.600 }, rot = { x = 332.038, y = 107.053, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4008, gadget_id = 70690001, pos = { x = 435.189, y = 211.596, z = -657.095 }, rot = { x = 340.124, y = 104.785, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4009, gadget_id = 70690001, pos = { x = 443.487, y = 214.306, z = -659.285 }, rot = { x = 339.000, y = 103.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4010, gadget_id = 70690001, pos = { x = 451.910, y = 216.820, z = -661.216 }, rot = { x = 340.000, y = 101.066, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4011, gadget_id = 70690001, pos = { x = 460.445, y = 219.133, z = -662.885 }, rot = { x = 340.000, y = 99.191, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4012, gadget_id = 70690001, pos = { x = 469.083, y = 221.236, z = -664.283 }, rot = { x = 340.000, y = 97.176, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4013, gadget_id = 70690001, pos = { x = 477.816, y = 223.108, z = -665.382 }, rot = { x = 340.000, y = 95.074, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4014, gadget_id = 70690001, pos = { x = 486.633, y = 224.732, z = -666.165 }, rot = { x = 340.000, y = 92.700, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4015, gadget_id = 70690001, pos = { x = 495.522, y = 226.068, z = -666.584 }, rot = { x = 350.000, y = 90.158, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4016, gadget_id = 70690001, pos = { x = 504.462, y = 227.089, z = -666.609 }, rot = { x = 350.000, y = 87.329, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4017, gadget_id = 70690001, pos = { x = 513.426, y = 227.753, z = -666.191 }, rot = { x = 350.000, y = 83.989, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4018, gadget_id = 70690001, pos = { x = 522.369, y = 228.091, z = -665.249 }, rot = { x = 350.000, y = 80.788, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4019, gadget_id = 70690001, pos = { x = 531.230, y = 228.692, z = -663.812 }, rot = { x = 350.000, y = 77.824, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4020, gadget_id = 70690001, pos = { x = 539.973, y = 229.682, z = -661.926 }, rot = { x = 345.000, y = 75.520, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4021, gadget_id = 70690001, pos = { x = 548.596, y = 230.971, z = -659.699 }, rot = { x = 345.000, y = 73.509, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4022, gadget_id = 70690001, pos = { x = 557.098, y = 232.514, z = -657.182 }, rot = { x = 345.000, y = 71.837, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4023, gadget_id = 70690001, pos = { x = 565.485, y = 234.265, z = -654.430 }, rot = { x = 345.000, y = 70.319, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4024, gadget_id = 70690001, pos = { x = 573.761, y = 236.200, z = -651.470 }, rot = { x = 340.000, y = 68.999, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4025, gadget_id = 70690001, pos = { x = 581.933, y = 238.293, z = -648.333 }, rot = { x = 340.000, y = 67.775, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4026, gadget_id = 70690001, pos = { x = 590.002, y = 240.529, z = -645.036 }, rot = { x = 340.000, y = 66.626, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4027, gadget_id = 70690001, pos = { x = 597.973, y = 242.898, z = -641.591 }, rot = { x = 340.000, y = 65.529, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4028, gadget_id = 70690001, pos = { x = 605.844, y = 245.390, z = -638.009 }, rot = { x = 340.000, y = 64.406, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4029, gadget_id = 70690001, pos = { x = 613.610, y = 248.006, z = -634.289 }, rot = { x = 340.000, y = 63.097, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4030, gadget_id = 70690001, pos = { x = 620.773, y = 250.592, z = -630.655 }, rot = { x = 335.000, y = 63.097, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4031, gadget_id = 70690011, pos = { x = 637.977, y = 238.473, z = -620.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4033, gadget_id = 70690001, pos = { x = 649.128, y = 261.265, z = -612.800 }, rot = { x = 5.000, y = 38.329, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4034, gadget_id = 70690001, pos = { x = 654.655, y = 260.015, z = -605.810 }, rot = { x = 5.000, y = 35.345, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4035, gadget_id = 70690001, pos = { x = 659.821, y = 258.913, z = -598.525 }, rot = { x = 5.000, y = 33.137, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4036, gadget_id = 70690001, pos = { x = 664.711, y = 257.923, z = -591.034 }, rot = { x = 3.000, y = 31.180, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4037, gadget_id = 70690001, pos = { x = 669.348, y = 257.035, z = -583.372 }, rot = { x = 3.000, y = 29.335, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4038, gadget_id = 70690001, pos = { x = 673.739, y = 256.243, z = -575.557 }, rot = { x = 2.000, y = 27.557, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4039, gadget_id = 70690001, pos = { x = 677.891, y = 255.546, z = -567.603 }, rot = { x = 0.000, y = 25.875, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4040, gadget_id = 70690001, pos = { x = 681.809, y = 254.940, z = -559.524 }, rot = { x = 0.000, y = 24.175, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4041, gadget_id = 70690001, pos = { x = 685.489, y = 254.424, z = -551.327 }, rot = { x = 0.000, y = 22.531, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4042, gadget_id = 70690001, pos = { x = 688.933, y = 253.999, z = -543.023 }, rot = { x = 0.000, y = 20.900, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4043, gadget_id = 70690001, pos = { x = 692.141, y = 253.662, z = -534.622 }, rot = { x = 355.000, y = 19.284, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4044, gadget_id = 70690001, pos = { x = 695.112, y = 253.414, z = -526.130 }, rot = { x = 355.000, y = 17.649, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4045, gadget_id = 70690001, pos = { x = 697.840, y = 253.256, z = -517.555 }, rot = { x = 355.000, y = 15.863, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4046, gadget_id = 70690001, pos = { x = 700.300, y = 253.175, z = -508.900 }, rot = { x = 355.000, y = 12.383, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4047, gadget_id = 70690001, pos = { x = 702.229, y = 253.017, z = -500.114 }, rot = { x = 355.000, y = 7.675, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4048, gadget_id = 70690001, pos = { x = 703.430, y = 252.682, z = -491.203 }, rot = { x = 355.000, y = 3.462, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4049, gadget_id = 70690001, pos = { x = 703.972, y = 252.193, z = -482.235 }, rot = { x = 355.000, y = 359.710, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4050, gadget_id = 70690001, pos = { x = 703.927, y = 251.567, z = -473.258 }, rot = { x = 0.000, y = 356.261, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4051, gadget_id = 70690001, pos = { x = 703.342, y = 250.819, z = -464.310 }, rot = { x = 0.000, y = 353.177, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4052, gadget_id = 70690001, pos = { x = 702.278, y = 249.965, z = -455.415 }, rot = { x = 0.000, y = 350.404, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4053, gadget_id = 70690001, pos = { x = 700.786, y = 249.017, z = -446.591 }, rot = { x = 0.000, y = 347.842, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4054, gadget_id = 70690001, pos = { x = 698.903, y = 247.985, z = -437.852 }, rot = { x = 2.000, y = 345.522, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4055, gadget_id = 70690001, pos = { x = 696.670, y = 246.878, z = -429.204 }, rot = { x = 2.000, y = 343.392, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4056, gadget_id = 70690001, pos = { x = 694.120, y = 245.706, z = -420.654 }, rot = { x = 2.000, y = 341.411, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4057, gadget_id = 70690001, pos = { x = 691.278, y = 244.473, z = -412.204 }, rot = { x = 3.000, y = 339.555, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4058, gadget_id = 70690001, pos = { x = 688.167, y = 243.185, z = -403.858 }, rot = { x = 3.000, y = 337.782, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4059, gadget_id = 70690001, pos = { x = 684.802, y = 241.846, z = -395.620 }, rot = { x = 3.000, y = 336.073, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4060, gadget_id = 70690001, pos = { x = 681.195, y = 240.459, z = -387.492 }, rot = { x = 4.000, y = 334.370, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4061, gadget_id = 70690001, pos = { x = 677.352, y = 239.026, z = -379.481 }, rot = { x = 4.000, y = 332.557, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4062, gadget_id = 70690001, pos = { x = 673.261, y = 237.545, z = -371.603 }, rot = { x = 4.000, y = 332.557, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4064, gadget_id = 70690011, pos = { x = 661.760, y = 220.211, z = -351.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4066, gadget_id = 70690001, pos = { x = 651.970, y = 240.190, z = -349.032 }, rot = { x = 350.000, y = 284.832, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4067, gadget_id = 70690001, pos = { x = 643.278, y = 240.565, z = -346.730 }, rot = { x = 350.000, y = 284.785, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4068, gadget_id = 70690001, pos = { x = 634.583, y = 240.936, z = -344.435 }, rot = { x = 350.000, y = 284.742, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4069, gadget_id = 70690001, pos = { x = 625.887, y = 241.303, z = -342.147 }, rot = { x = 350.000, y = 284.699, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4070, gadget_id = 70690001, pos = { x = 617.188, y = 241.667, z = -339.865 }, rot = { x = 350.000, y = 284.651, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4071, gadget_id = 70690001, pos = { x = 608.488, y = 242.027, z = -337.591 }, rot = { x = 350.000, y = 284.597, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4072, gadget_id = 70690001, pos = { x = 599.785, y = 242.382, z = -335.324 }, rot = { x = 350.000, y = 284.532, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4073, gadget_id = 70690001, pos = { x = 591.080, y = 242.731, z = -333.068 }, rot = { x = 350.000, y = 284.452, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4074, gadget_id = 70690001, pos = { x = 582.371, y = 243.074, z = -330.823 }, rot = { x = 350.000, y = 284.343, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4075, gadget_id = 70690001, pos = { x = 573.657, y = 243.408, z = -328.595 }, rot = { x = 350.000, y = 284.195, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4076, gadget_id = 70690001, pos = { x = 564.938, y = 243.729, z = -326.390 }, rot = { x = 350.000, y = 283.951, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4077, gadget_id = 70690001, pos = { x = 556.208, y = 244.029, z = -324.221 }, rot = { x = 350.000, y = 283.440, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4078, gadget_id = 70690001, pos = { x = 547.458, y = 244.286, z = -322.130 }, rot = { x = 355.000, y = 281.124, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4079, gadget_id = 70690001, pos = { x = 538.630, y = 244.388, z = -320.394 }, rot = { x = 355.000, y = 277.492, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4080, gadget_id = 70690001, pos = { x = 529.708, y = 244.447, z = -319.221 }, rot = { x = 355.000, y = 274.413, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4081, gadget_id = 70690001, pos = { x = 520.736, y = 244.459, z = -318.528 }, rot = { x = 355.000, y = 271.345, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4082, gadget_id = 70690001, pos = { x = 511.740, y = 244.396, z = -318.317 }, rot = { x = 355.000, y = 268.176, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4083, gadget_id = 70690001, pos = { x = 502.747, y = 244.243, z = -318.604 }, rot = { x = 355.000, y = 264.869, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4084, gadget_id = 70690001, pos = { x = 493.788, y = 243.989, z = -319.408 }, rot = { x = 356.000, y = 261.337, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4085, gadget_id = 70690001, pos = { x = 484.900, y = 243.625, z = -320.762 }, rot = { x = 0.000, y = 257.628, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 4086, gadget_id = 70690001, pos = { x = 476.123, y = 243.142, z = -322.687 }, rot = { x = 0.000, y = 253.644, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4087, gadget_id = 70690001, pos = { x = 467.509, y = 242.533, z = -325.215 }, rot = { x = 0.000, y = 249.492, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4088, gadget_id = 70690001, pos = { x = 459.110, y = 241.793, z = -328.357 }, rot = { x = 0.000, y = 244.845, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4089, gadget_id = 70690001, pos = { x = 451.010, y = 240.885, z = -332.161 }, rot = { x = 3.000, y = 239.030, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4090, gadget_id = 70690001, pos = { x = 443.380, y = 239.584, z = -336.740 }, rot = { x = 8.000, y = 233.204, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4091, gadget_id = 70690001, pos = { x = 436.310, y = 237.854, z = -342.028 }, rot = { x = 10.000, y = 228.851, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4092, gadget_id = 70690001, pos = { x = 429.710, y = 235.821, z = -347.796 }, rot = { x = 10.000, y = 225.310, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4093, gadget_id = 70690001, pos = { x = 423.519, y = 233.556, z = -353.920 }, rot = { x = 10.000, y = 222.349, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4094, gadget_id = 70690001, pos = { x = 417.686, y = 231.105, z = -360.320 }, rot = { x = 10.000, y = 219.883, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4095, gadget_id = 70690001, pos = { x = 412.161, y = 228.508, z = -366.932 }, rot = { x = 12.000, y = 217.680, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4096, gadget_id = 70690001, pos = { x = 406.918, y = 225.785, z = -373.720 }, rot = { x = 12.000, y = 215.750, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4097, gadget_id = 70690001, pos = { x = 401.927, y = 222.956, z = -380.654 }, rot = { x = 13.000, y = 213.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4098, gadget_id = 70690001, pos = { x = 397.171, y = 220.033, z = -387.714 }, rot = { x = 13.000, y = 212.232, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4099, gadget_id = 70690001, pos = { x = 392.648, y = 217.022, z = -394.888 }, rot = { x = 15.000, y = 210.378, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4100, gadget_id = 70690001, pos = { x = 388.376, y = 213.921, z = -402.176 }, rot = { x = 15.000, y = 210.378, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4101, gadget_id = 70690011, pos = { x = 374.570, y = 192.814, z = -422.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4105, gadget_id = 70690001, pos = { x = 368.379, y = 207.089, z = -440.588 }, rot = { x = 350.000, y = 192.657, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4106, gadget_id = 70690001, pos = { x = 366.409, y = 207.291, z = -449.360 }, rot = { x = 350.000, y = 187.236, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4107, gadget_id = 70690001, pos = { x = 365.276, y = 207.618, z = -458.281 }, rot = { x = 350.000, y = 184.386, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4108, gadget_id = 70690001, pos = { x = 364.588, y = 207.999, z = -467.246 }, rot = { x = 350.000, y = 182.518, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4109, gadget_id = 70690001, pos = { x = 364.193, y = 208.407, z = -476.227 }, rot = { x = 350.000, y = 181.122, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4110, gadget_id = 70690001, pos = { x = 364.017, y = 208.825, z = -485.216 }, rot = { x = 350.000, y = 179.974, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4111, gadget_id = 70690001, pos = { x = 364.022, y = 209.240, z = -494.206 }, rot = { x = 350.000, y = 178.939, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4112, gadget_id = 70690001, pos = { x = 364.188, y = 209.638, z = -503.196 }, rot = { x = 350.000, y = 177.904, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4113, gadget_id = 70690001, pos = { x = 364.517, y = 210.000, z = -512.182 }, rot = { x = 350.000, y = 176.670, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4114, gadget_id = 70690001, pos = { x = 365.039, y = 210.283, z = -521.162 }, rot = { x = 350.000, y = 173.690, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4115, gadget_id = 70690001, pos = { x = 366.028, y = 210.314, z = -530.099 }, rot = { x = 0.000, y = 163.092, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4116, gadget_id = 70690001, pos = { x = 368.637, y = 209.786, z = -538.682 }, rot = { x = 0.000, y = 157.144, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4117, gadget_id = 70690001, pos = { x = 372.118, y = 208.998, z = -546.942 }, rot = { x = 0.000, y = 154.462, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4118, gadget_id = 70690001, pos = { x = 375.979, y = 208.097, z = -555.021 }, rot = { x = 0.000, y = 152.778, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4119, gadget_id = 70690001, pos = { x = 380.071, y = 207.126, z = -562.978 }, rot = { x = 0.000, y = 151.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4120, gadget_id = 70690001, pos = { x = 384.329, y = 206.105, z = -570.840 }, rot = { x = 358.000, y = 150.589, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4121, gadget_id = 70690001, pos = { x = 388.718, y = 205.044, z = -578.626 }, rot = { x = 357.000, y = 149.711, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 4122, gadget_id = 70690001, pos = { x = 393.224, y = 203.948, z = -586.339 }, rot = { x = 0.000, y = 149.711, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 4032, shape = RegionShape.SPHERE, radius = 15, pos = { x = 605.844, y = 245.390, z = -638.009 }, area_id = 401 },
	{ config_id = 4063, shape = RegionShape.SPHERE, radius = 15, pos = { x = 665.917, y = 258.913, z = -591.808 }, area_id = 401 },
	{ config_id = 4065, shape = RegionShape.SPHERE, radius = 15, pos = { x = 681.195, y = 240.459, z = -387.492 }, area_id = 401 },
	{ config_id = 4102, shape = RegionShape.SPHERE, radius = 15, pos = { x = 397.171, y = 220.033, z = -387.714 }, area_id = 401 },
	{ config_id = 4103, shape = RegionShape.SPHERE, radius = 15, pos = { x = 365.276, y = 207.618, z = -467.639 }, area_id = 401 },
	{ config_id = 4104, shape = RegionShape.SPHERE, radius = 15, pos = { x = 619.447, y = 240.936, z = -344.435 }, area_id = 401 },
	{ config_id = 4123, shape = RegionShape.SPHERE, radius = 15, pos = { x = 393.224, y = 203.948, z = -586.339 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "GADGET_STATE_CHANGE_4003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "GADGETTALK_DONE_4004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800324", condition = "condition_EVENT_GADGETTALK_DONE_4004", action = "action_EVENT_GADGETTALK_DONE_4004", trigger_count = 0 },
	{ config_id = 1004006, name = "GADGETTALK_DONE_4006", event = EventType.EVENT_GADGETTALK_DONE, source = "6800319", condition = "", action = "action_EVENT_GADGETTALK_DONE_4006", trigger_count = 0 },
	{ config_id = 1004032, name = "ENTER_REGION_4032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4032", action = "action_EVENT_ENTER_REGION_4032", trigger_count = 0 },
	{ config_id = 1004063, name = "ENTER_REGION_4063", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4063", action = "action_EVENT_ENTER_REGION_4063", trigger_count = 0 },
	{ config_id = 1004065, name = "ENTER_REGION_4065", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4065", action = "action_EVENT_ENTER_REGION_4065", trigger_count = 0 },
	{ config_id = 1004102, name = "ENTER_REGION_4102", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4102", action = "action_EVENT_ENTER_REGION_4102", trigger_count = 0 },
	{ config_id = 1004103, name = "ENTER_REGION_4103", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4103", action = "action_EVENT_ENTER_REGION_4103", trigger_count = 0 },
	{ config_id = 1004104, name = "ENTER_REGION_4104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4104", action = "action_EVENT_ENTER_REGION_4104", trigger_count = 0 },
	{ config_id = 1004123, name = "ENTER_REGION_4123", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4123", action = "action_EVENT_ENTER_REGION_4123", trigger_count = 0 },
	{ config_id = 1004124, name = "TIME_AXIS_PASS_4124", event = EventType.EVENT_TIME_AXIS_PASS, source = "fly", condition = "condition_EVENT_TIME_AXIS_PASS_4124", action = "action_EVENT_TIME_AXIS_PASS_4124", trigger_count = 0 },
	{ config_id = 1004125, name = "GROUP_LOAD_4125", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4125", trigger_count = 0 },
	{ config_id = 1004126, name = "GROUP_REFRESH_4126", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_4126", trigger_count = 0 },
	{ config_id = 1004127, name = "VARIABLE_CHANGE_4127", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4127", action = "action_EVENT_VARIABLE_CHANGE_4127", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false },
	{ config_id = 2, name = "remove", value = 0, no_refresh = false },
	{ config_id = 4, name = "put", value = 0, no_refresh = true }
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
		gadgets = { 4001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4003", "GADGETTALK_DONE_4004", "GADGETTALK_DONE_4006", "TIME_AXIS_PASS_4124", "GROUP_LOAD_4125", "GROUP_REFRESH_4126", "VARIABLE_CHANGE_4127" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4005, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031 },
		regions = { 4032 },
		triggers = { "ENTER_REGION_4032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4033, 4034, 4035, 4036, 4037, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050, 4051, 4052, 4053, 4054, 4055, 4056, 4057, 4058, 4059, 4060, 4061, 4062, 4064 },
		regions = { 4063, 4065 },
		triggers = { "ENTER_REGION_4063", "ENTER_REGION_4065" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4066, 4067, 4068, 4069, 4070, 4071, 4072, 4073, 4074, 4075, 4076, 4077, 4078, 4079, 4080, 4081, 4082, 4083, 4084, 4085, 4086, 4087, 4088, 4089, 4090, 4091, 4092, 4093, 4094, 4095, 4096, 4097, 4098, 4099, 4100, 4101 },
		regions = { 4102, 4104 },
		triggers = { "ENTER_REGION_4102", "ENTER_REGION_4104" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 4105, 4106, 4107, 4108, 4109, 4110, 4111, 4112, 4113, 4114, 4115, 4116, 4117, 4118, 4119, 4120, 4121, 4122 },
		regions = { 4103, 4123 },
		triggers = { "ENTER_REGION_4103", "ENTER_REGION_4123" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4003(context, evt)
	if evt.param2 == 4002 and ScriptLib.GetGadgetStateByConfigId(context, 0, 4002) == 201 then
		ScriptLib.SetGroupVariableValue(context, "put", 1)
		
		ScriptLib.SetGadgetTalkByConfigId(context, 199002004, 4001, 6800323)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGETTALK_DONE_4004(context, evt)
	-- 判断变量"start"为0
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_4004(context, evt)
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002148) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002004, 2)
	
	-- 创建标识为"fly"，时间节点为{120}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fly", {120}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_4006(context, evt)
	-- 创建id为4002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4032(context, evt)
	if evt.param1 ~= 4032 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4063(context, evt)
	if evt.param1 ~= 4063 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4063(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4065(context, evt)
	if evt.param1 ~= 4065 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4065(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4102(context, evt)
	if evt.param1 ~= 4102 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4102(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4103(context, evt)
	if evt.param1 ~= 4103 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4103(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4104(context, evt)
	if evt.param1 ~= 4104 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4104(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4123(context, evt)
	if evt.param1 ~= 4123 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4123(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4124(context, evt)
	if "fly" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4124(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4125(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_4126(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "put") == 1 then
		ScriptLib.SetGadgetTalkByConfigId(context, 199002004, 4001, 6800323)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4127(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"remove"为1
	if ScriptLib.GetGroupVariableValue(context, "remove") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4127(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end