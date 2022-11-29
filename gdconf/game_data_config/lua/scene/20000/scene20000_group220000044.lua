-- 基础信息
local base_info = {
	group_id = 220000044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85, monster_id = 24010101, pos = { x = 543.167, y = -0.857, z = 363.154 }, rot = { x = 0.000, y = 224.985, z = 0.000 }, level = 20, disableWander = true, pose_id = 100 },
	{ config_id = 86, monster_id = 24010101, pos = { x = 543.425, y = -0.857, z = 358.206 }, rot = { x = 0.000, y = 321.483, z = 0.000 }, level = 20, disableWander = true, pose_id = 100 },
	{ config_id = 88, monster_id = 21010101, pos = { x = 716.664, y = 5.780, z = 379.393 }, rot = { x = 0.000, y = 149.615, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 89, monster_id = 21010101, pos = { x = 719.553, y = 5.788, z = 379.924 }, rot = { x = 0.000, y = 238.760, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 90, monster_id = 21010101, pos = { x = 731.704, y = 5.506, z = 360.834 }, rot = { x = 0.000, y = 24.866, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 91, monster_id = 21010101, pos = { x = 733.790, y = 5.506, z = 359.695 }, rot = { x = 0.000, y = 355.678, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 92, monster_id = 24010101, pos = { x = 780.950, y = 5.463, z = 360.681 }, rot = { x = 0.000, y = 224.985, z = 0.000 }, level = 12, disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150, gadget_id = 70900213, pos = { x = 264.086, y = 5.573, z = 282.293 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 152, gadget_id = 70900213, pos = { x = 299.624, y = 5.573, z = 279.234 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 153, gadget_id = 70900213, pos = { x = 299.626, y = 5.573, z = 278.234 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 162, gadget_id = 70900221, pos = { x = 361.099, y = 5.996, z = 285.451 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 173, gadget_id = 70320002, pos = { x = 483.350, y = 5.543, z = 368.762 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 174, gadget_id = 70320002, pos = { x = 485.157, y = 5.543, z = 368.777 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 175, gadget_id = 70320002, pos = { x = 487.090, y = 5.543, z = 368.932 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 176, gadget_id = 70320002, pos = { x = 483.863, y = 5.543, z = 354.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 177, gadget_id = 70320002, pos = { x = 485.670, y = 5.543, z = 354.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 178, gadget_id = 70320002, pos = { x = 487.599, y = 5.543, z = 354.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 179, gadget_id = 70220003, pos = { x = 508.170, y = 5.543, z = 364.910 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 180, gadget_id = 70220003, pos = { x = 508.144, y = 5.543, z = 360.070 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 181, gadget_id = 70220003, pos = { x = 508.092, y = 5.543, z = 355.473 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 187, gadget_id = 70900216, pos = { x = 700.906, y = 5.735, z = 360.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 188, gadget_id = 70900216, pos = { x = 718.046, y = 5.737, z = 377.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 189, gadget_id = 70900216, pos = { x = 734.572, y = 5.449, z = 361.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 190, gadget_id = 70900207, pos = { x = 786.625, y = 5.798, z = 375.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 192, gadget_id = 70211001, pos = { x = 416.376, y = 5.573, z = 263.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 193, gadget_id = 70211001, pos = { x = 476.147, y = 5.573, z = 309.384 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 198, gadget_id = 70900207, pos = { x = 786.883, y = 5.804, z = 380.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 199, gadget_id = 70900207, pos = { x = 792.751, y = 5.804, z = 380.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 200, gadget_id = 70900207, pos = { x = 799.377, y = 5.804, z = 379.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 201, gadget_id = 70900207, pos = { x = 805.102, y = 5.804, z = 380.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 202, gadget_id = 70900207, pos = { x = 810.997, y = 5.804, z = 380.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 203, gadget_id = 70900207, pos = { x = 815.728, y = 5.804, z = 379.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 204, gadget_id = 70900207, pos = { x = 821.630, y = 5.804, z = 379.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 205, gadget_id = 70900207, pos = { x = 826.700, y = 5.804, z = 369.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 206, gadget_id = 70900207, pos = { x = 826.674, y = 5.804, z = 374.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 207, gadget_id = 70900207, pos = { x = 826.737, y = 5.804, z = 379.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 213, gadget_id = 70900221, pos = { x = 369.471, y = 6.103, z = 272.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 215, gadget_id = 70900213, pos = { x = 299.669, y = 6.552, z = 279.222 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 216, gadget_id = 70900213, pos = { x = 299.671, y = 6.552, z = 278.222 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 222, gadget_id = 70900213, pos = { x = 264.547, y = 5.573, z = 273.396 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 235, gadget_id = 70900216, pos = { x = 771.129, y = 5.334, z = 363.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 238, gadget_id = 70220003, pos = { x = 506.117, y = 5.543, z = 353.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239, gadget_id = 70220003, pos = { x = 505.732, y = 5.543, z = 366.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 240, gadget_id = 70220003, pos = { x = 502.930, y = 5.543, z = 366.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 244, gadget_id = 70220005, pos = { x = 736.400, y = 5.483, z = 364.647 }, rot = { x = 0.000, y = 197.060, z = 0.000 }, level = 1 },
	{ config_id = 247, gadget_id = 70220011, pos = { x = 255.241, y = 5.573, z = 278.159 }, rot = { x = 0.000, y = 89.580, z = 0.000 }, level = 1 }
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
		monsters = { 85, 86, 88, 89, 90, 91, 92 },
		gadgets = { 150, 152, 153, 162, 173, 174, 175, 176, 177, 178, 179, 180, 181, 187, 188, 189, 190, 192, 193, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 213, 215, 216, 222, 235, 238, 239, 240, 244 },
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