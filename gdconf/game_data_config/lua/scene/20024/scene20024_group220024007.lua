-- 基础信息
local base_info = {
	group_id = 220024007
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
	{ config_id = 10, gadget_id = 70310001, pos = { x = 59.911, y = 42.044, z = 129.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11, gadget_id = 70310002, pos = { x = 73.019, y = 41.368, z = 128.940 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12, gadget_id = 70310004, pos = { x = 117.275, y = 39.597, z = 115.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 24, gadget_id = 70310001, pos = { x = 59.911, y = 42.044, z = 112.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 25, gadget_id = 70310002, pos = { x = 115.012, y = 41.166, z = 129.454 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 26, gadget_id = 70310002, pos = { x = 115.012, y = 41.166, z = 112.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27, gadget_id = 70310002, pos = { x = 135.019, y = 41.166, z = 129.454 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28, gadget_id = 70310002, pos = { x = 135.042, y = 41.166, z = 112.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 29, gadget_id = 70310002, pos = { x = 155.007, y = 41.166, z = 112.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 30, gadget_id = 70310002, pos = { x = 154.983, y = 41.166, z = 129.454 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 31, gadget_id = 70310001, pos = { x = 163.483, y = 39.538, z = 128.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 32, gadget_id = 70310001, pos = { x = 163.483, y = 39.538, z = 113.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 36, gadget_id = 70310002, pos = { x = 185.655, y = 43.830, z = 107.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37, gadget_id = 70310001, pos = { x = 204.283, y = 42.068, z = 115.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 38, gadget_id = 70310001, pos = { x = 204.283, y = 42.068, z = 127.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 39, gadget_id = 70310002, pos = { x = 194.513, y = 43.830, z = 142.974 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 40, gadget_id = 70310002, pos = { x = 186.467, y = 43.830, z = 142.974 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 41, gadget_id = 70310001, pos = { x = 201.590, y = 46.049, z = 181.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 42, gadget_id = 70310001, pos = { x = 181.518, y = 46.049, z = 182.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 43, gadget_id = 70310001, pos = { x = 176.664, y = 46.049, z = 169.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 44, gadget_id = 70310001, pos = { x = 212.896, y = 46.049, z = 174.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 45, gadget_id = 70310002, pos = { x = 184.982, y = 47.359, z = 161.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 46, gadget_id = 70310002, pos = { x = 195.945, y = 47.359, z = 161.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 47, gadget_id = 70310001, pos = { x = 195.333, y = 50.102, z = 188.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 48, gadget_id = 70310001, pos = { x = 186.440, y = 50.102, z = 188.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 49, gadget_id = 70310001, pos = { x = 182.778, y = 53.511, z = 304.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 50, gadget_id = 70310001, pos = { x = 200.375, y = 53.511, z = 304.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 51, gadget_id = 70310001, pos = { x = 198.066, y = 57.054, z = 312.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 52, gadget_id = 70310001, pos = { x = 185.105, y = 57.054, z = 312.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 53, gadget_id = 70310001, pos = { x = 186.789, y = 48.579, z = 274.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 54, gadget_id = 70310001, pos = { x = 194.676, y = 48.579, z = 274.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 55, gadget_id = 70310002, pos = { x = 198.890, y = 53.451, z = 285.556 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 56, gadget_id = 70310002, pos = { x = 182.722, y = 53.451, z = 285.556 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 57, gadget_id = 70310002, pos = { x = 205.874, y = 53.451, z = 289.430 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 58, gadget_id = 70310002, pos = { x = 177.274, y = 53.451, z = 289.470 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 59, gadget_id = 70310002, pos = { x = 178.569, y = 60.409, z = 324.011 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 60, gadget_id = 70310002, pos = { x = 178.569, y = 60.409, z = 332.766 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 61, gadget_id = 70310002, pos = { x = 204.930, y = 60.409, z = 332.979 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 62, gadget_id = 70310002, pos = { x = 205.425, y = 60.409, z = 323.980 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 63, gadget_id = 70310001, pos = { x = 210.000, y = 57.028, z = 324.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 64, gadget_id = 70310001, pos = { x = 217.209, y = 57.028, z = 323.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 65, gadget_id = 70310001, pos = { x = 172.998, y = 57.028, z = 346.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 66, gadget_id = 70310001, pos = { x = 164.339, y = 57.028, z = 346.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 67, gadget_id = 70310001, pos = { x = 185.556, y = 58.500, z = 344.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 68, gadget_id = 70310001, pos = { x = 197.233, y = 58.500, z = 344.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 69, gadget_id = 70310002, pos = { x = 201.773, y = 59.275, z = 369.993 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 70, gadget_id = 70310002, pos = { x = 201.773, y = 59.275, z = 379.502 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 71, gadget_id = 70310002, pos = { x = 201.773, y = 59.275, z = 387.981 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 72, gadget_id = 70310002, pos = { x = 181.748, y = 59.275, z = 388.986 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 73, gadget_id = 70310002, pos = { x = 181.748, y = 59.275, z = 379.514 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 74, gadget_id = 70310002, pos = { x = 181.748, y = 59.275, z = 369.994 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 75, gadget_id = 70310001, pos = { x = 200.641, y = 59.002, z = 395.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 76, gadget_id = 70310001, pos = { x = 182.353, y = 59.002, z = 395.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 77, gadget_id = 70310001, pos = { x = 187.492, y = 59.002, z = 402.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 78, gadget_id = 70310001, pos = { x = 195.708, y = 59.002, z = 402.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 79, gadget_id = 70310002, pos = { x = 184.666, y = 63.779, z = 315.045 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 80, gadget_id = 70310002, pos = { x = 198.158, y = 63.779, z = 315.045 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 81, gadget_id = 70310002, pos = { x = 173.160, y = 53.451, z = 294.960 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 82, gadget_id = 70310002, pos = { x = 209.916, y = 53.451, z = 294.960 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 10, 11, 12, 24, 25, 26, 27, 28, 29, 30, 31, 32, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82 },
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