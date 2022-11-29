-- 基础信息
local base_info = {
	group_id = 220008006
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
	{ config_id = 329, gadget_id = 70310002, pos = { x = 584.269, y = -54.521, z = 202.940 }, rot = { x = 0.000, y = 93.280, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 330, gadget_id = 70310002, pos = { x = 584.282, y = -54.521, z = 210.064 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 331, gadget_id = 70310001, pos = { x = 579.427, y = -60.050, z = 216.252 }, rot = { x = 0.000, y = 277.404, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 332, gadget_id = 70310001, pos = { x = 576.585, y = -60.060, z = 216.397 }, rot = { x = 0.000, y = 318.820, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 333, gadget_id = 70310001, pos = { x = 552.457, y = -68.529, z = 223.139 }, rot = { x = 0.000, y = 2.189, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 334, gadget_id = 70310001, pos = { x = 546.430, y = -68.510, z = 215.024 }, rot = { x = 0.000, y = 300.700, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 339, gadget_id = 70310001, pos = { x = 542.182, y = -63.061, z = 197.078 }, rot = { x = 0.000, y = 16.613, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 340, gadget_id = 70310001, pos = { x = 541.208, y = -59.691, z = 192.701 }, rot = { x = 0.000, y = 260.941, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 341, gadget_id = 70310002, pos = { x = 524.322, y = -62.558, z = 212.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 342, gadget_id = 70310002, pos = { x = 523.417, y = -62.750, z = 213.993 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 343, gadget_id = 70310002, pos = { x = 524.375, y = -62.760, z = 200.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 344, gadget_id = 70310002, pos = { x = 509.964, y = -64.867, z = 199.587 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 345, gadget_id = 70310002, pos = { x = 510.021, y = -62.789, z = 213.866 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 350, gadget_id = 70310001, pos = { x = 440.495, y = -28.483, z = 275.985 }, rot = { x = 0.000, y = 183.126, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 351, gadget_id = 70310001, pos = { x = 446.195, y = -28.498, z = 280.489 }, rot = { x = 0.000, y = 23.281, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 352, gadget_id = 70310001, pos = { x = 467.329, y = -28.517, z = 256.328 }, rot = { x = 0.000, y = 45.362, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 356, gadget_id = 70310002, pos = { x = 414.436, y = -19.195, z = 169.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 357, gadget_id = 70310002, pos = { x = 414.348, y = -19.175, z = 177.845 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 358, gadget_id = 70310002, pos = { x = 402.172, y = -16.516, z = 159.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 359, gadget_id = 70310002, pos = { x = 373.360, y = -16.290, z = 159.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 360, gadget_id = 70310002, pos = { x = 373.319, y = -15.920, z = 187.212 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 361, gadget_id = 70310002, pos = { x = 402.076, y = -16.158, z = 187.198 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 409, gadget_id = 70310002, pos = { x = 489.902, y = -51.346, z = 261.373 }, rot = { x = 0.000, y = 3.092, z = 0.000 }, level = 1 },
	{ config_id = 410, gadget_id = 70310002, pos = { x = 484.190, y = -51.346, z = 261.368 }, rot = { x = 0.000, y = 3.092, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 412, gadget_id = 70310002, pos = { x = 489.902, y = -51.346, z = 271.406 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 413, gadget_id = 70310002, pos = { x = 484.190, y = -51.346, z = 271.515 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 414, gadget_id = 70211111, pos = { x = 479.092, y = -54.748, z = 266.278 }, rot = { x = 0.000, y = 89.194, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 415, gadget_id = 70310001, pos = { x = 479.359, y = -54.734, z = 264.118 }, rot = { x = 0.000, y = 260.941, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 416, gadget_id = 70310001, pos = { x = 479.437, y = -54.734, z = 268.424 }, rot = { x = 0.000, y = 260.941, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
	rand_suite = true
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
		gadgets = { 329, 330, 331, 332, 333, 334, 339, 340, 341, 342, 343, 344, 345, 350, 351, 352, 356, 357, 358, 359, 360, 361, 409, 410, 412, 413, 414, 415, 416 },
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