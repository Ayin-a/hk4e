-- 基础信息
local base_info = {
	group_id = 133108201
}

-- Trigger变量
local defs = {
	gallery_id = 14005,
	monsterTarget = 5,
	debrisTarget = 10
}

-- DEFS_MISCS
local Raft_Monster_List = {
    [201106] = {201004, 201038},
    [201047] = {201048},
    [201049] = {201050},
    [201129] = {201136},
    [201083] = {201132},
    [201080] = {201125, 201123},
    [201119] = {201122}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 201004, monster_id = 25010501, pos = { x = 179.048, y = 200.127, z = -862.980 }, rot = { x = 0.000, y = 162.990, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 201038, monster_id = 25010601, pos = { x = 180.724, y = 200.000, z = -860.370 }, rot = { x = 0.000, y = 166.118, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 201048, monster_id = 25010601, pos = { x = 207.531, y = 200.132, z = -827.477 }, rot = { x = 0.000, y = 157.647, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 201050, monster_id = 25010601, pos = { x = 189.938, y = 200.094, z = -810.263 }, rot = { x = 0.000, y = 125.864, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 201122, monster_id = 25020201, pos = { x = 3.656, y = 200.000, z = -634.887 }, rot = { x = 0.000, y = 77.222, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 201123, monster_id = 25010401, pos = { x = 1.641, y = 200.077, z = -639.243 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9005, area_id = 7 },
	{ config_id = 201125, monster_id = 25010501, pos = { x = 2.069, y = 200.339, z = -637.533 }, rot = { x = 0.000, y = 301.523, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 201132, monster_id = 25010701, pos = { x = 8.673, y = 200.128, z = -754.620 }, rot = { x = 0.000, y = 75.211, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 201136, monster_id = 25010201, pos = { x = 17.973, y = 200.080, z = -759.088 }, rot = { x = 0.000, y = 6.700, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 201001, gadget_id = 70350250, pos = { x = 166.920, y = 200.000, z = -900.441 }, rot = { x = 0.000, y = 295.041, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201002, gadget_id = 70290180, pos = { x = 183.224, y = 200.000, z = -758.221 }, rot = { x = 0.000, y = 302.160, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201003, gadget_id = 70800105, pos = { x = -26.330, y = 200.000, z = -489.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201005, gadget_id = 70800060, pos = { x = 41.700, y = 200.000, z = -744.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201006, gadget_id = 70800106, pos = { x = 77.764, y = 200.000, z = -719.320 }, rot = { x = 0.000, y = 206.833, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201007, gadget_id = 70800105, pos = { x = -20.585, y = 200.000, z = -494.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201008, gadget_id = 70800106, pos = { x = 38.603, y = 200.000, z = -331.524 }, rot = { x = 0.030, y = 355.083, z = 357.754 }, level = 30, area_id = 7 },
	{ config_id = 201009, gadget_id = 70800060, pos = { x = 196.935, y = 200.000, z = -808.760 }, rot = { x = 0.000, y = 277.544, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201012, gadget_id = 70360025, pos = { x = -30.170, y = 200.000, z = -230.304 }, rot = { x = 0.000, y = 7.167, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201013, gadget_id = 70800106, pos = { x = 24.139, y = 200.000, z = -339.501 }, rot = { x = 0.030, y = 309.139, z = 357.754 }, level = 30, area_id = 7 },
	{ config_id = 201014, gadget_id = 70350277, pos = { x = 166.454, y = 200.000, z = -901.208 }, rot = { x = 0.000, y = 33.601, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201015, gadget_id = 70350249, pos = { x = 143.075, y = 200.000, z = -746.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201018, gadget_id = 70800060, pos = { x = 178.002, y = 200.000, z = -879.072 }, rot = { x = 0.000, y = 317.798, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201019, gadget_id = 70800060, pos = { x = 6.200, y = 200.000, z = -691.272 }, rot = { x = 0.000, y = 90.352, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201020, gadget_id = 70350249, pos = { x = 42.172, y = 200.000, z = -746.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201021, gadget_id = 70800105, pos = { x = 191.354, y = 200.000, z = -846.240 }, rot = { x = 0.000, y = 279.966, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201022, gadget_id = 70800060, pos = { x = 78.936, y = 200.000, z = -736.423 }, rot = { x = 0.000, y = 322.564, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201023, gadget_id = 70800105, pos = { x = 194.929, y = 199.990, z = -846.715 }, rot = { x = 0.000, y = 279.966, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201024, gadget_id = 70350258, pos = { x = 72.701, y = 200.000, z = -736.938 }, rot = { x = 0.000, y = 257.750, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201026, gadget_id = 70350249, pos = { x = 143.650, y = 200.000, z = -742.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201028, gadget_id = 70350277, pos = { x = 17.154, y = 200.000, z = -603.101 }, rot = { x = 0.000, y = 327.782, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201029, gadget_id = 70800060, pos = { x = 186.228, y = 200.000, z = -864.903 }, rot = { x = 0.000, y = 309.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201030, gadget_id = 70800060, pos = { x = 143.428, y = 200.000, z = -744.271 }, rot = { x = 0.000, y = 19.880, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201031, gadget_id = 70800060, pos = { x = 5.957, y = 200.000, z = -635.102 }, rot = { x = 0.000, y = 234.044, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201032, gadget_id = 70800088, pos = { x = 178.511, y = 200.000, z = -859.665 }, rot = { x = 0.000, y = 212.936, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201034, gadget_id = 70800060, pos = { x = 6.539, y = 200.000, z = -637.519 }, rot = { x = 0.000, y = 234.044, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201035, gadget_id = 70800105, pos = { x = 181.564, y = 200.000, z = -863.095 }, rot = { x = 0.000, y = 310.631, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201036, gadget_id = 70350249, pos = { x = 41.412, y = 200.000, z = -742.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201037, gadget_id = 70800060, pos = { x = 5.160, y = 200.000, z = -639.486 }, rot = { x = 0.000, y = 237.622, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201039, gadget_id = 70350249, pos = { x = 8.215, y = 200.000, z = -691.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201040, gadget_id = 70350249, pos = { x = 4.119, y = 200.000, z = -690.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201041, gadget_id = 70350085, pos = { x = 19.021, y = 200.000, z = -606.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201042, gadget_id = 70800106, pos = { x = -4.349, y = 199.718, z = -676.987 }, rot = { x = 353.464, y = 103.826, z = 7.422 }, level = 1, area_id = 7 },
	{ config_id = 201043, gadget_id = 70800106, pos = { x = 187.921, y = 199.997, z = -843.471 }, rot = { x = 0.000, y = 181.333, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201044, gadget_id = 70800106, pos = { x = 199.173, y = 200.000, z = -846.087 }, rot = { x = 0.000, y = 215.421, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201045, gadget_id = 70800060, pos = { x = 201.493, y = 200.000, z = -823.419 }, rot = { x = 0.000, y = 309.327, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201046, gadget_id = 70800106, pos = { x = 87.810, y = 199.718, z = -724.140 }, rot = { x = 353.464, y = 41.583, z = 7.422 }, level = 1, area_id = 7 },
	{ config_id = 201047, gadget_id = 70800089, pos = { x = 207.943, y = 199.911, z = -828.249 }, rot = { x = 0.000, y = 161.825, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201049, gadget_id = 70800089, pos = { x = 188.573, y = 200.000, z = -811.439 }, rot = { x = 0.000, y = 221.825, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201051, gadget_id = 70800105, pos = { x = 190.758, y = 200.000, z = -813.088 }, rot = { x = 0.000, y = 270.377, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201052, gadget_id = 70800105, pos = { x = 193.419, y = 199.990, z = -845.149 }, rot = { x = 0.000, y = 279.966, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201053, gadget_id = 70800105, pos = { x = 205.571, y = 200.000, z = -829.560 }, rot = { x = 0.000, y = 302.160, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201054, gadget_id = 70800105, pos = { x = 85.119, y = 200.000, z = -730.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201055, gadget_id = 70800105, pos = { x = -1.103, y = 200.000, z = -674.587 }, rot = { x = 0.000, y = 25.932, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201056, gadget_id = 70800105, pos = { x = 3.248, y = 200.000, z = -642.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201057, gadget_id = 70800105, pos = { x = 6.372, y = 200.000, z = -632.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201058, gadget_id = 70800060, pos = { x = 9.244, y = 200.000, z = -748.670 }, rot = { x = 0.000, y = 350.465, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201059, gadget_id = 70800105, pos = { x = 86.436, y = 200.000, z = -727.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201060, gadget_id = 70290180, pos = { x = 23.249, y = 200.000, z = -661.849 }, rot = { x = 0.000, y = 353.911, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201061, gadget_id = 70800106, pos = { x = 31.060, y = 199.480, z = -657.165 }, rot = { x = 10.411, y = 273.168, z = 1.212 }, level = 1, area_id = 7 },
	{ config_id = 201062, gadget_id = 70800106, pos = { x = 29.338, y = 200.000, z = -667.233 }, rot = { x = 0.000, y = 113.236, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201063, gadget_id = 70800105, pos = { x = -3.724, y = 200.000, z = -641.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201064, gadget_id = 70800105, pos = { x = -2.581, y = 200.000, z = -680.499 }, rot = { x = 0.000, y = 25.932, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201065, gadget_id = 70900201, pos = { x = -30.262, y = 200.000, z = -230.302 }, rot = { x = 0.000, y = 7.167, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201066, gadget_id = 70350258, pos = { x = -2.144, y = 200.000, z = -278.295 }, rot = { x = 0.000, y = 329.601, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201067, gadget_id = 70800106, pos = { x = 81.725, y = 200.000, z = -744.819 }, rot = { x = 0.000, y = 72.700, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201072, gadget_id = 70800105, pos = { x = 4.012, y = 200.000, z = -628.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201078, gadget_id = 70350258, pos = { x = 174.324, y = 200.000, z = -748.322 }, rot = { x = 0.000, y = 276.400, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201079, gadget_id = 70800090, pos = { x = -0.242, y = 199.987, z = -639.066 }, rot = { x = 359.875, y = 11.551, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201080, gadget_id = 70800090, pos = { x = 1.763, y = 199.950, z = -639.601 }, rot = { x = 1.402, y = 189.589, z = 4.668 }, level = 32, area_id = 7 },
	{ config_id = 201081, gadget_id = 70800060, pos = { x = 183.895, y = 200.000, z = -748.099 }, rot = { x = 0.000, y = 19.880, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201083, gadget_id = 70800089, pos = { x = 7.264, y = 199.990, z = -753.465 }, rot = { x = 0.000, y = 316.605, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201085, gadget_id = 70800090, pos = { x = -1.709, y = 199.742, z = -638.226 }, rot = { x = 1.535, y = 15.794, z = 357.903 }, level = 32, area_id = 7 },
	{ config_id = 201088, gadget_id = 70800105, pos = { x = -4.732, y = 200.000, z = -578.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201089, gadget_id = 70800105, pos = { x = 1.313, y = 200.000, z = -573.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201090, gadget_id = 70800105, pos = { x = -2.089, y = 200.000, z = -575.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201091, gadget_id = 70800105, pos = { x = -23.208, y = 200.000, z = -491.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201092, gadget_id = 70350249, pos = { x = 193.619, y = 200.000, z = -768.152 }, rot = { x = 0.000, y = 15.718, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201093, gadget_id = 70350249, pos = { x = 195.085, y = 200.000, z = -776.355 }, rot = { x = 0.000, y = 15.718, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201094, gadget_id = 70350249, pos = { x = 191.337, y = 200.000, z = -760.177 }, rot = { x = 0.000, y = 15.718, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201095, gadget_id = 70350249, pos = { x = 188.886, y = 200.000, z = -752.163 }, rot = { x = 0.000, y = 15.718, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201100, gadget_id = 70800106, pos = { x = 66.013, y = 199.189, z = -715.008 }, rot = { x = 3.712, y = 9.595, z = 358.322 }, level = 1, area_id = 7 },
	{ config_id = 201105, gadget_id = 70800106, pos = { x = 93.150, y = 199.480, z = -727.594 }, rot = { x = 10.411, y = 57.195, z = 1.212 }, level = 1, area_id = 7 },
	{ config_id = 201106, gadget_id = 70800088, pos = { x = 180.485, y = 200.000, z = -860.428 }, rot = { x = 0.000, y = 35.851, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 201114, gadget_id = 70800106, pos = { x = 83.041, y = 200.000, z = -728.427 }, rot = { x = 0.000, y = 119.326, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201117, gadget_id = 70350258, pos = { x = 1.975, y = 200.000, z = -720.312 }, rot = { x = 0.000, y = 7.290, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201118, gadget_id = 70800090, pos = { x = 2.005, y = 199.993, z = -633.031 }, rot = { x = 359.661, y = 7.610, z = 0.446 }, level = 32, area_id = 7 },
	{ config_id = 201119, gadget_id = 70800090, pos = { x = 3.478, y = 199.709, z = -634.377 }, rot = { x = 357.006, y = 14.415, z = 6.057 }, level = 32, area_id = 7 },
	{ config_id = 201120, gadget_id = 70800090, pos = { x = 0.156, y = 199.997, z = -632.235 }, rot = { x = 0.000, y = 190.264, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201129, gadget_id = 70800089, pos = { x = 18.124, y = 199.990, z = -759.398 }, rot = { x = 0.000, y = 109.177, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201130, gadget_id = 70800105, pos = { x = 9.491, y = 200.000, z = -752.408 }, rot = { x = 0.000, y = 162.294, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201131, gadget_id = 70800105, pos = { x = 17.462, y = 200.000, z = -756.424 }, rot = { x = 0.000, y = 121.156, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201134, gadget_id = 70800060, pos = { x = 18.280, y = 200.000, z = -752.116 }, rot = { x = 0.000, y = 83.720, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201135, gadget_id = 70800060, pos = { x = 4.620, y = 200.000, z = -738.230 }, rot = { x = 0.000, y = 118.390, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 201137, gadget_id = 70290180, pos = { x = 26.245, y = 200.000, z = -699.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201139, gadget_id = 70290180, pos = { x = 35.201, y = 200.000, z = -728.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201140, gadget_id = 70710126, pos = { x = 19.021, y = 200.000, z = -606.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201157, gadget_id = 70350249, pos = { x = 15.469, y = 200.000, z = -614.651 }, rot = { x = 0.000, y = 318.532, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201158, gadget_id = 70350249, pos = { x = 17.689, y = 200.000, z = -617.852 }, rot = { x = 0.000, y = 318.532, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201159, gadget_id = 70350249, pos = { x = 18.467, y = 200.000, z = -612.451 }, rot = { x = 0.000, y = 318.532, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201160, gadget_id = 70350249, pos = { x = 20.758, y = 200.000, z = -615.564 }, rot = { x = 0.000, y = 318.532, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201161, gadget_id = 70350258, pos = { x = 17.637, y = 200.000, z = -312.307 }, rot = { x = 0.000, y = 328.446, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201170, gadget_id = 70350249, pos = { x = 8.314, y = 200.000, z = -295.833 }, rot = { x = 0.000, y = 335.203, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201171, gadget_id = 70350249, pos = { x = 6.402, y = 200.000, z = -292.610 }, rot = { x = 0.000, y = 335.203, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201172, gadget_id = 70350249, pos = { x = 2.276, y = 200.000, z = -285.609 }, rot = { x = 0.000, y = 335.203, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201173, gadget_id = 70350249, pos = { x = 4.453, y = 200.000, z = -289.292 }, rot = { x = 0.000, y = 335.203, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 201175, gadget_id = 70350258, pos = { x = -6.944, y = 200.000, z = -570.346 }, rot = { x = 0.000, y = 320.929, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201178, gadget_id = 70350258, pos = { x = -15.365, y = 200.000, z = -483.983 }, rot = { x = 0.000, y = 41.195, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201181, gadget_id = 70350258, pos = { x = 22.588, y = 200.000, z = -442.936 }, rot = { x = 0.000, y = 41.587, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201186, gadget_id = 70350258, pos = { x = 56.698, y = 200.000, z = -379.264 }, rot = { x = 0.000, y = 331.160, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201202, gadget_id = 70290180, pos = { x = -35.159, y = 200.000, z = -517.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201205, gadget_id = 70290180, pos = { x = 72.395, y = 200.000, z = -395.219 }, rot = { x = 0.000, y = 319.512, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201206, gadget_id = 70350249, pos = { x = -36.223, y = 200.000, z = -534.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201207, gadget_id = 70350249, pos = { x = -43.535, y = 200.000, z = -524.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201208, gadget_id = 70350249, pos = { x = -45.989, y = 200.000, z = -512.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201209, gadget_id = 70350249, pos = { x = -35.670, y = 200.000, z = -504.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201210, gadget_id = 70350249, pos = { x = 34.366, y = 200.000, z = -430.384 }, rot = { x = 0.000, y = 319.512, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201213, gadget_id = 70350249, pos = { x = 57.384, y = 200.000, z = -405.336 }, rot = { x = 0.000, y = 319.512, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 201214, gadget_id = 70800106, pos = { x = -3.329, y = 200.000, z = -573.792 }, rot = { x = 0.000, y = 319.276, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201215, gadget_id = 70800106, pos = { x = -20.168, y = 200.000, z = -488.473 }, rot = { x = 0.000, y = 44.710, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201216, gadget_id = 70800106, pos = { x = 3.706, y = 200.000, z = -571.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201217, gadget_id = 70800106, pos = { x = -7.777, y = 200.000, z = -583.036 }, rot = { x = 0.000, y = 280.062, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201218, gadget_id = 70800106, pos = { x = -15.602, y = 200.000, z = -498.033 }, rot = { x = 0.000, y = 256.562, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 201219, gadget_id = 70800106, pos = { x = -30.606, y = 200.000, z = -485.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 }
}

-- 区域
regions = {
	-- 挂ability
	{ config_id = 201033, shape = RegionShape.SPHERE, radius = 400, pos = { x = -81.832, y = 200.000, z = -614.047 }, area_id = 7, team_ability_group_list = { "QunyugeDebris_Play" } },
	-- 刷新suite3
	{ config_id = 201073, shape = RegionShape.SPHERE, radius = 8, pos = { x = 19.021, y = 200.000, z = -606.278 }, area_id = 7 },
	-- 教学trigger
	{ config_id = 201074, shape = RegionShape.SPHERE, radius = 10, pos = { x = 166.920, y = 200.000, z = -900.441 }, area_id = 7 },
	-- 可以开挑战
	{ config_id = 201075, shape = RegionShape.SPHERE, radius = 5, pos = { x = 166.920, y = 200.000, z = -900.441 }, area_id = 7 },
	-- 不让开挑战
	{ config_id = 201076, shape = RegionShape.SPHERE, radius = 5, pos = { x = 166.920, y = 200.000, z = -900.441 }, area_id = 7 },
	-- 未收集完成提示去收集
	{ config_id = 201086, shape = RegionShape.SPHERE, radius = 10, pos = { x = 19.021, y = 200.000, z = -606.278 }, area_id = 7 },
	-- 离开区域失败
	{ config_id = 201124, shape = RegionShape.SPHERE, radius = 400, pos = { x = 112.831, y = 200.000, z = -572.334 }, area_id = 7 },
	{ config_id = 201127, shape = RegionShape.SPHERE, radius = 5, pos = { x = -30.262, y = 200.000, z = -230.302 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 碎片拾取加分
	{ config_id = 1201010, name = "GADGET_STATE_CHANGE_201010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201010", action = "action_EVENT_GADGET_STATE_CHANGE_201010", trigger_count = 0 },
	-- 判断是否是第n个箱子，如果是，触发挂船特效
	{ config_id = 1201011, name = "VARIABLE_CHANGE_201011", event = EventType.EVENT_VARIABLE_CHANGE, source = "debrisCount", condition = "condition_EVENT_VARIABLE_CHANGE_201011", action = "action_EVENT_VARIABLE_CHANGE_201011", trigger_count = 0 },
	-- 检测是否达成两个子目标
	{ config_id = 1201016, name = "VARIABLE_CHANGE_201016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_201016", action = "action_EVENT_VARIABLE_CHANGE_201016", trigger_count = 0 },
	-- groupload确保刷回1
	{ config_id = 1201017, name = "GROUP_LOAD_201017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_201017", trigger_count = 0 },
	-- gallery成功开启加载关卡
	{ config_id = 1201068, name = "VARIABLE_CHANGE_201068", event = EventType.EVENT_VARIABLE_CHANGE, source = "GalleryStart_Success", condition = "condition_EVENT_VARIABLE_CHANGE_201068", action = "action_EVENT_VARIABLE_CHANGE_201068", trigger_count = 0 },
	-- 击杀怪物加分
	{ config_id = 1201069, name = "ANY_MONSTER_DIE_201069", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_201069", trigger_count = 0 },
	-- 尝试开启gallery
	{ config_id = 1201070, name = "SELECT_OPTION_201070", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_201070", action = "action_EVENT_SELECT_OPTION_201070", trigger_count = 0 },
	-- 创建机关交互
	{ config_id = 1201071, name = "GADGET_CREATE_201071", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_201071", action = "action_EVENT_GADGET_CREATE_201071", trigger_count = 0 },
	-- 刷新suite3
	{ config_id = 1201073, name = "ENTER_REGION_201073", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_201073", action = "action_EVENT_ENTER_REGION_201073" },
	-- 教学trigger
	{ config_id = 1201074, name = "ENTER_REGION_201074", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_201074", action = "action_EVENT_ENTER_REGION_201074", trigger_count = 0 },
	-- 可以开挑战
	{ config_id = 1201075, name = "ENTER_REGION_201075", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_201075", action = "action_EVENT_ENTER_REGION_201075", trigger_count = 0 },
	-- 不让开挑战
	{ config_id = 1201076, name = "ENTER_REGION_201076", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_201076", action = "action_EVENT_ENTER_REGION_201076", trigger_count = 0 },
	-- 未收集完成提示去收集
	{ config_id = 1201086, name = "ENTER_REGION_201086", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_201086", action = "action_EVENT_ENTER_REGION_201086" },
	-- 离开区域失败
	{ config_id = 1201124, name = "LEAVE_REGION_201124", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_201124", action = "action_EVENT_LEAVE_REGION_201124", trigger_count = 0 },
	{ config_id = 1201127, name = "ENTER_REGION_201127", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_201127", action = "action_EVENT_ENTER_REGION_201127" }
}

-- 点位
points = {
	-- 船
	{ config_id = 201025, pos = { x = 164.301, y = 200.000, z = -905.038 }, rot = { x = 0.000, y = 24.470, z = 0.000 }, area_id = 7 },
	-- 人
	{ config_id = 201027, pos = { x = 159.505, y = 200.000, z = -906.343 }, rot = { x = 0.000, y = 55.929, z = 0.000 }, area_id = 7 },
	-- 团灭复活点
	{ config_id = 201104, pos = { x = -302.052, y = 208.777, z = -995.631 }, rot = { x = 0.000, y = 244.671, z = 0.000 }, area_id = 7 }
}

-- 变量
variables = {
	{ config_id = 1, name = "debrisCount", value = 0, no_refresh = false },
	{ config_id = 2, name = "notified", value = 0, no_refresh = false },
	{ config_id = 3, name = "rafts", value = 12, no_refresh = false },
	{ config_id = 4, name = "addedrafts", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1201077, name = "GADGET_CREATE_201077", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_201077", action = "action_EVENT_GADGET_CREATE_201077", trigger_count = 0 },
		{ config_id = 1201082, name = "VARIABLE_CHANGE_201082", event = EventType.EVENT_VARIABLE_CHANGE, source = "Raft_Created", condition = "condition_EVENT_VARIABLE_CHANGE_201082", action = "action_EVENT_VARIABLE_CHANGE_201082", trigger_count = 0 },
		{ config_id = 1201084, name = "TIME_AXIS_PASS_201084", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_201084", action = "action_EVENT_TIME_AXIS_PASS_201084", trigger_count = 0 }
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
		gadgets = { 201001, 201014 },
		regions = { 201033, 201074, 201075, 201076 },
		triggers = { "GROUP_LOAD_201017", "VARIABLE_CHANGE_201068", "SELECT_OPTION_201070", "GADGET_CREATE_201071", "ENTER_REGION_201074", "ENTER_REGION_201075", "ENTER_REGION_201076" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 201002, 201005, 201006, 201009, 201015, 201018, 201019, 201020, 201021, 201022, 201023, 201024, 201026, 201029, 201030, 201031, 201032, 201034, 201035, 201036, 201037, 201039, 201040, 201042, 201043, 201044, 201045, 201046, 201047, 201049, 201051, 201052, 201053, 201054, 201055, 201056, 201057, 201058, 201059, 201060, 201061, 201062, 201063, 201064, 201067, 201072, 201078, 201079, 201080, 201081, 201083, 201085, 201092, 201093, 201094, 201095, 201100, 201105, 201106, 201114, 201117, 201118, 201119, 201120, 201129, 201130, 201131, 201134, 201135, 201137, 201139, 201140, 201157, 201158, 201159, 201160 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 201003, 201007, 201008, 201012, 201013, 201065, 201066, 201088, 201089, 201090, 201091, 201161, 201170, 201171, 201172, 201173, 201175, 201178, 201181, 201186, 201202, 201205, 201206, 201207, 201208, 201209, 201210, 201213, 201214, 201215, 201216, 201217, 201218, 201219 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 达成子目标才会被创生,
		monsters = { },
		gadgets = { 201028 },
		regions = { 201073, 201127 },
		triggers = { "ENTER_REGION_201073", "ENTER_REGION_201127" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 201041 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 局内逻辑,
		monsters = { },
		gadgets = { },
		regions = { 201124 },
		triggers = { "GADGET_STATE_CHANGE_201010", "VARIABLE_CHANGE_201011", "VARIABLE_CHANGE_201016", "ANY_MONSTER_DIE_201069", "LEAVE_REGION_201124" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 没收集齐全的reminder,
		monsters = { },
		gadgets = { },
		regions = { 201086 },
		triggers = { "ENTER_REGION_201086" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
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
function condition_EVENT_GADGET_STATE_CHANGE_201010(context, evt)
	if ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) ~= 70800060 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201010(context, evt)
	-- 将本组内变量名为 "ADD_Gallery_box_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ADD_Gallery_box_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "debrisCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "debrisCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_201011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"debrisCount"为2
	if ScriptLib.GetGroupVariableValue(context, "debrisCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_201011(context, evt)
	-- 将本组内变量名为 "debrisCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "debrisCount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Try_Add_Box" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Try_Add_Box", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_201016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if ScriptLib.GetGroupVariableValue(context, "notified") ~= 0 then
	    return false
	end
	
	if defs.monsterTarget == ScriptLib.GetGroupTempValue(context,"ParamTable_monster_count",{}) then
	    if defs.debrisTarget <= ScriptLib.GetGroupTempValue(context,"ParamTable_box_count",{}) then
	        return true
	    end
	end
	
	if defs.debrisTarget == ScriptLib.GetGroupTempValue(context,"ParamTable_box_count",{}) then 
	    if defs.monsterTarget <= ScriptLib.GetGroupTempValue(context,"ParamTable_monster_count",{}) then
	        return true
	    end
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_201016(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108201, 5)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108201, 4)
	
	-- 针对当前group内变量名为 "notified" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "notified", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108201, 8)
	
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	-- 显示id为159的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,159,{param_uid_vec={},param_vec={},uid_vec={uid_list[1]}}) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_201017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108201, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_201068(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GalleryStart_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "GalleryStart_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_201068(context, evt)
	-- 删除指定group： 133108201 ；指定config：201001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108201, 201001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108201, 2)
	
	-- 将configid为 201001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 201001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108201, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108201, 8)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_201069(context, evt)
	-- 将本组内变量名为 "ADD_Gallery_monster_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ADD_Gallery_monster_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_201070(context, evt)
	-- 判断是gadgetid 201001 option_id 175
	if 201001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_201070(context, evt)
	-- 将本组内变量名为 "GalleryStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_201071(context, evt)
	if 201001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_201071(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108201, 201001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_201073(context, evt)
	if evt.param1 ~= 201073 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_201073(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108201, 3)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108201, 5)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108201, EntityType.GADGET, 201140 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_201074(context, evt)
	if evt.param1 ~= 201074 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_201074(context, evt)
	-- 显示id为152的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,152,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_201075(context, evt)
	if evt.param1 ~= 201075 then return false end
	
	-- 判断变量"Enable_StartChallenge"为1
	if ScriptLib.GetLanternRiteValue(context) ~=0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_201075(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108201, 201001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_201076(context, evt)
	if evt.param1 ~= 201076 then return false end
	
	-- 判断变量"Enable_StartChallenge"为0
	if ScriptLib.GetLanternRiteValue(context) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_201076(context, evt)
	-- 删除指定group： 133108201 ；指定config：201001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108201, 201001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_201086(context, evt)
	if evt.param1 ~= 201086 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_201086(context, evt)
	-- 显示id为158的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,158,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_201124(context, evt)
	-- 判断是区域201124
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 201124 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_201124(context, evt)
	-- 将本组内变量名为 "Gallery_fail_reason" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gallery_fail_reason", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108201, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_201127(context, evt)
	if evt.param1 ~= 201127 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_201127(context, evt)
	-- 将本组内变量名为 "GalleryFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108201, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_4/QunyugeDebris"
require "V2_4/SeaLamp_Challenge_Manager"