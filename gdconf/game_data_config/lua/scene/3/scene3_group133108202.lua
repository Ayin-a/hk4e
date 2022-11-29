-- 基础信息
local base_info = {
	group_id = 133108202
}

-- Trigger变量
local defs = {
	gallery_id = 14003,
	speed_double = 5
}

-- DEFS_MISCS
local Raft_Monster_List = {
    [202102] = {202054},
    [202038] = {202056},
    [202001] = {202095},
    [202005] = {202127},
    [202091] = {202099},
    [202093] = {202107},
    [202051] = {202110},
    [202047] = {202121},
    [202050] = {202104},
    [202094] = {202112},
    [202052] = {202117}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202054, monster_id = 25010301, pos = { x = -331.199, y = 200.539, z = -552.603 }, rot = { x = 0.000, y = 356.275, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 202056, monster_id = 25010301, pos = { x = -393.760, y = 200.539, z = -570.612 }, rot = { x = 0.000, y = 304.247, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 202095, monster_id = 25010501, pos = { x = -404.222, y = 200.509, z = -603.046 }, rot = { x = 0.000, y = 303.838, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 202097, monster_id = 25010501, pos = { x = -284.352, y = 199.924, z = -569.121 }, rot = { x = 0.000, y = 297.409, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 202099, monster_id = 25010501, pos = { x = -256.932, y = 200.535, z = -555.307 }, rot = { x = 0.000, y = 195.587, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 202104, monster_id = 25010501, pos = { x = -248.613, y = 200.475, z = -629.695 }, rot = { x = 0.000, y = 66.254, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 4, area_id = 7 },
	{ config_id = 202107, monster_id = 25010301, pos = { x = -200.720, y = 200.508, z = -597.773 }, rot = { x = 0.000, y = 242.416, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 4, area_id = 7 },
	{ config_id = 202110, monster_id = 25010301, pos = { x = -197.832, y = 200.504, z = -606.377 }, rot = { x = 0.000, y = 280.190, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 4, area_id = 7 },
	{ config_id = 202112, monster_id = 25010401, pos = { x = -195.889, y = 200.501, z = -657.195 }, rot = { x = 0.000, y = 310.538, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 202117, monster_id = 25010401, pos = { x = -201.939, y = 200.504, z = -666.100 }, rot = { x = 0.000, y = 63.359, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 202121, monster_id = 25010401, pos = { x = -233.503, y = 200.521, z = -561.640 }, rot = { x = 0.000, y = 255.189, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 202124, monster_id = 25010401, pos = { x = -293.080, y = 200.104, z = -572.545 }, rot = { x = 0.000, y = 297.049, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 202127, monster_id = 25010401, pos = { x = -399.457, y = 200.528, z = -585.364 }, rot = { x = 0.000, y = 217.127, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 4, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 202001, gadget_id = 70800090, pos = { x = -404.062, y = 200.000, z = -603.123 }, rot = { x = 0.000, y = 76.185, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202005, gadget_id = 70800090, pos = { x = -399.848, y = 200.000, z = -584.669 }, rot = { x = 0.000, y = 323.051, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202006, gadget_id = 70800105, pos = { x = -401.356, y = 200.000, z = -586.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202008, gadget_id = 71700332, pos = { x = -435.452, y = 200.992, z = -631.511 }, rot = { x = 355.892, y = 60.297, z = 359.338 }, level = 30, route_id = 310800046, persistent = true, area_id = 7 },
	-- 第一检查点
	{ config_id = 202009, gadget_id = 70710126, pos = { x = -406.810, y = 200.000, z = -619.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	-- 第二检查点
	{ config_id = 202010, gadget_id = 70710126, pos = { x = -344.500, y = 200.000, z = -588.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	-- 第三检查点
	{ config_id = 202011, gadget_id = 70710126, pos = { x = -310.833, y = 200.000, z = -578.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 },
	-- 第四检查点
	{ config_id = 202012, gadget_id = 70710126, pos = { x = -272.082, y = 200.000, z = -584.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 },
	-- 第五检查点
	{ config_id = 202013, gadget_id = 70710126, pos = { x = -232.406, y = 200.000, z = -584.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 },
	-- 第六检查点
	{ config_id = 202014, gadget_id = 70710126, pos = { x = -221.342, y = 200.000, z = -620.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 },
	-- 第七检查点
	{ config_id = 202015, gadget_id = 70710126, pos = { x = -228.903, y = 200.000, z = -648.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 },
	-- 第八检查点
	{ config_id = 202016, gadget_id = 70710126, pos = { x = -236.788, y = 200.000, z = -676.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 },
	{ config_id = 202033, gadget_id = 70800106, pos = { x = -241.856, y = 199.929, z = -677.486 }, rot = { x = 356.340, y = 68.179, z = 5.074 }, level = 30, area_id = 7 },
	{ config_id = 202034, gadget_id = 70350250, pos = { x = -438.799, y = 199.111, z = -627.626 }, rot = { x = 0.000, y = 244.612, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202038, gadget_id = 70800090, pos = { x = -392.914, y = 200.000, z = -570.640 }, rot = { x = 0.000, y = 279.311, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202039, gadget_id = 70800106, pos = { x = -236.101, y = 200.000, z = -681.826 }, rot = { x = 0.000, y = 167.564, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202040, gadget_id = 70350249, pos = { x = -256.381, y = 200.000, z = -575.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202041, gadget_id = 70800105, pos = { x = -406.961, y = 200.000, z = -620.821 }, rot = { x = 0.000, y = 75.680, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202042, gadget_id = 70290180, pos = { x = -280.497, y = 200.000, z = -555.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202043, gadget_id = 70800105, pos = { x = -403.718, y = 200.000, z = -619.911 }, rot = { x = 0.000, y = 322.084, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202044, gadget_id = 70800105, pos = { x = -407.579, y = 200.000, z = -616.445 }, rot = { x = 0.000, y = 303.807, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202045, gadget_id = 70350249, pos = { x = -408.626, y = 200.000, z = -608.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202047, gadget_id = 70800090, pos = { x = -232.950, y = 200.000, z = -560.131 }, rot = { x = 0.000, y = 359.093, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202049, gadget_id = 70350249, pos = { x = -410.272, y = 200.000, z = -600.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202050, gadget_id = 70800090, pos = { x = -247.986, y = 200.000, z = -629.712 }, rot = { x = 0.000, y = 258.132, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202051, gadget_id = 70800090, pos = { x = -199.165, y = 200.000, z = -606.398 }, rot = { x = 0.000, y = 65.014, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202052, gadget_id = 70800090, pos = { x = -200.508, y = 200.000, z = -665.575 }, rot = { x = 0.000, y = 49.853, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202053, gadget_id = 70350249, pos = { x = -411.458, y = 200.000, z = -592.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202055, gadget_id = 70350249, pos = { x = -409.350, y = 200.000, z = -581.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202057, gadget_id = 70350249, pos = { x = -247.994, y = 200.000, z = -575.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202058, gadget_id = 70800105, pos = { x = -345.020, y = 200.000, z = -585.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202059, gadget_id = 70800105, pos = { x = -346.800, y = 200.000, z = -588.133 }, rot = { x = 0.000, y = 231.582, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202060, gadget_id = 70800105, pos = { x = -343.421, y = 200.000, z = -589.464 }, rot = { x = 0.000, y = 68.343, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202061, gadget_id = 70350249, pos = { x = -407.792, y = 200.000, z = -570.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202062, gadget_id = 70800105, pos = { x = -310.594, y = 200.000, z = -576.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202063, gadget_id = 70800105, pos = { x = -309.353, y = 200.000, z = -580.281 }, rot = { x = 0.000, y = 93.822, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202064, gadget_id = 70800105, pos = { x = -312.469, y = 200.000, z = -578.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202065, gadget_id = 70350249, pos = { x = -400.912, y = 200.000, z = -560.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202066, gadget_id = 70800105, pos = { x = -270.118, y = 200.000, z = -582.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202067, gadget_id = 70800105, pos = { x = -273.197, y = 200.000, z = -582.900 }, rot = { x = 0.000, y = 87.364, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202068, gadget_id = 70800105, pos = { x = -272.333, y = 200.000, z = -586.176 }, rot = { x = 0.000, y = 133.369, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202069, gadget_id = 70350249, pos = { x = -393.099, y = 200.000, z = -558.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202070, gadget_id = 70350249, pos = { x = -384.364, y = 200.000, z = -558.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202071, gadget_id = 70800105, pos = { x = -233.209, y = 200.000, z = -586.255 }, rot = { x = 0.000, y = 269.482, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202072, gadget_id = 70800105, pos = { x = -232.287, y = 200.000, z = -582.107 }, rot = { x = 0.000, y = 115.087, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202073, gadget_id = 70800105, pos = { x = -234.257, y = 200.000, z = -583.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202074, gadget_id = 70800105, pos = { x = -219.925, y = 200.000, z = -619.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202075, gadget_id = 70800105, pos = { x = -222.559, y = 200.000, z = -622.294 }, rot = { x = 0.000, y = 358.509, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202076, gadget_id = 70800105, pos = { x = -222.490, y = 200.000, z = -620.392 }, rot = { x = 0.000, y = 278.628, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202077, gadget_id = 70350249, pos = { x = -372.675, y = 200.000, z = -560.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202078, gadget_id = 70800105, pos = { x = -226.390, y = 200.000, z = -649.403 }, rot = { x = 0.000, y = 89.718, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202079, gadget_id = 70350249, pos = { x = -363.930, y = 200.000, z = -564.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202080, gadget_id = 70800105, pos = { x = -231.020, y = 200.000, z = -648.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202081, gadget_id = 70800105, pos = { x = -227.893, y = 200.000, z = -646.708 }, rot = { x = 0.000, y = 293.653, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202082, gadget_id = 70800105, pos = { x = -231.766, y = 200.000, z = -668.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202083, gadget_id = 70800105, pos = { x = -230.177, y = 200.000, z = -671.541 }, rot = { x = 0.000, y = 120.234, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202084, gadget_id = 70800105, pos = { x = -232.583, y = 200.000, z = -671.095 }, rot = { x = 0.000, y = 296.428, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202085, gadget_id = 70350249, pos = { x = -354.387, y = 200.000, z = -567.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202086, gadget_id = 70350249, pos = { x = -345.297, y = 200.000, z = -569.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202087, gadget_id = 70350249, pos = { x = -337.486, y = 200.000, z = -569.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202088, gadget_id = 70350249, pos = { x = -240.926, y = 200.000, z = -577.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202089, gadget_id = 70350249, pos = { x = -330.004, y = 200.000, z = -567.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202090, gadget_id = 70350249, pos = { x = -321.656, y = 200.000, z = -564.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202091, gadget_id = 70800090, pos = { x = -256.700, y = 200.000, z = -555.518 }, rot = { x = 0.000, y = 336.092, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202092, gadget_id = 70350249, pos = { x = -313.310, y = 200.000, z = -563.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202093, gadget_id = 70800090, pos = { x = -200.817, y = 200.000, z = -597.276 }, rot = { x = 0.000, y = 77.959, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202094, gadget_id = 70800090, pos = { x = -195.887, y = 200.000, z = -657.546 }, rot = { x = 0.000, y = 160.499, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202096, gadget_id = 70350249, pos = { x = -305.546, y = 200.000, z = -563.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202098, gadget_id = 70350249, pos = { x = -298.833, y = 200.000, z = -561.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202100, gadget_id = 70350249, pos = { x = -292.339, y = 200.000, z = -558.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202102, gadget_id = 70800090, pos = { x = -330.701, y = 200.000, z = -553.286 }, rot = { x = 0.000, y = 331.339, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202103, gadget_id = 70800105, pos = { x = -334.311, y = 200.000, z = -552.585 }, rot = { x = 0.000, y = 291.029, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202105, gadget_id = 70800105, pos = { x = -426.048, y = 200.000, z = -626.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202106, gadget_id = 70350249, pos = { x = -288.204, y = 200.000, z = -550.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202108, gadget_id = 70350249, pos = { x = -264.760, y = 200.000, z = -576.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202109, gadget_id = 70350249, pos = { x = -283.306, y = 200.000, z = -546.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202111, gadget_id = 70350249, pos = { x = -270.354, y = 200.000, z = -562.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202113, gadget_id = 70800105, pos = { x = -283.464, y = 200.000, z = -565.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202116, gadget_id = 70800105, pos = { x = -296.416, y = 200.000, z = -571.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202118, gadget_id = 70800105, pos = { x = -258.640, y = 200.000, z = -559.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202119, gadget_id = 70350249, pos = { x = -269.450, y = 200.000, z = -569.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202120, gadget_id = 70350249, pos = { x = -234.995, y = 200.000, z = -582.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202122, gadget_id = 70800105, pos = { x = -402.493, y = 200.000, z = -605.567 }, rot = { x = 0.000, y = 199.708, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202125, gadget_id = 70350249, pos = { x = -228.505, y = 200.000, z = -588.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202126, gadget_id = 70350249, pos = { x = -223.054, y = 200.000, z = -592.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202128, gadget_id = 70350249, pos = { x = -218.628, y = 200.000, z = -600.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202129, gadget_id = 70800105, pos = { x = -202.627, y = 200.000, z = -663.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202130, gadget_id = 70800105, pos = { x = -395.689, y = 200.000, z = -573.053 }, rot = { x = 0.000, y = 239.001, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202131, gadget_id = 70350249, pos = { x = -217.285, y = 200.000, z = -609.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202132, gadget_id = 70350249, pos = { x = -221.648, y = 200.000, z = -620.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202135, gadget_id = 70350249, pos = { x = -227.575, y = 200.000, z = -624.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202136, gadget_id = 70800105, pos = { x = -230.001, y = 200.000, z = -561.381 }, rot = { x = 0.000, y = 134.336, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202138, gadget_id = 70800105, pos = { x = -201.230, y = 200.000, z = -599.906 }, rot = { x = 0.000, y = 104.998, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202139, gadget_id = 70350249, pos = { x = -233.315, y = 200.000, z = -630.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202140, gadget_id = 70800105, pos = { x = -244.880, y = 200.000, z = -625.647 }, rot = { x = 0.000, y = 15.494, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202141, gadget_id = 70800105, pos = { x = -201.109, y = 200.000, z = -604.514 }, rot = { x = 0.000, y = 235.570, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202142, gadget_id = 70800105, pos = { x = -199.428, y = 200.000, z = -657.458 }, rot = { x = 0.000, y = 312.178, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202143, gadget_id = 70350249, pos = { x = -233.565, y = 200.000, z = -638.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202144, gadget_id = 70350249, pos = { x = -229.832, y = 200.000, z = -645.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202145, gadget_id = 70350249, pos = { x = -225.670, y = 200.000, z = -654.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202146, gadget_id = 70350249, pos = { x = -225.649, y = 200.000, z = -662.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202147, gadget_id = 70350249, pos = { x = -228.595, y = 200.000, z = -668.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202148, gadget_id = 70800106, pos = { x = -225.112, y = 200.000, z = -575.965 }, rot = { x = 0.000, y = 313.665, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202149, gadget_id = 70800106, pos = { x = -237.241, y = 200.000, z = -608.056 }, rot = { x = 0.000, y = 18.825, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202150, gadget_id = 70800106, pos = { x = -212.144, y = 200.000, z = -634.121 }, rot = { x = 0.000, y = 337.164, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202151, gadget_id = 70350249, pos = { x = -270.944, y = 200.000, z = -556.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202152, gadget_id = 70350249, pos = { x = -271.664, y = 200.000, z = -548.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202153, gadget_id = 70350249, pos = { x = -276.264, y = 200.000, z = -544.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202154, gadget_id = 70350277, pos = { x = -438.508, y = 200.127, z = -627.248 }, rot = { x = 0.000, y = 65.382, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 202156, gadget_id = 70800088, pos = { x = -380.235, y = 200.000, z = -620.020 }, rot = { x = 0.000, y = 357.619, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202157, gadget_id = 70800090, pos = { x = -384.601, y = 200.000, z = -614.578 }, rot = { x = 0.000, y = 143.211, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202158, gadget_id = 70800089, pos = { x = -388.131, y = 200.000, z = -602.224 }, rot = { x = 0.000, y = 342.691, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202159, gadget_id = 70800090, pos = { x = -384.148, y = 200.000, z = -608.454 }, rot = { x = 0.000, y = 7.028, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 202190, gadget_id = 70290180, pos = { x = -329.171, y = 200.000, z = -579.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202193, gadget_id = 70290180, pos = { x = -251.496, y = 200.000, z = -585.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202194, gadget_id = 70290180, pos = { x = -225.366, y = 200.000, z = -606.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 202195, gadget_id = 70290180, pos = { x = -225.492, y = 200.000, z = -635.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 }
}

-- 区域
regions = {
	-- 超出区域 失败
	{ config_id = 202003, shape = RegionShape.SPHERE, radius = 200, pos = { x = -281.843, y = 200.000, z = -620.499 }, area_id = 7 },
	-- 教学trigger
	{ config_id = 202018, shape = RegionShape.SPHERE, radius = 10, pos = { x = -438.799, y = 199.111, z = -627.626 }, area_id = 7 },
	-- 可以开挑战
	{ config_id = 202046, shape = RegionShape.SPHERE, radius = 5, pos = { x = -438.799, y = 199.111, z = -627.626 }, area_id = 7 },
	-- 不让开挑战
	{ config_id = 202048, shape = RegionShape.SPHERE, radius = 5, pos = { x = -438.799, y = 199.111, z = -627.626 }, area_id = 7 },
	-- 区域内挂ability
	{ config_id = 202123, shape = RegionShape.SPHERE, radius = 200, pos = { x = -281.843, y = 200.000, z = -620.499 }, area_id = 7, team_ability_group_list = { "QunyugeDebris_Stop_Ballon" } }
}

-- 触发器
triggers = {
	-- 超出区域 失败
	{ config_id = 1202003, name = "LEAVE_REGION_202003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_202003", action = "action_EVENT_LEAVE_REGION_202003", trigger_count = 0 },
	-- 怪物死亡进度
	{ config_id = 1202004, name = "ANY_MONSTER_DIE_202004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_202004", trigger_count = 0 },
	-- 开启，add 提示点，#1Group
	{ config_id = 1202017, name = "VARIABLE_CHANGE_202017", event = EventType.EVENT_VARIABLE_CHANGE, source = "GalleryStart_Success", condition = "condition_EVENT_VARIABLE_CHANGE_202017", action = "action_EVENT_VARIABLE_CHANGE_202017", trigger_count = 0 },
	-- 教学trigger
	{ config_id = 1202018, name = "ENTER_REGION_202018", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_202018", action = "action_EVENT_ENTER_REGION_202018", trigger_count = 0 },
	-- 8-P24，小船到达终点，失败
	{ config_id = 1202021, name = "PLATFORM_REACH_POINT_202021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202021", action = "action_EVENT_PLATFORM_REACH_POINT_202021", trigger_count = 0, tag = "888" },
	-- gallery END，重开挑战
	{ config_id = 1202022, name = "VARIABLE_CHANGE_202022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_202022", action = "action_EVENT_VARIABLE_CHANGE_202022", trigger_count = 0 },
	{ config_id = 1202023, name = "ANY_GADGET_DIE_202023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_202023", action = "action_EVENT_ANY_GADGET_DIE_202023", tag = "999" },
	-- 2-P6
	{ config_id = 1202024, name = "PLATFORM_REACH_POINT_202024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202024", action = "action_EVENT_PLATFORM_REACH_POINT_202024", trigger_count = 0, tag = "888" },
	-- 删除#1Group，3-P9
	{ config_id = 1202025, name = "PLATFORM_REACH_POINT_202025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202025", action = "action_EVENT_PLATFORM_REACH_POINT_202025", trigger_count = 0 },
	-- 删除#2Group，5-P15
	{ config_id = 1202026, name = "PLATFORM_REACH_POINT_202026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202026", action = "action_EVENT_PLATFORM_REACH_POINT_202026", trigger_count = 0 },
	-- 1-P6，add #2Group
	{ config_id = 1202027, name = "PLATFORM_REACH_POINT_202027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202027", action = "action_EVENT_PLATFORM_REACH_POINT_202027", trigger_count = 0, tag = "888" },
	-- 3-P18，add #3Group
	{ config_id = 1202028, name = "PLATFORM_REACH_POINT_202028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202028", action = "action_EVENT_PLATFORM_REACH_POINT_202028", trigger_count = 0, tag = "888" },
	-- 4-P12
	{ config_id = 1202029, name = "PLATFORM_REACH_POINT_202029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202029", action = "action_EVENT_PLATFORM_REACH_POINT_202029", trigger_count = 0, tag = "888" },
	-- 5-P30，add #4Group
	{ config_id = 1202030, name = "PLATFORM_REACH_POINT_202030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202030", action = "action_EVENT_PLATFORM_REACH_POINT_202030", trigger_count = 0, tag = "888" },
	-- 6-P18
	{ config_id = 1202031, name = "PLATFORM_REACH_POINT_202031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202031", action = "action_EVENT_PLATFORM_REACH_POINT_202031", trigger_count = 0, tag = "888" },
	-- 7-P21
	{ config_id = 1202032, name = "PLATFORM_REACH_POINT_202032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202032", action = "action_EVENT_PLATFORM_REACH_POINT_202032", trigger_count = 0, tag = "888" },
	-- 2.4用挑战台，按钮
	{ config_id = 1202035, name = "GADGET_CREATE_202035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_202035", action = "action_EVENT_GADGET_CREATE_202035", trigger_count = 0 },
	-- 2.4用挑战台，开始设置
	{ config_id = 1202036, name = "SELECT_OPTION_202036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_202036", action = "action_EVENT_SELECT_OPTION_202036", trigger_count = 0 },
	-- 2.4用挑战台，按钮保底
	{ config_id = 1202037, name = "GROUP_REFRESH_202037", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_202037", trigger_count = 0 },
	-- 可以开挑战
	{ config_id = 1202046, name = "ENTER_REGION_202046", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_202046", action = "action_EVENT_ENTER_REGION_202046", trigger_count = 0 },
	-- 不让开挑战
	{ config_id = 1202048, name = "ENTER_REGION_202048", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_202048", action = "action_EVENT_ENTER_REGION_202048", trigger_count = 0 },
	-- 删除#3Group，7-P21
	{ config_id = 1202101, name = "PLATFORM_REACH_POINT_202101", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_202101", action = "action_EVENT_PLATFORM_REACH_POINT_202101", trigger_count = 0 }
}

-- 点位
points = {
	-- 团灭复活点
	{ config_id = 202007, pos = { x = -153.155, y = 200.235, z = -421.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 },
	-- 船
	{ config_id = 202114, pos = { x = -443.376, y = 200.030, z = -629.929 }, rot = { x = 0.000, y = 63.663, z = 0.000 }, area_id = 7 },
	-- 人
	{ config_id = 202115, pos = { x = -448.514, y = 200.030, z = -629.616 }, rot = { x = 0.000, y = 90.853, z = 0.000 }, area_id = 7 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 3, name = "cFail", value = 0, no_refresh = false },
	{ config_id = 4, name = "cSuccess", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 202189, gadget_id = 70800088, pos = { x = -383.217, y = 201.099, z = -608.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 }
	},
	regions = {
		{ config_id = 202019, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = -399.721, y = 199.745, z = -562.697 }, area_id = 7 }
	},
	triggers = {
		{ config_id = 1202002, name = "TIME_AXIS_PASS_202002", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeForScore", condition = "condition_EVENT_TIME_AXIS_PASS_202002", action = "", trigger_count = 0 },
		{ config_id = 1202019, name = "ENTER_REGION_202019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202019", action = "action_EVENT_ENTER_REGION_202019" },
		{ config_id = 1202020, name = "VARIABLE_CHANGE_202020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_202020", action = "action_EVENT_VARIABLE_CHANGE_202020", trigger_count = 0 },
		{ config_id = 1202133, name = "TIME_AXIS_PASS_202133", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG1", condition = "condition_EVENT_TIME_AXIS_PASS_202133", action = "action_EVENT_TIME_AXIS_PASS_202133", trigger_count = 0 },
		{ config_id = 1202134, name = "TIME_AXIS_PASS_202134", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG2", condition = "condition_EVENT_TIME_AXIS_PASS_202134", action = "action_EVENT_TIME_AXIS_PASS_202134", trigger_count = 0 },
		{ config_id = 1202137, name = "TIME_AXIS_PASS_202137", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG3", condition = "condition_EVENT_TIME_AXIS_PASS_202137", action = "action_EVENT_TIME_AXIS_PASS_202137", trigger_count = 0 },
		{ config_id = 1202155, name = "TIME_AXIS_PASS_202155", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG4", condition = "condition_EVENT_TIME_AXIS_PASS_202155", action = "action_EVENT_TIME_AXIS_PASS_202155", trigger_count = 0 }
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
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 202034, 202154 },
		regions = { 202003, 202018, 202046, 202048, 202123 },
		triggers = { "LEAVE_REGION_202003", "ANY_MONSTER_DIE_202004", "VARIABLE_CHANGE_202017", "ENTER_REGION_202018", "PLATFORM_REACH_POINT_202021", "VARIABLE_CHANGE_202022", "ANY_GADGET_DIE_202023", "PLATFORM_REACH_POINT_202024", "PLATFORM_REACH_POINT_202025", "PLATFORM_REACH_POINT_202026", "PLATFORM_REACH_POINT_202027", "PLATFORM_REACH_POINT_202028", "PLATFORM_REACH_POINT_202029", "PLATFORM_REACH_POINT_202030", "PLATFORM_REACH_POINT_202031", "PLATFORM_REACH_POINT_202032", "GADGET_CREATE_202035", "SELECT_OPTION_202036", "GROUP_REFRESH_202037", "ENTER_REGION_202046", "ENTER_REGION_202048", "PLATFORM_REACH_POINT_202101" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 202008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { },
		gadgets = { 202001, 202005, 202006, 202009, 202010, 202038, 202041, 202043, 202044, 202045, 202049, 202053, 202055, 202058, 202059, 202060, 202061, 202065, 202069, 202070, 202077, 202079, 202085, 202086, 202087, 202102, 202103, 202105, 202122, 202130, 202156, 202157, 202158, 202159, 202190 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 202097, 202124 },
		gadgets = { 202011, 202012, 202042, 202062, 202063, 202064, 202066, 202067, 202068, 202089, 202090, 202091, 202092, 202096, 202098, 202100, 202106, 202109, 202111, 202113, 202116, 202118, 202119, 202151, 202152, 202153 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { },
		gadgets = { 202013, 202014, 202040, 202047, 202051, 202057, 202071, 202072, 202073, 202074, 202075, 202076, 202088, 202093, 202108, 202120, 202125, 202126, 202128, 202131, 202136, 202138, 202141, 202148, 202149, 202193, 202194 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { },
		gadgets = { 202015, 202016, 202033, 202039, 202050, 202052, 202078, 202080, 202081, 202082, 202083, 202084, 202094, 202129, 202132, 202135, 202139, 202140, 202142, 202143, 202144, 202145, 202146, 202147, 202150, 202195 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 第一批怪物,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 第二批怪物,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 第三批怪物,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 第四批怪物,
		monsters = { },
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

-- 触发条件
function condition_EVENT_LEAVE_REGION_202003(context, evt)
	-- 判断是区域202003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 202003 then
		return false
	end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_202003(context, evt)
	-- 将本组内变量名为 "Gallery_fail_reason" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gallery_fail_reason", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cFail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cFail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_202004(context, evt)
	-- 将本组内变量名为 "ADD_Gallery_monster_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ADD_Gallery_monster_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_202017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GalleryStart_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "GalleryStart_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_202017(context, evt)
	-- 删除指定group： 133108202 ；指定config：202034；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108202, 202034, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 202034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 202034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108202, 2)
	
	-- 将configid为 202008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 202008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 202008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108202, 3)
	
	-- 创建标识为"timeForScore"，时间节点为{2}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timeForScore", {2}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_202018(context, evt)
	if evt.param1 ~= 202018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202018(context, evt)
	-- 显示id为151的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,151,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202021(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 48 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 48 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "Gallery_fail_reason" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gallery_fail_reason", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cFail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cFail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_202022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GalleryEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "GalleryEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_202022(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 11)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108202, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_202023(context, evt)
	if 202008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_202023(context, evt)
	-- 将本组内变量名为 "GalleryFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202024(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 12 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202025(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 18 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202025(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 3)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202026(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 30 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 4)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202027(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 6 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108202, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202028(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 18 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108202, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202029(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 24 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202030(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 30 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108202, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202031(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 36 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202032(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 42 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 42 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_202035(context, evt)
	if 202034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_202035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108202, 202034, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_202036(context, evt)
	-- 判断是gadgetid 202034 option_id 175
	if 202034 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_202036(context, evt)
	
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  return -1
	end
	
	
	-- 将本组内变量名为 "GalleryStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryStart", 1) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_202037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108202, 202034, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_202046(context, evt)
	if evt.param1 ~= 202046 then return false end
	
	-- 判断变量"Enable_StartChallenge"为1
	if ScriptLib.GetLanternRiteValue(context) ~=0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202046(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108202, 202034, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_202048(context, evt)
	if evt.param1 ~= 202048 then return false end
	
	-- 判断变量"Enable_StartChallenge"为0
	if ScriptLib.GetLanternRiteValue(context) ~= 1 then
			return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202048(context, evt)
	-- 删除指定group： 133108202 ；指定config：202034；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108202, 202034, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_202101(context, evt)
	-- 判断是gadgetid 为 202008的移动平台，是否到达了310800046 的路线中的 42 点
	
	if 202008 ~= evt.param1 then
	  return false
	end
	
	if 310800046 ~= evt.param2 then
	  return false
	end
	
	if 42 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_202101(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 5)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108202, 10)
	
	return 0
end

require "V2_4/QunyugeDebris_Stop_Balloon"
require "V2_4/SeaLamp_Challenge_Manager"